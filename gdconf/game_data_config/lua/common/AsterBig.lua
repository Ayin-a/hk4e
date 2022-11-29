--[[
setmetatable(_ENV,{__index=function() return{} end})
local stage_def = {
	[1] = {
		--根据阶段创建的group,在阶段group中标记
		[1] = {2,3,4,5},
		[2] = {2,3,4,5},
		[3] = {2,3,4,5},
		[4] = {2,3,4,5}
	},
	[2] = {
		[1] = {2,3,4,5},
		[2] = {2,3,4,5},
		[3] = {2,3,4,5},
		[4] = {2,3,4,5}
	},
	[3] = {
		[1] = {2,3,4,5},
		[2] = {2,3,4,5},
		[3] = {2,3,4,5},
		[4] = {2,3,4,5}
	},
}

--根据progress对应的monster_tide,配在主group中
local tide_defs = {
	[1] = {
		[0] = {suite={2,3,4,5},weight={20,20,20,20,20}},
		[1] = {suite={2,3,4,5},weight={20,20,20,20,20}},
		[2] = {suite={},weight={}},
		[3] = {suite={2,3,4,5},weight={20,20,20,20,20}},
		[4] = {suite={2,3,4,5},weight={20,20,20,20,20}}
	},
	[2] = {
		[0] = {suite={2,3,4,5},weight={20,20,20,20,20}},
		[1] = {suite={2,3,4,5},weight={20,20,20,20,20}},
		[2] = {suite={},weight={}},
		[3] = {suite={2,3,4,5},weight={20,20,20,20,20}},
		[4] = {suite={2,3,4,5},weight={20,20,20,20,20}}
	},
	[3] = {
		[0] = {suite={2,3,4,5},weight={20,20,20,20,20}},
		[1] = {suite={2,3,4,5},weight={20,20,20,20,20}},
		[2] = {suite={},weight={}},
		[3] = {suite={2,3,4,5},weight={20,20,20,20,20}},
		[4] = {suite={2,3,4,5},weight={20,20,20,20,20}}
	},
}

--monster_tide的启动参数,配在主group中
local tide_suite_config = {
	[2] = {total=10,min=2,max=4,next=3,delay=10},
	[3] = {total=10,min=2,max=4,next=4,delay=10},
	[4] = {total=10,min=2,max=4,next=5,delay=10},
	[5] = {total=10,min=2,max=4,next=6,delay=10}
}

--配在及时group中
local timer_def = {
	[1] = {
		--根据时间创建的group
		[1] = {2,3,4,5},
		[2] = {2,3,4,5},
		[3] = {2,3,4,5},
		[4] = {2,3,4,5}
	},
	[2] = {
		[1] = {2,3,4,5},
		[2] = {2,3,4,5},
		[3] = {2,3,4,5},
		[4] = {2,3,4,5}
	},
	[3] = {
		[1] = {2,3,4,5},
		[2] = {2,3,4,5},
		[3] = {2,3,4,5},
		[4] = {2,3,4,5}
	}
}

local progress_def = {
	["normal"] = {0,1500,3000,4500,6500},
	["hard"] = {0,1500,3000,4500,6500},
	["nightmare"] = {0,1500,3000,4500,6500}
}

local defs = {
	--group_main
	gadget_aster = 413001,
	gadget_reward = 123456,
	score_ratio = {normal=1,hard=0.75,nightmare=0.5}, 
	difficulty_weight = {normal=75,hard=20,nightmare=5},
	--group_stage
	--group_clear
	aster_timer = {60,120,180,240,300},
	clear_delay = 30
}--]]

local play = {
	PlayType = 2,
	PlayId = 2,
	player_energy = "AVATAR_ASTER_SCORE", 	--global_value
	radius = 10,
	monster_tide = 426,
	group_main = 133001413,
	group_timer = 133001426,
	group_stage = 133001427,
	group_gadget = 133001498,
	energy_str = "AVATAR_ASTER_SCORE", 		--uid_value
	difficulty = "difficulty",
	ratio_energy = {"ASTER_ENERGY_RATIO",2},	
	ratio_progress = {"ASTER_PROGRESS_RATIO",2},
	op_radius = 10
}

