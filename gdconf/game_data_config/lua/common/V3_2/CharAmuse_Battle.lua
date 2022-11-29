--- ServerUploadTool Save to [/root/env/data/lua/common/V3_2]  ---

--[[======================================
||	filename:	CharAmuse_Battle
||	owner: 		weiwei.sun
||	description: 	3.2奇趣秘园 局内逻辑 打桩
||	LogName:	## [CharAmuse_Battle]
||	Protection:	
=======================================]]
--[[

local defs = {
	--依次刷怪
	suite_queue = 
	{	--随机情况1
		{2,3,4,5},
		--随机情况2
		{2,3,4,5},
	}
}

]]
local cfg = {
	--主控GroupID
	main_group = 251008007,
}

local extraTriggers = {
	{ config_id = 8000001, name = "TimeAxis_StopGallery", event = EventType.EVENT_TIME_AXIS_PASS, source = "StopGallery", condition = "", action = "action_TimeAxis_StopGallery", trigger_count = 0 },
	{ config_id = 8000002, name = "Any_Monster_Die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_Any_Monster_Die", trigger_count = 0 },
	{ config_id = 8000003, name = "AirWallVariable_Change", event = EventType.EVENT_VARIABLE_CHANGE, source = "air_wall", condition = "", action = "action_AirWallVariable_Change", trigger_count = 0 },
	{ config_id = 8000004, name = "Gallery_Stop", event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_Gallery_Stop", trigger_count = 0 },
	{ config_id = 8000005, name = "TimeAxis_StopGallery_Fail", event = EventType.EVENT_TIME_AXIS_PASS, source = "StopGallery_Fail", condition = "", action = "action_TimeAxis_StopGallery_Fail", trigger_count = 0 },
	{ config_id = 8000006, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },
	{ config_id = 8000007, name = "TimeAxis_NewRound", event = EventType.EVENT_TIME_AXIS_PASS, source = "NewRound", condition = "", action = "action_TimeAxis_NewRound", trigger_count = 0 },
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
	--加载玩法suite
	if nil ~= defs.play_suites then
		for k,v in pairs(defs.play_suites) do
			ScriptLib.AddExtraGroupSuite(context, base_info.group_id, v)
		end	
	end
	local uid_list = ScriptLib.GetSceneUidList(context)	
	ScriptLib.SetGroupTempValue(context, "player_count", #uid_list, {})	
	ScriptLib.SetGroupTempValue(context, "is_last_level", is_last_level, {})

	--开启gallery
	ScriptLib.StartGallery(context, gallery_id)
	ScriptLib.SetGroupTempValue(context, "gallery_id", gallery_id, {})
	ScriptLib.PrintContextLog(context,"## [CharAmuse_Battle] EX_StartGallery. player_count@"..#uid_list.." --------------")

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

--evt.param2: 1-失败 0-成功
function action_Gallery_Stop(context, evt)
	--卸载玩法suite
	if nil ~= defs.play_suites then
		for k,v in pairs(defs.play_suites) do
			ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, v)
		end	
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
	ScriptLib.PrintContextLog(context,"## [CharAmuse_Battle] Gallery stoped. reason@".. evt.param3.." --------------")
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
	
	--随机序列
	math.randomseed(ScriptLib.GetServerTime(context))
	local rand_index = math.random(#defs.suite_queue)
	ScriptLib.SetGroupTempValue(context, "rand_index", rand_index, {})

	LF_StartRound(context)

	return 0
end

function LF_ClearRound(context)
	local round = ScriptLib.GetGroupTempValue(context, "round", {})
	local rand_index = ScriptLib.GetGroupTempValue(context, "rand_index", {})
	ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, defs.suite_queue[rand_index][round])
	--埋点
    ScriptLib.MarkGroupLuaAction(context, "CharAmuse_BreakingShield", ScriptLib.GetDungeonTransaction(context), {["wave_num"] = round}) 

	return 0
end

function LF_StartRound(context)

	--round++
	ScriptLib.ChangeGroupTempValue(context, "round", 1, {})
	local round = ScriptLib.GetGroupTempValue(context, "round", {})
	ScriptLib.PrintContextLog(context,"## [CharAmuse_Battle] LF_StartRound. New round@"..round)

	--如果已经到了LD配置尽头，则循环最后一波
	local rand_index = ScriptLib.GetGroupTempValue(context, "rand_index", {})
	if round > #defs.suite_queue[rand_index] then
		round = #defs.suite_queue[rand_index]
		ScriptLib.SetGroupTempValue(context, "round", round, {}) 
		ScriptLib.PrintContextLog(context,"## [CharAmuse_Battle] LF_StartRound. All round finished. Set to final.")
	end

	ScriptLib.AddExtraGroupSuite(context, base_info.group_id, defs.suite_queue[rand_index][round])

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
--循环刷怪
function action_Any_Monster_Die(context)

	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_id", {})

	if false == ScriptLib.IsGalleryStart(context, gallery_id) then
		return 0
	end

	ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["add_score"]= 1} )
	ScriptLib.CharAmusementUpdateScore(context, cfg.main_group, 1, 1)--给MultStage更新分数 服务器侧埋点用

	ScriptLib.ChangeGroupTempValue(context, "cur_score", -1 , {})
	if 0 >= ScriptLib.GetGroupTempValue(context, "cur_score", {}) then
		--客户端弹提示
		local is_last_level = (ScriptLib.GetGroupTempValue(context, "is_last_level", {}) >= 1)
		ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["is_last_level"] = is_last_level, ["is_finish"] = true, ["is_success"] = true } )
		ScriptLib.KillGroupEntity(context, { group_id = base_info.group_id, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) 
		LF_ClearRound(context)
		ScriptLib.StopGallery(context, gallery_id, false)
		return 0
	end

	if 0 < ScriptLib.GetGroupMonsterCount(context) then
		return 0
	end

	if nil ~= defs.refresh_delay then
		ScriptLib.InitTimeAxis(context, "NewRound", {defs.refresh_delay}, false)
	else
		LF_ClearRound(context)
		LF_StartRound(context)
	end
	return 0
end

function action_TimeAxis_NewRound(context, evt)
	LF_ClearRound(context)
	LF_StartRound(context)
	return 0
end

LF_Initialize()