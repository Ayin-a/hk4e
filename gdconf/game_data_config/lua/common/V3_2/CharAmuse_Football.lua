--- ServerUploadTool Save to [/root/env/data/lua/common/V3_2]  ---

--[[======================================
||	filename:	CharAmuse_FootBall
||	owner: 		weiwei.sun
||	description: 	3.2奇趣秘园 局内逻辑 踢足球
||	LogName:	## [CharAmuse_FootBall]
||	Protection:	
=======================================]]
--[[

--踢球玩法配置
local defs = {

	-----全玩法通用配置-----

	--玩法范围region cube
	play_region = 1003,

	--玩法限时秒
	limit_time = 120,
	target = 15,

	-----踢足球配置-----

	--每波球强制结束时间
	rounf_time = 60,

	--每波球强制结束前Reminder时机
	rmd_time = 55,
	reminder_id = 470310102,

	--内容配置
    -- 如果是琴的关卡，用这套
    Jean = {
        -- 球门和空气墙所在的suite
        goal_suite =10, 
        -- 刷球和空气墙的规则
        setting = {
            -- 单人玩家
            [1] = {
                --第1波球从ball_suite中随机出1个，从wall_suite中随机出1个
                {ball_suite = {1,2}, wall_suite = {}},
            },

            -- 2人玩家
            [2] = {
                {ball_suite = {1,2}, wall_suite = {}},
            },

            -- 3人玩家
            [3] = {
                {ball_suite = {1,2}, wall_suite = {}},
                {ball_suite = {3,4}, wall_suite = {2}},
                {ball_suite = {3,4}, wall_suite = {4}},
            },

            -- 4人玩家
            [4] = {
                {ball_suite = {1,2}, wall_suite = {}},
                {ball_suite = {3,4}, wall_suite = {2}},
                {ball_suite = {3,4}, wall_suite = {4}},
            },   
       
        }, 
    },

    -- 如果是可莉&烟绯的关卡，用这套
    Klee = {
        goal_suite =2, 
        setting = {
            [1] = {
                {ball_suite = {1,2}, wall_suite = {}},
                {ball_suite = {3,4}, wall_suite = {2}},
                {ball_suite = {3,4}, wall_suite = {4}},
            },

            [2] = {
                {ball_suite = {1,2}, wall_suite = {}},
                {ball_suite = {3,4}, wall_suite = {2}},
                {ball_suite = {3,4}, wall_suite = {4}},
            },

            [3] = {
                {ball_suite = {1,2}, wall_suite = {}},
                {ball_suite = {3,4}, wall_suite = {2}},
                {ball_suite = {3,4}, wall_suite = {4}},
            },

            [4] = {
                {ball_suite = {1,2}, wall_suite = {}},
                {ball_suite = {3,4}, wall_suite = {2}},
                {ball_suite = {3,4}, wall_suite = {4}},
            },   
       
        }, 
    },
}

]]
local cfg = {
	main_group = 251008007,
	--
	gallery_match = 
	{
		--[1000] = defs.Jean,
		[28009] = defs.Klee,
		[28010] = defs.Jean
	},
	monter_score = 
	{
		[20011204] = 1,
		[20011305] = 5,
		[20010503] = 1,
		[20010605] = 5,
	}
}

