-- 基础信息
local base_info = {
	group_id = 302001019
}

-- Trigger变量
local defs = {
	radius = 10,
	group_id = 302001019,
	gadget_id = 19011,
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
	{ config_id = 19001, monster_id = 20010501, pos = { x = 1776.370, y = 216.746, z = 708.374 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 5 },
	{ config_id = 19002, monster_id = 20010501, pos = { x = 1771.183, y = 216.746, z = 711.098 }, rot = { x = 0.000, y = 92.816, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 5 },
	{ config_id = 19003, monster_id = 20010501, pos = { x = 1773.912, y = 216.746, z = 713.639 }, rot = { x = 0.000, y = 162.369, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 5 },
	{ config_id = 19004, monster_id = 20010501, pos = { x = 1777.042, y = 216.746, z = 708.764 }, rot = { x = 0.000, y = 309.397, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 5 },
	{ config_id = 19006, monster_id = 20010601, pos = { x = 1778.732, y = 216.746, z = 709.262 }, rot = { x = 0.000, y = 274.644, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 50, area_id = 5 },
	{ config_id = 19007, monster_id = 20010701, pos = { x = 1777.994, y = 216.746, z = 713.961 }, rot = { x = 0.000, y = 244.198, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 50, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 19011, gadget_id = 70710208, pos = { x = 1774.749, y = 216.691, z = 710.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, persistent = true, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1019005, name = "TIMER_EVENT_19005", event = EventType.EVENT_TIMER_EVENT, source = "timer1", condition = "", action = "action_EVENT_TIMER_EVENT_19005" },
	{ config_id = 1019012, name = "GADGET_CREATE_19012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_19012", action = "action_EVENT_GADGET_CREATE_19012", trigger_count = 0 },
	{ config_id = 1019013, name = "SELECT_OPTION_19013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_19013", action = "action_EVENT_SELECT_OPTION_19013", trigger_count = 0 },
	{ config_id = 1019014, name = "ANY_MONSTER_LIVE_19014", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_19014", action = "action_EVENT_ANY_MONSTER_LIVE_19014", trigger_count = 0 },
	{ config_id = 1019015, name = "MONSTER_TIDE_DIE_19015", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_19015", action = "action_EVENT_MONSTER_TIDE_DIE_19015", trigger_count = 0 },
	{ config_id = 1019016, name = "MONSTER_TIDE_DIE_19016", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_19016", action = "action_EVENT_MONSTER_TIDE_DIE_19016", trigger_count = 0 },
	{ config_id = 1019021, name = "SEAL_BATTLE_END_19021", event = EventType.EVENT_SEAL_BATTLE_END, source = "", condition = "condition_EVENT_SEAL_BATTLE_END_19021", action = "action_EVENT_SEAL_BATTLE_END_19021", trigger_count = 0 },
	{ config_id = 1019022, name = "SELECT_OPTION_19022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_19022", action = "action_EVENT_SELECT_OPTION_19022", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isDone", value = 0, no_refresh = false }
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
		gadgets = { 19011 },
		regions = { },
		triggers = { "TIMER_EVENT_19005", "GADGET_CREATE_19012", "SELECT_OPTION_19013", "SEAL_BATTLE_END_19021", "SELECT_OPTION_19022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 19001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_19014", "MONSTER_TIDE_DIE_19015", "MONSTER_TIDE_DIE_19016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 19002, 19003, 19004, 19006, 19007 },
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
function action_EVENT_TIMER_EVENT_19005(context, evt)
	ScriptLib.KillEntityByConfigId(context, {group_id = defs.group_id, config_id = defs.gadget_id})
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, "timer1")
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_19012(context, evt)
	if 19011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_19012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 302001019, 19011, {189}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_19013(context, evt)
	if 19011 ~= evt.param1 then
		return false
	end
	
	-- 判断是gadgetid 19011 option_id 189
	if 19011 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_19013(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id, GadgetState.GearStart)
	
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	
	ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.gadget_id, 189)
	
	local ret = ScriptLib.StartSealBattle(context,defs.gadget_id, {radius = defs.radius, battle_time = defs.battle_time, monster_group_id = defs.group_id, default_kill_charge = 0, auto_charge = 0, auto_decline= defs.auto_decline, max_energy = defs.max_energy, battle_type = SealBattleType.ENERGY_CHARGE})
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_19014(context, evt)
	if 19001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_19014(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001019, {19002,19003}, 3, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_19015(context, evt)
	if 3 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_19015(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001019, {19006,19007}, 2, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_19016(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_19016(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少1只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001019, {19002,19003,19004}, 3, 1, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SEAL_BATTLE_END_19021(context, evt)
	if 19011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SEAL_BATTLE_END_19021(context, evt)
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
		ScriptLib.AddQuestProgress(context, "302001019")
		ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "timer1", 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_19022(context, evt)
	if 19011 ~= evt.param1 then
		return false
	end
	
	-- 判断是gadgetid 19011 option_id 189
	if 19011 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_19022(context, evt)
	ScriptLib.SetGroupVariableValue(context, "isDone", 0)
	
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id, GadgetState.GearStart)
	
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	
	ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.gadget_id, 189)
	
	local ret = ScriptLib.StartSealBattle(context,defs.gadget_id, {radius = defs.radius, battle_time = defs.battle_time, monster_group_id = defs.group_id, default_kill_charge = 0, auto_charge = 0, auto_decline= defs.auto_decline, max_energy = defs.max_energy, battle_type = SealBattleType.ENERGY_CHARGE})
	
	return 0
end