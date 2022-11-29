--- ServerUploadTool Save to [/root/env/data/lua/common/V3_2]  ---

--[[======================================
||	filename:	CharAmuse_SpinBall
||	owner: 		weiwei.sun
||	description: 	3.2奇趣秘园 局内逻辑 弹球
||	LogName:	## [CharAmuse_SpinBall]
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

	-----弹球配置-----

	--新一波弹球的出现时间
	round_time = 10,
	--提示时间
	rmd_time = 8,
	--提示reminder
	reminder = 400171,

	--点阵长度
	length = 
	{--[点阵id] =点阵长度
		[1] = 9,
		[2] = 4.
	},
	--创生配置
	born = 
	{--[点阵id] ={ pos = { x=,y=,z=}, rot = pos = { x=,y=,z=}}
		[1]={ pos = { x=,y=,z=}, rot = pos = { x=,y=,z=}}
	}
	--点阵组
	array_combine = 
	{
		[1] = {5, 6},
	}

    -- 刷金币suite的规则
    coin_list = 
    {
        -- 单人玩家
        ["SP"] = {
        	--随机情况一
            {--ball点阵组，coin金币suite
           		[1] = { ball = 1, coin ={4, 4}, buff = {5} , mona_buff = {}}, --第一波
           		[2] = { ball = 1, coin ={4, 4}, buff = {5} }, --第二波。。
            },
            --随机情况二
            {--ball点阵组，coin金币suite
           		[1] = { ball = 1, coin ={4, 4}, buff = {5} }, --第一波
           		[2] = { ball = 1, coin ={4, 4}, buff = {5} }, --第二波。。
            },
        },
        -- 多人玩家
        ["MP"]  = {
        	--随机情况一
            {--ball点阵组，coin金币suite
           		[1] = { ball = 1, coin ={4, 4}}, --第一波
           		[2] = { ball = 1, coin ={4, 4}},  --第二波。。
            },
            --随机情况二
            {--ball点阵组，coin金币suite
           		[1] = { ball = 1, coin ={4, 4}}, --第一波
           		[2] = { ball = 1, coin ={4, 4}},  --第二波。。
            },
    }
	-----以下内容通常不需关注-----
	ball_pool = {}
}

]]
local cfg = {
	--主控GroupID
	main_group = 251008007,
}

