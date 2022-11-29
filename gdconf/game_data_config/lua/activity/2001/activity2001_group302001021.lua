-- 基础信息
local base_info = {
	group_id = 302001021
}

-- Trigger变量
local defs = {
	radius = 10,
	group_id = 302001065,
	gadget_id = 21021,
	battle_time = 600,
	auto_decline = 30,
	max_energy = 300,
	reward_gadget_id = 21022,
	difficulty1_suite = 2,
	difficulty2_suite = 4,
	empty_suite = 1
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 21021, gadget_id = 70950015, pos = { x = 1256.224, y = 306.576, z = -1772.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, persistent = true, area_id = 2 },
	{ config_id = 21022, gadget_id = 70950021, pos = { x = 1256.224, y = 306.576, z = -1772.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, persistent = true, autopick = true, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1021001, name = "SEAL_BATTLE_PROGRESS_DECREASE_21001", event = EventType.EVENT_SEAL_BATTLE_PROGRESS_DECREASE, source = "", condition = "condition_EVENT_SEAL_BATTLE_PROGRESS_DECREASE_21001", action = "action_EVENT_SEAL_BATTLE_PROGRESS_DECREASE_21001", trigger_count = 0 },
	{ config_id = 1021030, name = "SEAL_BATTLE_END_21030", event = EventType.EVENT_SEAL_BATTLE_END, source = "", condition = "condition_EVENT_SEAL_BATTLE_END_21030", action = "action_EVENT_SEAL_BATTLE_END_21030", trigger_count = 0 },
	{ config_id = 1021031, name = "SELECT_DIFFICULTY_21031", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_21031", action = "action_EVENT_SELECT_DIFFICULTY_21031", trigger_count = 0 },
	{ config_id = 1021039, name = "GENERAL_REWARD_DIE_21039", event = EventType.EVENT_GENERAL_REWARD_DIE, source = "", condition = "condition_EVENT_GENERAL_REWARD_DIE_21039", action = "action_EVENT_GENERAL_REWARD_DIE_21039" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isDone", value = 0, no_refresh = false },
	{ config_id = 2, name = "difficulty", value = 0, no_refresh = false },
	{ config_id = 3, name = "isShow", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 21021 },
		regions = { },
		triggers = { "SEAL_BATTLE_PROGRESS_DECREASE_21001", "SEAL_BATTLE_END_21030", "SELECT_DIFFICULTY_21031", "GENERAL_REWARD_DIE_21039" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SEAL_BATTLE_PROGRESS_DECREASE_21001(context, evt)
	-- 判断变量"isShow"为0
	if ScriptLib.GetGroupVariableValue(context, "isShow") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SEAL_BATTLE_PROGRESS_DECREASE_21001(context, evt)
	ScriptLib.ShowTemplateReminder(context, 4,{10,5})
	
	ScriptLib.SetGroupVariableValue(context, "isShow", 1)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SEAL_BATTLE_END_21030(context, evt)
	if 21021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SEAL_BATTLE_END_21030(context, evt)
	--SealBattle结束后，处理成功和失败逻辑
	local diff = ScriptLib.GetGroupVariableValue(context, "difficulty")
	local state = ScriptLib.GetGroupVariableValue(context, "isDone")
	
	if evt.param2 == 0 then
	        ScriptLib.SetGroupVariableValue(context, "isDone", 2)   
	        ScriptLib.SetGroupVariableValue(context, "isShow", 0)
	        ScriptLib.RefreshGroup(context, { group_id = defs.group_id, suite = defs.empty_suite})
	        ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id, GadgetState.Default)
	elseif evt.param2 == 1 then
	        ScriptLib.SetGroupVariableValue(context, "isDone", 1)   
	        ScriptLib.RefreshGroup(context, { group_id = defs.group_id, suite = defs.empty_suite})
	        ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id, GadgetState.GearStop)
	        ScriptLib.CreateAsterMidGeneralRewardGadget(context, {config_id=defs.reward_gadget_id, difficulty_id=diff})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_21031(context, evt)
	if 21021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_21031(context, evt)
	local diff = evt.param2
	local state = ScriptLib.GetGroupVariableValue(context, "isDone")
	local monster_level = evt.param3
	
	ScriptLib.SetGroupVariableValue(context, "difficulty", diff)
	
	if state == 2 then
	        ScriptLib.SetGroupVariableValue(context, "isDone", 0)
	end
	
	if diff < 5 then
	        ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id, GadgetState.GearStart)
	        ScriptLib.RefreshGroup(context, { group_id = defs.group_id, suite = defs.difficulty1_suite, refresh_level_revise = monster_level, exclude_prev = true })
	        local ret = ScriptLib.StartSealBattle(context,defs.gadget_id, {radius = defs.radius, battle_time = defs.battle_time, monster_group_id = defs.group_id, default_kill_charge = 0, auto_charge = 0, auto_decline= defs.auto_decline, max_energy = defs.max_energy, battle_type = SealBattleType.ENERGY_CHARGE})
	else
	        ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id, GadgetState.GearStart)
	        ScriptLib.RefreshGroup(context, { group_id = defs.group_id, suite = defs.difficulty2_suite, refresh_level_revise = monster_level, exclude_prev = true })
	        local ret = ScriptLib.StartSealBattle(context,defs.gadget_id, {radius = defs.radius, battle_time = defs.battle_time, monster_group_id = defs.group_id, default_kill_charge = 0, auto_charge = 0, auto_decline= defs.auto_decline, max_energy = defs.max_energy, battle_type = SealBattleType.ENERGY_CHARGE})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GENERAL_REWARD_DIE_21039(context, evt)
	if 21022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GENERAL_REWARD_DIE_21039(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 21021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "AsterMiddle"