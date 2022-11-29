-- 基础信息
local base_info = {
	group_id = 302001009
}

-- Trigger变量
local defs = {
	radius = 10,
	group_id = 302001009,
	gadget_id = 9011,
	battle_time = 600,
	auto_decline = 30,
	max_energy = 300
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9001, monster_id = 21010301, pos = { x = 734.944, y = 204.816, z = 261.690 }, rot = { x = 0.000, y = 305.214, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 9 },
	{ config_id = 9002, monster_id = 21010301, pos = { x = 725.953, y = 203.634, z = 266.733 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 9 },
	{ config_id = 9003, monster_id = 21010301, pos = { x = 730.083, y = 203.630, z = 270.373 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 9 },
	{ config_id = 9004, monster_id = 21010301, pos = { x = 734.813, y = 204.171, z = 267.242 }, rot = { x = 0.000, y = 236.767, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 9 },
	{ config_id = 9005, monster_id = 21010301, pos = { x = 727.722, y = 204.587, z = 260.466 }, rot = { x = 0.000, y = 40.783, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 9 },
	{ config_id = 9010, monster_id = 21020101, pos = { x = 725.771, y = 203.022, z = 271.468 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 60, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9011, gadget_id = 70710209, pos = { x = 731.015, y = 204.346, z = 264.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, persistent = true, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1009006, name = "TIMER_EVENT_9006", event = EventType.EVENT_TIMER_EVENT, source = "timer1", condition = "", action = "action_EVENT_TIMER_EVENT_9006" },
	{ config_id = 1009013, name = "GADGET_CREATE_9013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9013", action = "action_EVENT_GADGET_CREATE_9013", trigger_count = 0 },
	{ config_id = 1009014, name = "SELECT_OPTION_9014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9014", action = "action_EVENT_SELECT_OPTION_9014", trigger_count = 0 },
	{ config_id = 1009015, name = "ANY_MONSTER_LIVE_9015", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_9015", action = "action_EVENT_ANY_MONSTER_LIVE_9015", trigger_count = 0 },
	{ config_id = 1009016, name = "MONSTER_TIDE_DIE_9016", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_9016", action = "action_EVENT_MONSTER_TIDE_DIE_9016", trigger_count = 0 },
	{ config_id = 1009017, name = "MONSTER_TIDE_DIE_9017", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_9017", action = "action_EVENT_MONSTER_TIDE_DIE_9017", trigger_count = 0 },
	{ config_id = 1009022, name = "SEAL_BATTLE_END_9022", event = EventType.EVENT_SEAL_BATTLE_END, source = "", condition = "condition_EVENT_SEAL_BATTLE_END_9022", action = "action_EVENT_SEAL_BATTLE_END_9022", trigger_count = 0 },
	{ config_id = 1009023, name = "SELECT_OPTION_9023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9023", action = "action_EVENT_SELECT_OPTION_9023", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isDone", value = 0, no_refresh = false },
	{ config_id = 2, name = "testV", value = 0, no_refresh = false }
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
		gadgets = { 9011 },
		regions = { },
		triggers = { "TIMER_EVENT_9006", "GADGET_CREATE_9013", "SELECT_OPTION_9014", "SEAL_BATTLE_END_9022", "SELECT_OPTION_9023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 9001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_9015", "MONSTER_TIDE_DIE_9016", "MONSTER_TIDE_DIE_9017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 9002, 9003, 9004, 9005, 9010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_TIMER_EVENT_9006(context, evt)
	ScriptLib.KillEntityByConfigId(context, {group_id = defs.group_id, config_id = defs.gadget_id})
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, "timer1")
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_9013(context, evt)
	if 9011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 302001009, 9011, {189}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9014(context, evt)
	if 9011 ~= evt.param1 then
		return false
	end
	
	-- 判断是gadgetid 9011 option_id 189
	if 9011 ~= evt.param1 then
		return false	
	end
	
	if 189 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9014(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id, GadgetState.GearStart)
	
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	
	ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.gadget_id, 189)
	
	ScriptLib.AddQuestProgress(context, "3020010091")
	
	ScriptLib.SetGroupVariableValue(context, "testV", 1) 
	
	local ret = ScriptLib.StartSealBattle(context,defs.gadget_id, {radius = defs.radius, battle_time = defs.battle_time, monster_group_id = defs.group_id, default_kill_charge = 0, auto_charge = 0, auto_decline= defs.auto_decline, max_energy = defs.max_energy, battle_type = SealBattleType.ENERGY_CHARGE})
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_9015(context, evt)
	if 9001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_9015(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少3只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001009, {9002,9003,9003,9004}, 4, 3, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_9016(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_9016(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001009, {9010}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_9017(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_9017(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少3只，最多4只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001009, {9002,9003,9004,9005}, 4, 3, 4) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SEAL_BATTLE_END_9022(context, evt)
	if 9011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SEAL_BATTLE_END_9022(context, evt)
	if evt.param2 == 0 then
		ScriptLib.SetGroupVariableValue(context, "isDone", 2)
		ScriptLib.KillMonsterTide(context, defs.group_id, 1)
	    	ScriptLib.KillMonsterTide(context, defs.group_id, 2)
	    	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
		ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id, GadgetState.Default)
		ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_id, {189})
		
	elseif evt.param2 == 1 then
		ScriptLib.SetGroupVariableValue(context, "isDone", 1) 	
		ScriptLib.KillMonsterTide(context, defs.group_id, 1)
	    	ScriptLib.KillMonsterTide(context, defs.group_id, 2)
	    	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
		ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id, GadgetState.GearStop)
		ScriptLib.AddQuestProgress(context, "302001009")
		ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "timer1", 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9023(context, evt)
	if 9011 ~= evt.param1 then
		return false
	end
	
	-- 判断是gadgetid 9011 option_id 189
	if 9011 ~= evt.param1 then
		return false	
	end
	
	if 189 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"isDone"为2
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9023(context, evt)
	ScriptLib.SetGroupVariableValue(context, "isDone", 0)
	
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id, GadgetState.GearStart)
	
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.gadget_id, 189)
	
	local ret = ScriptLib.StartSealBattle(context,defs.gadget_id, {radius = defs.radius, battle_time = defs.battle_time, monster_group_id = defs.group_id, default_kill_charge = 0, auto_charge = 0, auto_decline= defs.auto_decline, max_energy = defs.max_energy, battle_type = SealBattleType.ENERGY_CHARGE})
	
	return 0
end