--- ServerUploadTool Save to [/root/env/data/lua/common/V3_2]  ---

--[[======================================
||	filename:	CharAmuse_RunOnWater
||	owner: 		weiwei.sun
||	description: 	3.2奇趣秘园 局内逻辑 水上漂
||	LogName:	## [CharAmuse_RunOnWater]
||	Protection:	
=======================================]]
--[[

local defs = {

	-----全玩法通用配置-----

	--玩法范围region cube
	play_region = 1003,

	--玩法限时秒
	limit_time = 120,
	target = 15,

	
	-----水上漂配置-----

	reminder = 400171,
	
	--波次轮替时，不被移除的suite
	ignore_on_clear = {},

    -- 如果是早柚的关卡，用这套
    Sayu = 
    {
        -- 史莱姆 buff 所在的suite
        add_suite ={10,11}, 
        -- 每波金币刷出来之后，多少秒后会rmd
        rmd_time = 25,
        -- 每波金币刷出来之后，多少秒后会刷掉
        refresh_time = 30,
        -- 上一波刷掉之后，刷下一波的等待时间
        wait_time = 3,

        -- 金币即将消失时提前5秒弹的Reminder
        reminder = 400171,

        -- 刷金币suite的规则
        coin_list = {
            -- 单人玩家
            ["SP"] = {
            	--随机情况一
                {
               		[1] = { coin = {4, 5}, other = {6} }, --第一波
               		[2] = { coin = {4, 5}, other = {6} }, --第二波。。
                },
                --随机情况二
                {
                },
            },
            -- 多人玩家
            ["MP"]  = {
            	--随机情况一
                {
                },
                --随机情况二
                {
                },
            },
        }, 
    },

    -- 如果是神里的关卡，用这套
    Ayaka = {

    },
}

]]
local cfg = {

	--主控GroupID
	main_group = 251008007,
	gallery_match = 
	{
		--[1000] = defs.Jean,
		[28005] = defs.Sayu,
		[28006] = defs.Ayaka
	},
}