local extraTriggers = {
	{ config_id = 8000002, name = "Enter_Play_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_Enter_Play_Region", trigger_count = 1, forbid_guest = false},
	{ config_id = 8000003, name = "TimeAxis_StopGallery", event = EventType.EVENT_TIME_AXIS_PASS, source = "StopGallery", condition = "", action = "action_TimeAxis_StopGallery", trigger_count = 0 },
	{ config_id = 8000004, name = "Gallery_Stop", event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_Gallery_Stop", trigger_count = 0 },
	{ config_id = 8000005, name = "TimeAxis_StopGallery_Fail", event = EventType.EVENT_TIME_AXIS_PASS, source = "StopGallery_Fail", condition = "", action = "action_TimeAxis_StopGallery_Fail", trigger_count = 0 },
	{ config_id = 8000007, name = "FootBallClear_TimeAxis_Pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "FootBallClear", condition = "", action = "action_FootBallClear_TimeAxis_Pass", trigger_count = 0 },
	{ config_id = 8000008, name = "ClearReminder_TimeAxis_Pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "ClearRmd", condition = "", action = "action_ClearReminder_TimeAxis_Pass", trigger_count = 0 },
	{ config_id = 8000009, name = "Any_Monster_Die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_Any_Monster_Die", trigger_count = 0 },
	{ config_id = 8000010, name = "TimeAxis_NewRound", event = EventType.EVENT_TIME_AXIS_PASS, source = "NewRound", condition = "", action = "action_TimeAxis_NewRound", trigger_count = 0 },
	{ config_id = 8000011, name = "MovingWall_ReachPoint", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "", action = "action_MovingWall_ReachPoint", trigger_count = 0 },
	{ config_id = 8000012, name = "AirWallVariable_Change", event = EventType.EVENT_VARIABLE_CHANGE, source = "air_wall", condition = "", action = "action_AirWallVariable_Change", trigger_count = 0 },
	{ config_id = 8000013, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },
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
	ScriptLib.PrintContextLog(context,"## [CharAmuse_FootBall] EX_StartGallery. player_count@"..#uid_list.." --------------")
	ScriptLib.SetGroupTempValue(context, "gallery_id", gallery_id, {})
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
	--卸载玩法suite
	if nil ~= defs.play_suites then
		for k,v in pairs(defs.play_suites) do
			ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, v)
		end	
	end

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
	ScriptLib.PrintContextLog(context,"## [CharAmuse_FootBall] Gallery stoped. reason@".. evt.param3.." --------------")
	return 0
end
function action_Enter_Play_Region(context, evt)
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.PrintContextLog(context,"## [CharAmuse_FootBall] Enter_Play_Region. player_count@"..#uid_list)--这里只是打一下log，LF_AddGoalSuite不涉及人数
	LF_AddGoalSuite(context)
	return 0
end

---------------------------------------------------------------------------------------------------------------
function LF_Start_Play(context)
	
	ScriptLib.SetGroupTempValue(context, "round", 0, {})

	player_count = ScriptLib.GetGroupTempValue(context, "player_count", {})

	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_id", {})
	local target = 0
	if player_count > 1 then
		target = ScriptLib.GetCharAmusementGalleryTarget(context, gallery_id, true)
	else
		target = ScriptLib.GetCharAmusementGalleryTarget(context, gallery_id, false)
	end
	ScriptLib.SetGroupTempValue(context, "cur_score", target, {})
	ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["max_score"]= target} )

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

--主控提前通知GalleryID
function EX_SetGalleryID(context, prev_context, gallery_id)
	ScriptLib.SetGroupTempValue(context, "gallery_id", gallery_id, {})
	return 0
end

function LF_AddGoalSuite(context)
	--移除旧有的
	ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, defs.Klee.goal_suite)
	ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, defs.Jean.goal_suite)
	--添加新的
	local char_type = LF_GetFootBallCharType(context)
	ScriptLib.AddExtraGroupSuite(context, base_info.group_id, char_type.goal_suite)
	return 0
end

function action_FootBallClear_TimeAxis_Pass(context, evt)

	LF_ClearRound(context)
	LF_StartRound(context)

	return 0
end

function action_ClearReminder_TimeAxis_Pass(context, evt)
	ScriptLib.ShowReminder(context, defs.reminder_id)
	return 0
end

function LF_StartRound(context)

	ScriptLib.EndTimeAxis(context, "ClearRmd")
	ScriptLib.EndTimeAxis(context, "FootBallClear")
	ScriptLib.InitTimeAxis(context, "FootBallClear", { defs.rounf_time } , true)
	ScriptLib.InitTimeAxis(context, "ClearRmd", { defs.rmd_time } , false)

	ScriptLib.SetGroupTempValue(context, "ball_counter", 0, {})
	ScriptLib.SetGroupTempValue(context, "score_gain", 0, {})

	local char_type = LF_GetFootBallCharType(context)
	local player_count = ScriptLib.GetGroupTempValue(context, "player_count", {})
	local setting = char_type.setting[player_count]

	if nil == setting then
		ScriptLib.PrintContextLog(context,"## [CharAmuse_FootBall] LF_StartRound. Nil setting. player_count@"..player_count)
		return 0
	end

	--round++
	ScriptLib.ChangeGroupTempValue(context, "round", 1, {})
	local round = ScriptLib.GetGroupTempValue(context, "round", {})
	ScriptLib.PrintContextLog(context,"## [CharAmuse_FootBall] LF_StartRound. New round@"..round)

	--如果已经到了LD配置尽头，则循环最后一波
	if round > #char_type.setting[player_count] then
		round = #char_type.setting[player_count]
		ScriptLib.SetGroupTempValue(context, "round", round, {}) 
		ScriptLib.PrintContextLog(context,"## [CharAmuse_FootBall] LF_StartRound. All round finished. Set to final.")
	end

	--随机球
	local ball_suite = setting[round].ball_suite
	if nil ~= ball_suite and 0 < #ball_suite then
		math.randomseed(ScriptLib.GetServerTime(context))
		local rand_index = math.random(#ball_suite)
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, ball_suite[rand_index])
		ScriptLib.SetGroupTempValue(context, "ball_num", #suites[ball_suite[rand_index]].monsters, {})
		ScriptLib.PrintContextLog(context,"## [CharAmuse_FootBall] LF_AddSuiteByFootBallRule. round@"..round.." ball_suite@"..ball_suite[rand_index].." num@"..#suites[ball_suite[rand_index]].monsters)
	end

	--随机墙
	local wall_suite = setting[round].wall_suite
	if nil ~= wall_suite and 0 < #wall_suite then
		math.randomseed(ScriptLib.GetServerTime(context) + 99)
		local rand_index = math.random(#wall_suite)
		ScriptLib.SetGroupTempValue(context, "wall_suite_index", rand_index, {})
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, wall_suite[rand_index])
		ScriptLib.PrintContextLog(context,"## [CharAmuse_FootBall] LF_AddSuiteByFootBallRule. round@"..round.." wall_suite@"..wall_suite[rand_index])
	end

	--随机buff
	local stamina_suite = setting[round].stamina_suite
	if nil ~= stamina_suite and 0 < #stamina_suite then
		math.randomseed(ScriptLib.GetServerTime(context) + 98)
		local rand_index = math.random(#stamina_suite)
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, stamina_suite[rand_index])
		ScriptLib.PrintContextLog(context,"## [CharAmuse_FootBall] LF_AddSuiteByFootBallRule. round@"..round.." stamina_suite@"..stamina_suite[rand_index])
	end

	return 0
end

function LF_ClearRound(context)
	
	local player_count = ScriptLib.GetGroupTempValue(context, "player_count", {})
	local char_type = LF_GetFootBallCharType(context)
	local setting = char_type.setting[player_count]
	local round = ScriptLib.GetGroupTempValue(context, "round", {})
	--移除墙
	local wall_suite_index = ScriptLib.GetGroupTempValue(context, "wall_suite_index", {})
	local wall_suites = setting[round].wall_suite
	local wall_suite = wall_suites[wall_suite_index]
	if nil ~= wall_suite and nil ~= suites[wall_suite] then
		for i,v in pairs(suites[wall_suite].gadgets) do
			ScriptLib.KillEntityByConfigId(context, { config_id = v })--kill播放onKill动画
		end
	end
	--移除其他
	for i = 2, #suites do 

		if defs.Jean.goal_suite ~= i and defs.Klee.goal_suite ~= i and wall_suite ~= i then
			ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, i)
		end
	end
	--埋点
	local score_gain = ScriptLib.GetGroupTempValue(context, "score_gain", {})
    ScriptLib.MarkGroupLuaAction(context, "CharAmuse_Football", ScriptLib.GetDungeonTransaction(context), {["wave_num"] = round, ["score_gain"] = score_gain}) 
	return 0
end

function LF_GetFootBallCharType(context)

	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_id", {})
	local player_count = ScriptLib.GetGroupTempValue(context, "player_count", {})
	local char_type = {}

	if -1 == gallery_id or nil == cfg.gallery_match[gallery_id] then
		char_type = defs.Jean
		ScriptLib.PrintContextLog(context,"## [CharAmuse_FootBall] LF_GetFootBallCharType. Gallery id undefined, use default setting.")
		return char_type
	else
		char_type = cfg.gallery_match[gallery_id]
	end
	return char_type
end

function action_Any_Monster_Die(context, evt)
	LF_HandleMonsterDie(context, evt.param1)
	return 0
end

function action_TimeAxis_NewRound(context, evt)
		LF_ClearRound(context)
		LF_StartRound(context)
	return 0
end

function action_MovingWall_ReachPoint(context, evt)
	local gadget_id = ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid)
	if 70320021 == gadget_id then
		if 201 == ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
			ScriptLib.SetGadgetStateByConfigId(context, evt.param1, 0)
		else
			ScriptLib.SetGadgetStateByConfigId(context, evt.param1, 201)
		end
	end
	return 0
end

--[[function SLC_CharAmuse_KillSlime(context)
	local config_id = ScriptLib.GetMonsterConfigId(context, { monster_eid = context.source_entity_id})	
	ScriptLib.PrintContextLog(context,"## [CharAmuse_FootBall] SLC_CharAmuse_KillSlime. source_entity_id@".. context.source_entity_id.. " target_entity_id@".. context.target_entity_id.." GetMonsterConfigId@"..config_id)
	if nil == cfg.monter_score[monsters[config_id].monster_id] then
		ScriptLib.PrintContextLog(context,"## [CharAmuse_FootBall] SLC_CharAmuse_KillSlime. Got unexpected config_id@")
		return 0
	end

	ScriptLib.KillEntityByConfigId(context, { config_id = config_id }) --这个会触发AnyMonsterDie

	--LF_HandleMonsterDie(context, config_id)

	return 0
end]]
--加分 计数
function LF_HandleMonsterDie(context, config_id)

	if nil == cfg.monter_score[monsters[config_id].monster_id] then
		return 0
	end

	local score = cfg.monter_score[monsters[config_id].monster_id]

	ScriptLib.ChangeGroupTempValue(context, "cur_score", -1*score, {})

	ScriptLib.ChangeGroupTempValue(context, "score_gain", score, {})

	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_id", {})
	ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["add_score"] = score} )
	ScriptLib.CharAmusementUpdateScore(context, cfg.main_group, 1, score)--给MultStage更新分数 服务器侧埋点用
	
	--挑战完成
	if 0 >= ScriptLib.GetGroupTempValue(context, "cur_score", {}) then
		local is_last_level = (ScriptLib.GetGroupTempValue(context, "is_last_level", {}) >= 1)
		ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["is_last_level"] = is_last_level, ["is_finish"] = true, ["is_success"] = true } )
		ScriptLib.StopGallery(context, gallery_id, false)
		return 0
	end

	ScriptLib.ChangeGroupTempValue(context, "ball_counter", 1, {})
	local ball_counter = ScriptLib.GetGroupTempValue(context, "ball_counter", {})
	local ball_num = ScriptLib.GetGroupTempValue(context, "ball_num", {})
	if ball_counter >= ball_num then
		ScriptLib.EndTimeAxis(context, "FootBallClear")
		if nil ~= defs.refresh_delay then
			ScriptLib.InitTimeAxis(context, "NewRound", {defs.refresh_delay}, false)
		else
			LF_ClearRound(context)
			LF_StartRound(context)
		end
	end
	ScriptLib.PrintContextLog(context,"## [CharAmuse_FootBall] Monster die. config_id@"..config_id)

	return 0
end

LF_Initialize()