local extra_triggers = {
	[play.group_main] = {
		--活动准备阶段
		["Battle_State"] = { config_id = 8000001, name = "Battle_State", event = EventType.EVENT_SCENE_MP_PLAY_BATTLE_STATE, source = "", condition = "condition_battle_state", action = "action_battle_state", trigger_count = 0 },
		--战斗结束
		["Battle_Result"] = { config_id = 8000002, name = "Battle_Result", event = EventType.EVENT_SCENE_MP_PLAY_BATTLE_RESULT, source = "", condition = "", action = "action_battle_result", trigger_count = 0 },
		--角色充能处理
		["Monster_Die_Before_Leave_Scene"] = { config_id = 8000003, name = "Monster_Die_Before_Leave_Scene", event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "condition_monster_die_before_leave_scene", action = "action_monster_die_before_leave_scene", trigger_count = 0 },
		--战斗阶段响应
		["Battle_State_Change"] = { config_id = 8000004, name = "Battle_State_Change", event = EventType.EVENT_SCENE_MP_PLAY_BATTLE_STAGE_CHANGE, source = "", condition = "", action = "action_battle_stage_change", trigger_count = 0 },
		--怪物潮管理与切换
		["Monster_Tide_Over"] = { config_id = 8000005, name = "Monster_Tide", event = EventType.EVENT_MONSTER_TIDE_OVER, source = "", condition = "", action = "action_monster_tide_over", trigger_count = 0 },
		["Timer_Delay"] = { config_id = 8000006, name = "Timer_Delay", event = EventType.EVENT_TIMER_EVENT, source = "next_tide_delay", condition = "", action = "action_timer_delay", trigger_count = 0 },
		["Battle_Interrupt"] = { config_id = 8000007, name = "Battle_Interrupt", event = EventType.EVENT_SCENE_MP_PLAY_BATTLE_INTERRUPT, source = "", condition = "", action = "action_battle_interrupt", trigger_count = 0},
--1.3版本修复内容
--处理1.1版本数据未清理的大陨石
		["Group_Load"] = { config_id = 8000100, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 }
	},
	[play.group_timer] = {
		--活动准备阶段
		["Battle_State"] = { config_id = 8000008, name = "Battle_State", event = EventType.EVENT_SCENE_MP_PLAY_BATTLE_STATE, source = "", condition = "condition_battle_state", action = "action_battle_state", trigger_count = 0 },
		--角色充能处理
		["Monster_Die_Before_Leave_Scene"] = { config_id = 8000009, name = "Monster_Die_Before_Leave_Scene", event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "condition_monster_die_before_leave_scene", action = "action_monster_die_before_leave_scene", trigger_count = 0 },
		--战斗结束
		["Battle_Result"] = { config_id = 8000010, name = "Battle_Result", event = EventType.EVENT_SCENE_MP_PLAY_BATTLE_RESULT, source = "", condition = "", action = "action_battle_result", trigger_count = 0 },
		--计时处理
		["Timer_Summon"] = { config_id = 8000011, name = "Timer_Summon", event = EventType.EVENT_TIMER_EVENT, source = "aster_timer", condition = "", action = "action_timer_summon", trigger_count = 0 }
	},
	[play.group_stage] = {
		--角色充能处理
		["Monster_Die_Before_Leave_Scene"] = { config_id = 8000012, name = "Monster_Die_Before_Leave_Scene", event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "condition_monster_die_before_leave_scene", action = "action_monster_die_before_leave_scene", trigger_count = 0 },
		--战斗结束
		["Battle_Result"] = { config_id = 8000013, name = "Battle_Result", event = EventType.EVENT_SCENE_MP_PLAY_BATTLE_RESULT, source = "", condition = "", action = "action_battle_result", trigger_count = 0 },
		["Any_Monster_Die"] = { config_id = 8000014, name = "Any_Monster_Die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_any_monster_die", action = "action_any_monster_die", trigger_count = 0 }

	}
}

--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
--1.3修复内容
function action_group_load(context, evt)
	--1.6改为注册及之后，动态group不允许使用setDead，也不需要维持这段逻辑
	--[[for i,v in ipairs(suites) do
		ScriptLib.RemoveExtraGroupSuite(context, play.group_main, i)
	end
	ScriptLib.SetGroupDead(context, play.group_main)--]]
	return 0
end
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



function LF_Initialize_Group(triggers, suites, group_id)
	--[[if group_id == play.group_main then
		for k,v in pairs(extra_triggers[group_id]) do
			table.insert(triggers, v)
			table.insert(suites[init_config.suite].triggers, v.name)
		end
	else
		for k,v in pairs(extra_triggers[group_id]) do
	-- Triggers 是个数组，不是map
			table.insert(triggers, v)
			for p,q in pairs(suites) do
				if p ~= init_config.suite or v.name ~= "Any_Monster_Die" then
					table.insert(q.triggers, v.name)
				end
			end
	-- 所以不能 triggers[k] = v
		end
	end--]]
	for k,v in pairs(extra_triggers[group_id]) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