local extraTriggers = {

	{ config_id = 8000003, name = "TimeAxis_StopGallery", event = EventType.EVENT_TIME_AXIS_PASS, source = "StopGallery", condition = "", action = "action_TimeAxis_StopGallery", trigger_count = 0 },
	{ config_id = 8000004, name = "Gallery_Stop", event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_Gallery_Stop", trigger_count = 0 },
	{ config_id = 8000005, name = "TimeAxis_StopGallery_Fail", event = EventType.EVENT_TIME_AXIS_PASS, source = "StopGallery_Fail", condition = "", action = "action_TimeAxis_StopGallery_Fail", trigger_count = 0 },

	{ config_id = 8000008, name = "CoinClear_TimeAxis_Pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_TimeAxis_Pass", trigger_count = 0 },
	{ config_id = 8000009, name = "NextRound_TimeAxis_Pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "NextRound", condition = "", action = "action_NextRound_TimeAxis_Pass", trigger_count = 0 },

	{ config_id = 8000010, name = "AirWallVariable_Change", event = EventType.EVENT_VARIABLE_CHANGE, source = "air_wall", condition = "", action = "action_AirWallVariable_Change", trigger_count = 0 },
	{ config_id = 8000011, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },

}

function LF_Initialize()
	for k,v in pairs(extraTriggers) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	table.insert(variables,{ config_id = 50000001, name = "air_wall", value = 0})
end

--主控调用
function EX_StartGallery(context, prev_context, gallery_id, is_last_level)
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetGroupTempValue(context, "player_count", #uid_list, {})

	ScriptLib.SetGroupTempValue(context, "is_last_level", is_last_level, {})

	--开启gallery
	ScriptLib.StartGallery(context, gallery_id)
	ScriptLib.SetGroupTempValue(context, "gallery_id", gallery_id, {})
	ScriptLib.PrintContextLog(context,"## [CharAmuse_RunOnWater] EX_StartGallery. player_count@"..#uid_list.." --------------")

	--玩法启动
	ScriptLib.SetGroupVariableValue(context, "air_wall", 0)
	LF_Start_Play(context)

	return 0
end

function action_Group_Load(context, evt)
	if nil == defs.air_wall then
		return 0
	end
	if 1 == ScriptLib.GetGroupVariableValue(context, "air_wall") then
		for i,v in ipairs(defs.air_wall) do
			ScriptLib.CreateGadget(context, { config_id = v })
		end
	end
	return 0
end

function action_AirWallVariable_Change(context, evt)
	if nil == defs.air_wall then
		return 0
	end
	if 1 == evt.param1 and 0 == evt.param2 then
		for i,v in ipairs(defs.air_wall) do
			ScriptLib.CreateGadget(context, { config_id = v })
		end
	elseif 0 == evt.param1 and 1 == evt.param2 then
		for i,v in ipairs(defs.air_wall) do
			ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, v)
		end	
	end
	return 0
end

--evt.param2: 1-成功 0-失败
function action_Gallery_Stop(context, evt)
	--清理金币
	LF_ClearRound(context)
	--清理史莱姆和体力球
	local char_type = LF_GetRunOnWaterCharType(context)
	for k,v in pairs(char_type.add_suite) do
		ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, v)
	end
	
	ScriptLib.EndAllTimeAxis(context)

	if 3 ~= evt.param3 then
		local is_last_level = (ScriptLib.GetGroupTempValue(context, "is_last_level", {}) >= 1)	
		--ScriptLib.InitTimeAxis(context, "StopGallery_Fail", { 3 } , false) 9.21修改 失败不要延时结束
		ScriptLib.ExecuteGroupLua(context, cfg.main_group, "EX_EndPlayStage", {1, base_info.group_id})
	else
		local is_last_level = (ScriptLib.GetGroupTempValue(context, "is_last_level", {}) >= 1)--最后一关无等待
		if is_last_level then
			ScriptLib.ExecuteGroupLua(context, cfg.main_group, "EX_EndPlayStage", {0, base_info.group_id})
		else
			ScriptLib.InitTimeAxis(context, "StopGallery", { 3 } , false)
		end	
	end
	ScriptLib.PrintContextLog(context,"## [CharAmuse_RunOnWater] Gallery stoped. reason@".. evt.param3.." --------------")

	return 0
end

---------------------------------------------------------------------------------------------------------------
function LF_Start_Play(context)
	
	ScriptLib.SetGroupTempValue(context, "coin_num", 0, {})
	ScriptLib.SetGroupTempValue(context, "round", 0, {})
	ScriptLib.SetGroupTempValue(context, "index", 0, {})--这个用于使最后一波循环时，timeaxis名称不同

	local player_count = ScriptLib.GetGroupTempValue(context, "player_count", {})

	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_id", {})
	local target = 0
	if player_count > 1 then
		target = ScriptLib.GetCharAmusementGalleryTarget(context, gallery_id, true)
	else
		target = ScriptLib.GetCharAmusementGalleryTarget(context, gallery_id, false)
	end
	ScriptLib.SetGroupTempValue(context, "cur_score", target, {})
	ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["max_score"]= target} )
	
	local rand_length = 1
	local char_type = LF_GetRunOnWaterCharType(context)
	ScriptLib.PrintContextLog(context,"## [CharAmuse_RunOnWater] LF_Start_Play. player_count@"..player_count)
	if 1 < player_count then
		rand_length = #char_type.coin_list["MP"]
	else
		rand_length = #char_type.coin_list["SP"]
	end
	math.randomseed(ScriptLib.GetServerTime(context))
	local rand_index = math.random(rand_length)
	ScriptLib.SetGroupTempValue(context, "rand_index", rand_index, {})
	LF_StartRound(context, rand_index)

	return 0
end

function action_TimeAxis_StopGallery(context, evt)
	ScriptLib.ExecuteGroupLua(context, cfg.main_group, "EX_EndPlayStage", {0, base_info.group_id})
	return 0
end

function action_TimeAxis_StopGallery_Fail(context, evt)
	ScriptLib.ExecuteGroupLua(context, cfg.main_group, "EX_EndPlayStage", {1, base_info.group_id})
	return 0
end