local extraTriggers = {
	{ config_id = 8000003, name = "TimeAxis_StopGallery", event = EventType.EVENT_TIME_AXIS_PASS, source = "StopGallery", condition = "", action = "action_TimeAxis_StopGallery", trigger_count = 0 },
	{ config_id = 8000004, name = "Gallery_Stop", event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_Gallery_Stop", trigger_count = 0 },
	{ config_id = 8000005, name = "TimeAxis_StopGallery_Fail", event = EventType.EVENT_TIME_AXIS_PASS, source = "StopGallery_Fail", condition = "", action = "action_TimeAxis_StopGallery_Fail", trigger_count = 0 },
	{ config_id = 8000006, name = "BallWait_TimeAxis", event = EventType.EVENT_TIME_AXIS_PASS, source = "ball_wait", condition = "", action = "action_Wait_TimeAxis_Pass", trigger_count = 0 },
	{ config_id = 8000007, name = "Round_TimeAxis", event = EventType.EVENT_TIME_AXIS_PASS, source = "round_time", condition = "", action = "action_Round_TimeAxis", trigger_count = 0 },
	{ config_id = 8000008, name = "Reminder_TimeAxis", event = EventType.EVENT_TIME_AXIS_PASS, source = "reminder_time", condition = "", action = "action_Reminder_TimeAxis", trigger_count = 0 },
	{ config_id = 8000009, name = "RoundWait_TimeAxis", event = EventType.EVENT_TIME_AXIS_PASS, source = "roundwait_time", condition = "", action = "action_RoundWait_TimeAxis", trigger_count = 0 },
	--{ config_id = 8000010, name = "Ball_Point_Arrival", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "", action = "action_Ball_Point_Arrival", trigger_count = 0 },
	{ config_id = 8000011, name = "AirWallVariable_Change", event = EventType.EVENT_VARIABLE_CHANGE, source = "air_wall", condition = "", action = "action_AirWallVariable_Change", trigger_count = 0 },
	{ config_id = 8000012, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },
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
	ScriptLib.PrintContextLog(context,"## [CharAmuse_SpinBall] Gallery Started. player_count@"..#uid_list.." --------------")
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

	LF_ClearRound(context)
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
	ScriptLib.PrintContextLog(context,"## [CharAmuse_SpinBall] Gallery stoped. reason@".. evt.param3.." --------------")

	return 0
end

---------------------------------------------------------------------------------------------------------------

function LF_Start_Play(context)

	ScriptLib.SetGroupTempValue(context, "round", 0, {})

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
	ScriptLib.PrintContextLog(context,"## [CharAmuse_SpinBall] LF_Start_Play. player_count@"..player_count)
	if 1 < player_count then
		rand_length = #defs.coin_list["MP"]
	else
		rand_length = #defs.coin_list["SP"]
	end
	math.randomseed(ScriptLib.GetServerTime(context))
	local rand_index = math.random(rand_length)
	ScriptLib.SetGroupTempValue(context, "rand_index", rand_index, {})

	LF_StartRound(context)
	
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

function LF_StartRound(context)

	local rand_index = ScriptLib.GetGroupTempValue(context, "rand_index", {})

	local player_num = ScriptLib.GetGroupTempValue(context, "player_count", {})

	ScriptLib.SetGroupTempValue(context, "coin_num", 0, {})
	ScriptLib.SetGroupTempValue(context, "score_total", 0, {})
	
	local coin_list = {}
	if 1 < player_num then
		coin_list = defs.coin_list["MP"]
	else
		coin_list = defs.coin_list["SP"]
	end

	if nil == coin_list then
		ScriptLib.PrintGroupWarning(context,"## [CharAmuse_SpinBall] LF_StartRound. Nil SPMP coin_list. player_num@"..player_num)
		return 0
	end

	--round++
	ScriptLib.ChangeGroupTempValue(context, "round", 1, {})
	local round = ScriptLib.GetGroupTempValue(context, "round", {})
	ScriptLib.PrintContextLog(context,"## [CharAmuse_SpinBall] LF_StartRound. New round@".. round ..  ". in rand_index@"..rand_index)

	--如果已经到了LD配置尽头，则循环最后一波
	if round > #coin_list[rand_index] then
		round = #coin_list[rand_index]
		ScriptLib.SetGroupTempValue(context, "round", round, {}) 
		ScriptLib.PrintContextLog(context,"## [CharAmuse_SpinBall] LF_StartRound. All round finished. Set to final.")
	end

	--创建Buff球
	if nil ~= coin_list[rand_index][round].buff then
		for i,v in ipairs(coin_list[rand_index][round].buff) do
			ScriptLib.AddExtraGroupSuite(context, base_info.group_id, v)
		end
	end

	--创建Buff球
	if nil ~= coin_list[rand_index][round].mona_buff and 28002 == ScriptLib.GetGroupTempValue(context, "gallery_id", {}) then
		for i,v in ipairs(coin_list[rand_index][round].mona_buff) do
			ScriptLib.AddExtraGroupSuite(context, base_info.group_id, v)
		end
	end

	--创建球
	-- 根据点阵数量 创建球 等待后，开始点阵移动
	local ball_index = coin_list[rand_index][round].ball
	ScriptLib.SetGroupTempValue(context, "ball_index", ball_index, {})
	ScriptLib.PrintContextLog(context,"## [CharAmuse_SpinBall] ball_index@"..ball_index)
	for k,v in pairs(defs.array_combine[ball_index]) do
		local config_id = LF_CreateBall(context, defs.born[v].pos, defs.born[v].rot)
		ScriptLib.SetGroupTempValue(context, "ball_"..k, config_id, {})
	end
	ScriptLib.InitTimeAxis(context, "ball_wait", { 1.5 } , false)

	ScriptLib.InitTimeAxis(context, "round_time", { defs.round_time } , false)
	ScriptLib.InitTimeAxis(context, "reminder_time", { defs.rmd_time } , false)
	return 0
end

function action_Wait_TimeAxis_Pass(context, evt)


	local rand_index = ScriptLib.GetGroupTempValue(context, "rand_index", {})
	local round = ScriptLib.GetGroupTempValue(context, "round", {})
	local player_num = ScriptLib.GetGroupTempValue(context, "player_count", {})
	local coin_list = {}
	if 1 < player_num then
		coin_list = defs.coin_list["MP"]
	else
		coin_list = defs.coin_list["SP"]
	end

	local ball_index = ScriptLib.GetGroupTempValue(context, "ball_index", {})
	for k,v in pairs(defs.array_combine[ball_index]) do
		local config_id = ScriptLib.GetGroupTempValue(context, "ball_"..k, {})
		--设置点阵
		if 0 < config_id then
			local path = {}
			if nil == defs.length[v] then
				ScriptLib.PrintContextLog(context,"## [CharAmuse_SpinBall] Get path length failed. point_array_id@"..v)
				return 0
			end
			for i = 1, defs.length[v] do
			    table.insert(path, i)
			end
			local tempParam = {route_type = 2, turn_mode = false}
			ScriptLib.SetPlatformPointArray(context, config_id, v, path, tempParam) 
			ScriptLib.PrintContextLog(context,"## [CharAmuse_SpinBall] SetPlatformPointArray. config_id@".. config_id.. "point_array_id@"..v)
		end
	end

	-- 创建金币
	local coin_suites = coin_list[rand_index][round].coin
	for k,v in pairs(coin_suites) do
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

	return 0
end

function LF_ClearRound(context)

	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_id", {})
	local round = ScriptLib.GetGroupTempValue(context, "round", {})
	if ScriptLib.IsGalleryStart(context, gallery_id) then
		--埋点
		local score_total = ScriptLib.GetGroupTempValue(context, "score_total", {})
		local coin_1 = ScriptLib.CheckRemainGadgetCountByGroupId(context, { group_id = base_info.group_id, gadget_id = { 70320015 }})
		local coin_2 = ScriptLib.CheckRemainGadgetCountByGroupId(context, { group_id = base_info.group_id, gadget_id = { 70320022 }})
		local score_left = coin_1 + (coin_2 *5)
		if nil ~= defs.super_coin and 1 <= defs.super_coin then
			score_left = coin_1 + (coin_2 *math.floor(defs.super_coin))
		end
		ScriptLib.MarkGroupLuaAction(context, "CharAmuse_SpinBall", ScriptLib.GetDungeonTransaction(context), {["wave_num"] = round, ["score_gain"] = score_total - score_left, ["score_left"] = score_left})
	end

	for k,v in pairs(defs.ball_pool) do
		ScriptLib.KillEntityByConfigId(context, { config_id = v })--kill播放onKill动画
	end

	local player_num = ScriptLib.GetGroupTempValue(context, "player_count", {})
	local coin_list = {}
	if 1 < player_num then
		coin_list = defs.coin_list["MP"]
	else
		coin_list = defs.coin_list["SP"]
	end
	local rand_index = ScriptLib.GetGroupTempValue(context, "rand_index", {})
	
	for i,v in ipairs(coin_list[rand_index][round].coin) do
		ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, v)
	end	
	if nil ~= coin_list[rand_index][round].buff then
		for i,v in ipairs(coin_list[rand_index][round].buff) do
			ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, v)
		end
	end

	return 0
end

function LF_CreateBall(context, pos, rot)
	
    for k , v in pairs(defs.ball_pool) do
        local ret = ScriptLib.CreateGadgetByConfigIdByPos(context, v, pos, rot)
        if 0 == ret then
        	ScriptLib.PrintContextLog(context,"## [CharAmuse_SpinBall] LF_CreateBall. Create gadget@"..v)
            return v
        end
    end 
	ScriptLib.PrintGroupWarning(context,"## [CharAmuse_SpinBall] LF_CreateBall. Unable to create ball.")
	return 0
end

function action_Round_TimeAxis(context, evt)
	ScriptLib.EndTimeAxis(context, "ball_wait")
	ScriptLib.EndTimeAxis(context, "round_time")
	ScriptLib.EndTimeAxis(context, "reminder_time")

	LF_ClearRound(context)	
	ScriptLib.InitTimeAxis(context, "roundwait_time", { defs.wait_time } , false)	
	return 0
end

function action_RoundWait_TimeAxis(context, evt)
	LF_StartRound(context)
	return 0
end

function action_Reminder_TimeAxis(context, evt)
	ScriptLib.ShowReminder(context, defs.reminder)
	return 0
end

function action_Ball_Point_Arrival(context, evt)
	ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {evt.param1}, "GV_SpiningBall_Action", 1)
	return 0
end

--param1: 1-普通 2-大金币
function SLC_CharAmusement_CoinGet(context, param1)

	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_id", {})
	local stage_index = ScriptLib.GetGroupTempValue(context, "stage_index", { cfg.main_group })

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
	ScriptLib.PrintContextLog(context,"## [CharAmuse_SpinBall] SLC_CharAmusement_CoinGet. param1@"..param1.." coin_num@"..coin_num)
	if 0 >= coin_num then 

		LF_ClearRound(context)	

		ScriptLib.EndTimeAxis(context, "ball_wait")
		ScriptLib.EndTimeAxis(context, "round_time")
		ScriptLib.EndTimeAxis(context, "reminder_time")

		ScriptLib.InitTimeAxis(context, "roundwait_time", { defs.wait_time } , false)	

	end

	return 0
end

LF_Initialize()