end

function UpdateAsterInterrupt(context)
	local u_list = ScriptLib.GetSceneUidList(context)
	for i,v in ipairs(u_list) do
		if v == context.uid then
			ScriptLib.ScenePlayBattleUidOp(context, play.group_main, defs.gadget_aster, {v}, 0, "random_buff_aster", {}, {}, 6, 0)
			return 0
		end
	end
end

function UpdateAsterProgress(context)
	local host = ScriptLib.GetScenePlayBattleHostUid(context, 0)
	local D = ScriptLib.GetScenePlayBattleUidValue(context, 0, host, play.difficulty)
	ratio = LF_Get_Extra_Energy_Ratio(context, host)
	--获取玩家当前能量
	local uid = context.uid
	local energy = ScriptLib.GetTeamAbilityFloatValue(context, uid, play.energy_str)
	local progress = math.ceil(energy * ratio)
	--将当前能量写入uid_value
	local old_progress = ScriptLib.GetScenePlayBattleUidValue(context, 0, uid, play.energy_str)
	ScriptLib.PrintContextLog(context, "## uid:"..uid.." | energy:"..progress.." | old_energy:"..old_progress)
	ScriptLib.SetScenePlayBattleUidValue(context, 0, uid, play.energy_str, old_progress + progress)
	--通知ability可以清掉自己的能量计数
	--ScriptLib.GadgetPlayUidOp(context, 0, 0, {uid}, 1, "clear_energy", {})
	ScriptLib.AddTeamEntityGlobalFloatValue(context, {uid}, play.player_energy, -1*energy)
	--增加玩法总进度
	ScriptLib.AddScenePlayBattleProgress(context, 133001413, progress * LF_Get_Extra_Progress_Ratio(context, host))
	return 0
end

function LF_Get_Extra_Energy_Ratio(context, host)
	local ratio_ = 1
	--if true == LF_Is_Near_Op_Uid(context, host, play.ratio_energy[1]) then
	if 1 == ScriptLib.GetTeamAbilityFloatValue(context, context.source_entity_id, play.ratio_energy[1]) then
		ratio_ = play.ratio_energy[2]
	end
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : Extra_Energy_Ratio -> "..ratio_)
	return ratio_
end

function LF_Get_Extra_Progress_Ratio(context, host)
	local ratio_ = 1
	--if true == LF_Is_Near_Op_Uid(context, host, play.ratio_progress[1]) then
	if 1 == ScriptLib.GetTeamAbilityFloatValue(context, context.source_entity_id, play.ratio_progress[1]) then
		ratio_ = play.ratio_progress[2]
	end
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : Extra_Progress_Ratio -> "..ratio_)
	return ratio_
end

function LF_Is_Near_Op_Uid(context, host, str)
	local target = ScriptLib.GetScenePlayBattleUidValue(context, 0, host, "Op_Uid")
	if target == 0 or 0 == ScriptLib.GetTeamAbilityFloatValue(context, target, str)then
		return false
	end
	local target_Eid = ScriptLib.GetAvatarEntityIdByUid(context, target)
	if target_Eid == 0 then
		return false
	end
	--本人的直接返回
	if target_Eid == context.source_entity_id then
		return true
	end
	local pos1 = ScriptLib.GetPosByEntityId(context, target_Eid)
	local pos2 = ScriptLib.GetPosByEntityId(context, context.source_entity_id)
	if play.op_radius < LF_Calculate_Distance(context, pos1, pos2) then
		return false
	end
	return true
end

function LF_Calculate_Distance(context, pos1, pos2)
	local distance = math.sqrt(math.pow(pos1.x-pos2.x,2)+math.pow(pos1.y-pos2.y,2)+math.pow(pos1.z-pos2.z,2))
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : op_distance -> "..distance)
	return distance
end

-------------------------------------------------
function condition_battle_state(context, evt)
	if defs.group_id == play.group_main then
		ScriptLib.PrintContextLog(context, "## ASTER_LOG: battle_state : param1->"..evt.param1.." | param2->"..evt.param2.." | param3->"..evt.param3)
	end
	if evt.param1 == play.PlayType and evt.param2 == play.PlayId then 
		return true
	end
	return false
end