--param1: 1-普通 2-大金币
function SLC_CharAmusement_CoinGet(context, param1)

	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_id", {})

	if 1 == param1 then
		local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })
		ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, config_id)
		ScriptLib.ChangeGroupTempValue(context, "cur_score", -1, {})
		ScriptLib.ChangeGroupTempValue(context, "coin_num", -1, {})
		
		ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["add_score"]= 1} )
		ScriptLib.CharAmusementUpdateScore(context, cfg.main_group, 1, 1)--给MultStage更新分数 服务器侧埋点用

	elseif 2 == param1 then 
		local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })
		ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, config_id)
		if nil ~= defs.super_coin and 1 <= defs.super_coin then
			ScriptLib.ChangeGroupTempValue(context, "cur_score", -1*math.floor(defs.super_coin), {})
			ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["add_score"]= math.floor(defs.super_coin)} )
			ScriptLib.CharAmusementUpdateScore(context, cfg.main_group, 1, math.floor(defs.super_coin))--给MultStage更新分数 服务器侧埋点用
		else
			ScriptLib.ChangeGroupTempValue(context, "cur_score", -5, {})
			ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["add_score"]= 5} )
			ScriptLib.CharAmusementUpdateScore(context, cfg.main_group, 1, 5)--给MultStage更新分数 服务器侧埋点用
		end
		ScriptLib.ChangeGroupTempValue(context, "coin_num", -1, {})
	end

	if 0 >= ScriptLib.GetGroupTempValue(context, "cur_score", {}) then
		local is_last_level = (ScriptLib.GetGroupTempValue(context, "is_last_level", {}) >= 1)
		ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["is_last_level"] = is_last_level, ["is_finish"] = true, ["is_success"] = true } )
		ScriptLib.StopGallery(context, gallery_id, false)
		return 0
	end

	local coin_num = ScriptLib.GetGroupTempValue(context, "coin_num", {})
	ScriptLib.PrintContextLog(context,"## [CharAmuse_RunOnWater] SLC_CharAmusement_CoinGet. param1@"..param1.." coin_num@"..coin_num)
	if 0 >= coin_num then 
		--ScriptLib.EndAllTimeAxis(context)
		--局内不能用EndAll 因为会停掉超界检测
		local round = ScriptLib.GetGroupTempValue(context, "round", {})
		local rand_index = ScriptLib.GetGroupTempValue(context, "rand_index", {})
		local index = ScriptLib.GetGroupTempValue(context, "index", {})
		ScriptLib.EndTimeAxis(context, "CoinClr_"..round.."_"..rand_index.."_"..index)
		ScriptLib.EndTimeAxis(context, "CoinRmd_"..round.."_"..rand_index.."_"..index)

		local char_type = LF_GetRunOnWaterCharType(context)
		ScriptLib.InitTimeAxis(context, "NextRound", { char_type.wait_time } , false)

		LF_ClearRound(context)

	end

	return 0
end

function LF_ClearRound(context)
	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_id", {})
	if ScriptLib.IsGalleryStart(context, gallery_id) then
		--埋点
		local round = ScriptLib.GetGroupTempValue(context, "round", {})
		local score_total = ScriptLib.GetGroupTempValue(context, "score_total", {})
		local coin_1 = ScriptLib.CheckRemainGadgetCountByGroupId(context, { group_id = base_info.group_id, gadget_id = { 70320015 }})
		local coin_2 = ScriptLib.CheckRemainGadgetCountByGroupId(context, { group_id = base_info.group_id, gadget_id = { 70320022 }})
		local score_left = coin_1 + ( coin_2 * 5 )
		if nil ~= defs.super_coin and 1 <= defs.super_coin then
			score_left = coin_1 + (coin_2 *math.floor(defs.super_coin))
		end
		ScriptLib.MarkGroupLuaAction(context, "CharAmuse_RunOnWater", ScriptLib.GetDungeonTransaction(context), {["wave_num"] = round, ["score_gain"] = score_total - score_left, ["score_left"] = score_left})
	end


	for i = 3, #suites do 
		--史莱姆、体力球suite不移除
		if nil ~= defs.ignore_on_clear then
			if false == LF_CheckIsInTable(context, i, defs.ignore_on_clear) then
				ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, i)
			end
		end
	end

	return 0