function action_battle_state(context, evt)
	--BATTLE_PREPARE
	if evt.param3 == 2 and defs.group_id == play.group_main then
		LF_Battle_Prepare(context, evt)
	--BATTLE_READY
	elseif evt.param3 == 3 and defs.group_id == play.group_main then
		LF_Battle_Ready(context, evt)
	--BATTLE_PRESTART
	elseif evt.param3 == 4 and defs.group_id == play.group_main then
		LF_Battle_Prestart(context, evt)
	--BATTLE_START
	elseif evt.param3 == 5 then
		LF_Battle_Start(context, evt)
	--[[--BATTLE_STOP
	elseif evt.param3 == 6 then
		LF_Battle_Stop(context, evt)--]]
	elseif defs.group_id == play.group_main then
		ScriptLib.PrintContextLog(context, "## ASTER_ERR : Invalid Battle State")
		return -1
	end
	return 0
end

function action_battle_stage_change(context, evt)
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : battle_stage_change : old_stage->"..evt.param1.." | cur_stage->"..evt.param2.." | final_stage->"..evt.param3)
	if evt.param2 == evt.param3 then
		return 0
	end
	local host = ScriptLib.GetScenePlayBattleHostUid(context, 0)
	ScriptLib.SetScenePlayBattleUidValue(context, 0, host, "stage_ptr", evt.param2)
	LF_Uid_Op(context, evt.param2)
	--阶段转换时一定要停当前tide
	LF_Modify_Gadget_Group(context, evt.param2)
	local r = ScriptLib.KillMonsterTide(context, play.group_main, play.monster_tide)
	ScriptLib.CancelGroupTimerEvent(context, play.group_main, "next_tide_delay")
	local s = ScriptLib.GetScenePlayBattleUidValue(context, 0, host, "tide_ptr")
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : remove_suite_over_stage -> "..s.." | kill_tide_result -> "..r)
	--清理tide_monster
	if s ~= 0 then
		ScriptLib.RemoveExtraGroupSuite(context, play.group_main, s)
	end
	--清理stage_monster
	local prev_stage_suite = ScriptLib.GetScenePlayBattleUidValue(context, 0, host, "prev_stage_suite")
	if prev_stage_suite ~= 0 then
		ScriptLib.RemoveExtraGroupSuite(context, play.group_stage, prev_stage_suite)
	end
	ScriptLib.ExecuteGroupLua(context, play.group_stage, "LF_Find_Stage_Suite", {evt.param2,host})
	return 0
end

function action_battle_result(context, evt)
	if evt.param3 == 1 then
		LF_Battle_Win(context, evt)
	elseif evt.param3 == 0 then
		LF_Battle_Lose(context, evt)
	end
	return 0
end

function condition_monster_die_before_leave_scene(context, evt)
	--如果monster没有分就return了
	if monsters[evt.param1].kill_score > 0 then
		return true
	end
	return false
end

function action_monster_die_before_leave_scene(context, evt)
	--判断附近玩家,并增加对应分数
	--local uid_list = ScriptLib.GetSurroundUidList(context, evt.param1, play.radius)
	local uid_list = ScriptLib.GetSceneUidList(context)
	if #uid_list == 0 then
		ScriptLib.PrintContextLog(context, "## ASTER_ERR : None Near Players")
		return -1
	end
	--通知客户端执行加分,考虑到客户端可能断线,这个分数服务器自己不记录
	local score_ = monsters[evt.param1].kill_score
	local host = ScriptLib.GetScenePlayBattleHostUid(context, 0)
	local ratio_ = ScriptLib.GetScenePlayBattleUidValue(context, 0, host, "ratio_ptr")
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : monster->"..evt.param1.." | score->"..score_.." | ratio->"..ratio_)
	ScriptLib.AddTeamEntityGlobalFloatValue(context, uid_list, play.player_energy, score_ * ratio_)
	return 0
end

function action_timer_summon(context, evt)
	local host = ScriptLib.GetScenePlayBattleHostUid(context, 0)
	local D = ScriptLib.GetScenePlayBattleUidValue(context, 0, host, play.difficulty)
	local timer_ptr = ScriptLib.GetScenePlayBattleUidValue(context, 0, host,"timer_ptr")
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : timer_event \"aster_timer\" -> "..defs.aster_timer[timer_ptr])
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : cur_timer_ptr -> "..timer_ptr)
	math.randomseed(ScriptLib.GetServerTime(context) + timer_ptr)
	local Timer = timer_def[D][timer_ptr][math.random(1,#timer_def[D][timer_ptr])]
	if #suites[Timer].monsters > 0 then
		ScriptLib.ShowTemplateReminder(context, 110, {0,0})
	end
	if defs.aster_timer[timer_ptr+1] == nil then
		ScriptLib.PrintContextLog(context, "## ASTER_LOG : aster_timer_end")
		return -1
	end
	--设置下一招怪阶段
	ScriptLib.CreateGroupTimerEvent(context, play.group_timer, "aster_timer", defs.aster_timer[timer_ptr+1] - defs.aster_timer[timer_ptr])
	--ScriptLib.CreateGroupTimerEvent(context, play.group_timer, "clear_delay", defs.clear_delay)
	--召唤当前波次的怪物
	--ScriptLib.PauseAutoMonsterTide(context, play.group_main, play.monster_tide)
	--ScriptLib.RefreshGroup(context, {group_id = play.group_timer, suite = timer_def[D][timer_ptr][math.random(1,#timer_def[D][timer_ptr])]})
	ScriptLib.AddExtraGroupSuite(context, play.group_timer, Timer)
	ScriptLib.SetScenePlayBattleUidValue(context, 0, host,"timer_ptr", timer_ptr + 1)
	--ScriptLib.SetScenePlayBattleUidValue(context, 0, host,"prev_timer_suite", Timer)
	return 0
end

function action_monster_tide_over(context, evt)
	local host = ScriptLib.GetScenePlayBattleHostUid(context, 0)
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : Monster_Tide_Over : tide_index->"..evt.source_name.." | status->"..evt.param2)
	local tide_ptr = ScriptLib.GetScenePlayBattleUidValue(context, 0, host, "tide_ptr")
	--自动结束,计算下一个tide,如果只有一个会选自己
	local new_tide_ptr = tide_suite_config[tide_ptr].next
	if new_tide_ptr == nil then
		ScriptLib.PrintContextLog(context, "## ASTER_ERR : INVALID_CIRCLE_TIDE_PTR -> "..tide_ptr)
		return -1
	end
	ScriptLib.CreateGroupTimerEvent(context, play.group_main, "next_tide_delay", tide_suite_config[tide_ptr].delay)
	ScriptLib.SetScenePlayBattleUidValue(context, 0, host, "tide_ptr", new_tide_ptr)
	return 0
end

function action_timer_delay(context, evt)
	local host = ScriptLib.GetScenePlayBattleHostUid(context, 0)
	--继续创建下个tide
	local tide_ptr = ScriptLib.GetScenePlayBattleUidValue(context, 0, host, "tide_ptr")
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : timer_delay_tide -> "..tide_ptr)
	ScriptLib.AutoMonsterTide(context, play.monster_tide, play.group_main, suites[tide_ptr].monsters, tide_suite_config[tide_ptr].total, tide_suite_config[tide_ptr].min, tide_suite_config[tide_ptr].max)
	return 0
end

function action_battle_interrupt(context, evt)
	ScriptLib.SetGadgetEnableInteract(context, play.group_main, defs.gadget_aster, true)
	return 0
end

function condition_any_monster_die(context, evt)
	if 0 == ScriptLib.GetGroupMonsterCount(context)	then
		return true
	end
	return false
end

function action_any_monster_die(context, evt)
	local host = ScriptLib.GetScenePlayBattleHostUid(context, 0)
	local stage = ScriptLib.GetScenePlayBattleUidValue(context, 0, host, "stage_ptr")
	ScriptLib.ExecuteGroupLua(context, play.group_main, "LF_Modify_Monster_Tide", {stage,host})
	return 0
end
---------------------------------------

--/*************************************/

---------------------------------------
function LF_Battle_Prepare(context, evt)
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : LF_Battle_Prepare")
	ScriptLib.PrintLog("================VERSION 76=========================")
	--关闭大陨石交互
	ScriptLib.SetGadgetEnableInteract(context, play.group_main, defs.gadget_aster, false)
	return 0
end

function LF_Battle_Ready(context, evt)
	--ScriptLib.PrintContextLog(context, "## ASTER_LOG : LF_Battle_Ready")
	--随机难度
	local D_str = LF_Random_Play_Difficulty(context, evt)
	local D_num = 0
	if D_str == "normal" then
		D_num = 1
	elseif D_str == "hard" then
		D_num = 2
	elseif D_str == "nightmare" then
		D_num = 3
	elseif D_str == "easy" then
		D_num = 4
	end
	--启用playEntity
	LF_Attach_Ability(context, evt, D_num, D_str)
	--开启大陨石玩法
	ScriptLib.PrestartScenePlayBattle(context, {duration = 600,start_cd = 10,progress_stage = progress_def[D_str], group_id = play.group_main, mode = D_num + 200})
	--写入难度
	LF_Set_Battle_Difficulty(context, evt, D_num)
	--生成Buff序列
	LF_Init_Uid_Op_Buff(context, evt)--]]
	return 0
end

function LF_Battle_Prestart(context, evt)
	--3秒倒计时提醒
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : LF_Battle_Prestart")
	--[[--随机难度
	LF_Random_Play_Difficulty(context, evt)
	--生成Buff序列
	LF_Init_Uid_Op_Buff(context, evt)--]]
	return 0
end

function LF_Battle_Start(context, evt)
	--ScriptLib.PrintContextLog(context, "## ASTER_LOG : LF_Battle_Start")
--正式开始
	if defs.group_id == play.group_main then
		--启动起始tide
		local host = ScriptLib.GetScenePlayBattleHostUid(context, 0)
		LF_Modify_Gadget_Group(context, 0)
		LF_Modify_Monster_Tide(context, context, 0, host, 0)
	elseif defs.group_id == play.group_timer then
		--启动timer_group计时器
		LF_Set_Timer(context, evt)
	end
	return 0
end

--[[function LF_Battle_Stop(context, evt)
	--结束
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : LF_Battle_Stop")
	return 0
end--]]

function LF_Battle_Win(context, evt)
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : LF_Battle_Win")
	if defs.group_id == play.group_main then
		ScriptLib.KillMonsterTide(context, play.group_main, play.monster_tide)
		local host = ScriptLib.GetScenePlayBattleHostUid(context, 0)
		local circle = ScriptLib.GetScenePlayBattleUidValue(context, 0, host, "circle_ptr")
		ScriptLib.KillExtraGroupSuite(context, play.group_gadget, circle)
		ScriptLib.CancelGroupTimerEvent(context, play.group_main, "next_tide_delay")
		local s = ScriptLib.GetScenePlayBattleUidValue(context, 0, host, "tide_ptr")
		ScriptLib.RemoveExtraGroupSuite(context, play.group_main, s)
		ScriptLib.CreateScenePlayGeneralRewardGadget(context, {group_id = play.group_main, config_id = defs.gadget_reward})
		ScriptLib.SetGadgetEnableInteract(context, play.group_main, defs.gadget_aster, true)
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_aster, 0)
	elseif defs.group_id == play.group_stage then
		ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	elseif defs.group_id == play.group_timer then
		ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
		ScriptLib.CancelGroupTimerEvent(context, play.group_timer, "aster_timer")
		--ScriptLib.CancelGroupTimerEvent(context, play.group_timer, "clear_delay")
	end
	return 0
end

function LF_Battle_Lose(context, evt)
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : LF_Battle_Lose")
	if defs.group_id == play.group_main then
		local host = ScriptLib.GetScenePlayBattleHostUid(context, 0)
		local circle = ScriptLib.GetScenePlayBattleUidValue(context, 0, host, "circle_ptr")
		ScriptLib.KillExtraGroupSuite(context, play.group_gadget, circle)
		ScriptLib.CancelGroupTimerEvent(context, play.group_main, "next_tide_delay")
		ScriptLib.KillMonsterTide(context, play.group_main, play.monster_tide)
		local s = ScriptLib.GetScenePlayBattleUidValue(context, 0, host, "tide_ptr")
		ScriptLib.RemoveExtraGroupSuite(context, play.group_main, s)
		ScriptLib.SetGadgetEnableInteract(context, play.group_main, defs.gadget_aster, true)
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_aster, 0)
	elseif defs.group_id == play.group_stage then
		ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	elseif defs.group_id == play.group_timer then
		ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
		ScriptLib.CancelGroupTimerEvent(context, play.group_timer, "aster_timer")
		--ScriptLib.CancelGroupTimerEvent(context, play.group_timer, "clear_delay")
	end
	return 0
end

function LF_Find_Stage_Suite(context, prev_context, param1, param2, param3)
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : Find_Stage_Suite : stage->"..param1.." | host->"..param2)
	local stage = param1
	local host = param2
	local D = ScriptLib.GetScenePlayBattleUidValue(context, 0, host, play.difficulty)
	--用于定义阶段转换,影响stage对应group的逻辑
	local stage_suite_arr = stage_def[D][stage]

	if stage_suite_arr == nil or #stage_suite_arr == 0 then
		ScriptLib.PrintContextLog(context, "## ASTER_LOG : None Stage Suite")
		ScriptLib.ExecuteGroupLua(context, play.group_main, "LF_Modify_Monster_Tide", {stage,host})
		return 0
	else
		math.randomseed(ScriptLib.GetServerTime(context) + stage)
		local stage_suite = stage_suite_arr[math.random(1,#stage_suite_arr)]
		ScriptLib.ExecuteGroupLua(context, play.group_main, "LF_Handle_Stage_Change", {stage,stage_suite})
	end
	return 0
end

function LF_Modify_Monster_Tide(context, prev_context, param1, param2, param3)
	local stage = param1
	local host = param2
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : modify_monster_tide : cur_stage->"..stage)
	local D = ScriptLib.GetScenePlayBattleUidValue(context, 0, host, play.difficulty)
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : show difficulty ->"..D)
	if #tide_defs[D][stage].suite == 0 then
		ScriptLib.PrintContextLog(context, "## ASTER_ERR : no_monster_tide_begin")
		return -1
	elseif #tide_defs[D][stage].suite ~= #tide_defs[D][stage].weight then
		ScriptLib.PrintContextLog(context, "## ASTER_ERR : Invalid Monster Tide Config")
		return -1
	end
	local tide_ptr = LF_Handle_Random_Weight(context, stage, tide_defs[D], "suite")
	--根据tide预设值创建tide
	if tide_ptr > 0 then
		ScriptLib.SetScenePlayBattleUidValue(context, 0, host, "tide_ptr", tide_ptr)
		ScriptLib.AutoMonsterTide(context, play.monster_tide, play.group_main, suites[tide_ptr].monsters, tide_suite_config[tide_ptr].total, tide_suite_config[tide_ptr].min, tide_suite_config[tide_ptr].max)
	else
		return -1
	end
	return 0
end

function LF_Handle_Random_Weight(context, stage, table, name)
	math.randomseed(ScriptLib.GetServerTime(context) + stage)
	local weight_sum = 0
	for i,v in ipairs(table[stage].weight) do
		weight_sum = weight_sum + v
	end
	if weight_sum == 0 then
		ScriptLib.PrintContextLog(context, "## ASTER_ERR : Weight Is Zero")
		return -1
	end
	local weight_ran = math.random(1,weight_sum)
	for i,v in ipairs(table[stage].weight) do
		weight_ran = weight_ran - v
		if weight_ran <= 0 then
			return table[stage][name][i]
		end
	end
	return -1
end

function LF_Attach_Ability(context, evt, num, str)
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : LF_Attach_Ability")
	local host = ScriptLib.GetScenePlayBattleHostUid(context, 0)
	ScriptLib.SetScenePlayBattlePlayTeamEntityGadgetId(context, play.group_main, 70370000 + num)
	ScriptLib.SetScenePlayBattleUidValue(context, 0, host, "ratio_ptr", defs.score_ratio[str])
	return 0
end

function LF_Random_Play_Difficulty(context, evt)
	---[[
	local M = ScriptLib.GetGroupVariableValue(context, "GM_Mode")
	if M == 1 then
		return "normal"
	elseif M == 2 then
		return "hard"
	elseif M == 3 then
		return "nightmare"
	elseif M == 4 then
		return "easy"
	end
	--]]
	if 1 == ScriptLib.GetScenePlayBattleType(context, play.group_main) then
		return "easy"
	end
	local max_difficulty = 0
	for k,v in pairs(defs.difficulty_weight) do
		max_difficulty = max_difficulty + v
	end
	math.randomseed(ScriptLib.GetServerTime(context) + evt.param1 + evt.param2)
	local ran_difficulty = math.random(1,max_difficulty)
	for k,v in pairs(defs.difficulty_weight) do
		ran_difficulty = ran_difficulty - v
		if ran_difficulty <= 0 then
			return k
		end
	end
	return 0
end

function LF_Set_Battle_Difficulty(context, evt, difficulty)
	local host = ScriptLib.GetScenePlayBattleHostUid(context, 0)
	ScriptLib.PrintContextLog(context, "## ASTER_LOG ： Set_Initial_Difficulty->"..difficulty)
	--ScriptLib.ShowTemplateReminder(context, 100 + difficulty, {0,0})
	ScriptLib.SetScenePlayBattleUidValue(context, 0, host, play.difficulty, difficulty)
	return 0
end

function LF_Handle_Stage_Change(context, prev_context, param1, param2, param3)
	local stage = param1
	local suite = param2
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : handle_stage_change : stage->"..stage.." | suite->"..suite)
	--处理progress阶段转换的逻辑
	if #suites[suite].monsters == 0 then
		ScriptLib.PrintContextLog(context, "## ASTER_ERR : Invalid Monster Suite->"..suite)
		return -1
	end
	local host = ScriptLib.GetScenePlayBattleHostUid(context, 0)
	ScriptLib.AddExtraGroupSuite(context, play.group_stage, suite)
	ScriptLib.SetScenePlayBattleUidValue(context, 0, host, "prev_stage_suite", suite)
	--ScriptLib.ShowTemplateReminder(context, 109, {0,0})
	return 0
end

function LF_Uid_Op(context, stage)
	--用于处理点名逻辑
	local buff_type = LF_Get_Uid_Op_Buff(context, stage)
	local uid_list = LF_Get_Uid_Op_Target(context, buff_type)
	local host = ScriptLib.GetScenePlayBattleHostUid(context, 0)
	--[[if #uid_list == 0 then
		ScriptLib.PrintContextLog(context, "## ASTER_ERR : Invalid Op Uid List")
		return -1
	end--]]
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : random_buff -> "..buff_type)
	if buff_type == 3 or buff_type == 5 then
		ScriptLib.SetScenePlayBattleUidValue(context, 0, host, "Op_Uid", uid_list[1])
	else
		ScriptLib.SetScenePlayBattleUidValue(context, 0, host, "Op_Uid", 0)
	end
	ScriptLib.ScenePlayBattleUidOp(context, play.group_main, defs.gadget_aster, uid_list, buff_type, "random_buff_aster", {}, {}, buff_type, 30)
	return 0
end

function LF_Init_Uid_Op_Buff(context, evt)
	local host = ScriptLib.GetScenePlayBattleHostUid(context, 0)
	local D = ScriptLib.GetScenePlayBattleUidValue(context, 0, host, play.difficulty)
	--初始化点名buff栈,栈的深度要掐头去尾
	local buff_stack = 0
	for i,v in ipairs(buff_def[D]) do
		local buff_ = LF_Handle_Random_Weight(context, i, buff_def[D], "buff")
		buff_stack = buff_stack + math.pow(10,i-1)*buff_
	end
	if buff_stack > 0 then
		ScriptLib.PrintContextLog(context, "## ASTER_LOG : buff_stack -> "..buff_stack)
		ScriptLib.SetScenePlayBattleUidValue(context, 0, host, "buff_stack", buff_stack)
	else
		ScriptLib.PrintContextLog(context, "## ASTER_ERR : buff_stack_error")
	end
	return 0
end

function LF_Get_Uid_Op_Buff(context, stage)
	local host = ScriptLib.GetScenePlayBattleHostUid(context, 0)
	local buff_stack = ScriptLib.GetScenePlayBattleUidValue(context, 0, host,"buff_stack")
	return buff_stack//math.pow(10,stage-1)%10
end

function LF_Get_Uid_Op_Target(context, buff_type)
	--点名返回的目标
	local user = ScriptLib.GetSceneUidList(context)
	local list = {}
	math.randomseed(ScriptLib.GetServerTime(context) + buff_type)
	--if buff_type == 1 or buff_type == 2 then
	list[1] = user[math.random(1,#user)] 
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : uid_op_target -> "..list[1])
	--end
	return list
end

function LF_Set_Timer(context, evt)
	local host = ScriptLib.GetScenePlayBattleHostUid(context, 0)
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : set_timer \"aster_timer\"-> "..defs.aster_timer[1])
	ScriptLib.CreateGroupTimerEvent(context, play.group_timer, "aster_timer", defs.aster_timer[1])
	ScriptLib.SetScenePlayBattleUidValue(context, 0, host,"timer_ptr", 1)
	return 0
end

function LF_Modify_Gadget_Group(context, stage)
	ScriptLib.PrintContextLog(context, "## ASTER_LOG : modify_gadget_group | stage -> "..stage)
	local host = ScriptLib.GetScenePlayBattleHostUid(context, 0)
	local D = ScriptLib.GetScenePlayBattleUidValue(context, 0, host, play.difficulty)
	if circle_type_defs[D] == 1 then
		--交分台锁位置
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_aster, 202)
	elseif circle_type_defs[D] == 2 then
		--交分台换位置
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_aster, 201)
	end	
	if stage == 0 then
		ScriptLib.SetScenePlayBattleUidValue(context, 0, host, "circle_ptr", tide_defs[D][stage].circle)
		ScriptLib.AddExtraGroupSuite(context, play.group_gadget, tide_defs[D][stage].circle)	
	elseif circle_type_defs[D] == 1 then
		ScriptLib.SetScenePlayBattleUidValue(context, 0, host, "circle_ptr", tide_defs[D][stage].circle)
		local prev_stage = ScriptLib.GetScenePlayBattleUidValue(context, 0, host, "prev_stage")
		ScriptLib.KillExtraGroupSuite(context, play.group_gadget, tide_defs[D][prev_stage].circle)
		ScriptLib.AddExtraGroupSuite(context, play.group_gadget, tide_defs[D][stage].circle)
	end
	ScriptLib.SetScenePlayBattleUidValue(context, 0, host, "prev_stage", stage)
	return 0
end

LF_Initialize_Group(triggers, suites, defs.group_id)