end

 
function LF_StartRound(context, rand_index)

	local char_type = LF_GetRunOnWaterCharType(context)
	local player_num = ScriptLib.GetGroupTempValue(context, "player_count", {})
	local coin_list = {}
	if 1 < player_num then
		coin_list = char_type.coin_list["MP"]
	else
		coin_list = char_type.coin_list["SP"]
	end
	
	ScriptLib.SetGroupTempValue(context, "coin_num", 0, {})--个数 记录金币吃完用
	ScriptLib.SetGroupTempValue(context, "score_total", 0, {})--分数 埋点用
	if nil == coin_list then
		ScriptLib.PrintGroupWarning(context,"## [CharAmuse_RunOnWater] LF_StartRound. Nil SPMP coin_list. player_num@"..player_num)
		return 0
	end

	--round++
	ScriptLib.ChangeGroupTempValue(context, "round", 1, {})
	local round = ScriptLib.GetGroupTempValue(context, "round", {})
	ScriptLib.ChangeGroupTempValue(context, "index", 1, {})--这个用于使最后一波循环时，timeaxis名称不同
	local index = ScriptLib.GetGroupTempValue(context, "index", {})
	ScriptLib.PrintContextLog(context,"## [CharAmuse_RunOnWater] LF_StartRound. New round@"..round.. ". in rand_index@"..rand_index)

	--如果已经到了LD配置尽头，则循环最后一波
	if round > #coin_list[rand_index] then
		round = #coin_list[rand_index]
		ScriptLib.SetGroupTempValue(context, "round", round, {}) 
		ScriptLib.PrintContextLog(context,"## [CharAmuse_RunOnWater] LF_StartRound. All round finished. Set to final.")
	end

	--创建金币 统计波次金币总数
	if nil == coin_list[rand_index][round].coin then
		ScriptLib.PrintGroupWarning(context,"## [CharAmuse_RunOnWater] LF_StartRound. Nil round. round@"..round)
		return 0
	end
	for k,v in pairs(coin_list[rand_index][round].coin) do
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, v)
	end

	--埋点统计本波总分
	local coin_1 = ScriptLib.CheckRemainGadgetCountByGroupId(context, { group_id = base_info.group_id, gadget_id = { 70320015 }})
	local coin_2 = ScriptLib.CheckRemainGadgetCountByGroupId(context, { group_id = base_info.group_id, gadget_id = { 70320022 }})
	ScriptLib.SetGroupTempValue(context, "coin_num", coin_1 + coin_2, {})
	if nil ~= defs.super_coin and 1 <= defs.super_coin then
		ScriptLib.SetGroupTempValue(context, "score_total", coin_1 + (coin_2 *math.floor(defs.super_coin)), {})
	else
		ScriptLib.SetGroupTempValue(context, "score_total", coin_1 + (coin_2 * 5), {})
	end

	--非首轮 弹reminder
	if 1 < round then
		ScriptLib.ShowReminder(context, 470310104)
	end
	
	--创建其他物件
	for k,v in pairs(coin_list[rand_index][round].other) do
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, v)
	end

	ScriptLib.InitTimeAxis(context, "CoinClr_"..round.."_"..rand_index.."_"..index, { char_type.refresh_time } , false)
	ScriptLib.InitTimeAxis(context, "CoinRmd_"..round.."_"..rand_index.."_"..index, { char_type.rmd_time } , false)

	--首轮创建史莱姆和体力球
	if 1 ~= round then
		return 0
	end
	for k,v in pairs(char_type.add_suite) do
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, v)
	end

	return 0
end

--限时内全清
function action_NextRound_TimeAxis_Pass(context, evt)
	local rand_index = ScriptLib.GetGroupTempValue(context, "rand_index", {})
	LF_StartRound(context, rand_index)
	return 0
end

function action_TimeAxis_Pass(context, evt)
	local name = string.sub(evt.source_name, 1, 7)--CoinClr_ CoinRmd_
	if "CoinClr" == name then
		LF_ClearRound(context)
		local char_type = LF_GetRunOnWaterCharType(context)
		ScriptLib.InitTimeAxis(context, "NextRound", { char_type.wait_time } , false)
	elseif "CoinRmd" == name then
		ScriptLib.ShowReminder(context, defs.reminder)
	end

	return 0
end

function LF_GetRunOnWaterCharType(context)

	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_id", {})
	local char_type = {}

	if -1 == gallery_id or nil == cfg.gallery_match[gallery_id] then
		char_type = defs.Sayu
		ScriptLib.PrintContextLog(context,"## [CharAmuse_RunOnWater] LF_GetRunOnWaterCharType. Gallery id undefined, use default setting.")
		return char_type
	else
		char_type = cfg.gallery_match[gallery_id]
	end
	ScriptLib.PrintContextLog(context,"## [CharAmuse_RunOnWater] LF_GetRunOnWaterCharType. Gallery@"..gallery_id)
	return char_type
end

--用于检查value是否在目标table中
function LF_CheckIsInTable(context, value, check_table)

	for i = 1, #check_table do
		if check_table[i] == value then
			return true
		end
	end
	return false
end


LF_Initialize()