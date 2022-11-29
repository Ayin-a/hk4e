-- 基础信息
local base_info = {
	group_id = 302001011
}

-- Trigger变量
local defs = {
	radius = 10,
	group_id = 302001011,
	gadget_id = 11011,
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
	{ config_id = 11001, monster_id = 23010401, pos = { x = 661.188, y = 201.075, z = 334.139 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 80, area_id = 9 },
	{ config_id = 11002, monster_id = 23010301, pos = { x = 657.426, y = 201.075, z = 342.204 }, rot = { x = 0.000, y = 161.835, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 80, area_id = 9 },
	{ config_id = 11004, monster_id = 23010401, pos = { x = 661.601, y = 201.075, z = 339.224 }, rot = { x = 0.000, y = 242.778, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 80, area_id = 9 },
	{ config_id = 11006, monster_id = 23010501, pos = { x = 654.947, y = 201.124, z = 336.475 }, rot = { x = 0.000, y = 62.956, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 80, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 11011, gadget_id = 70710208, pos = { x = 658.728, y = 201.075, z = 337.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, persistent = true, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1011003, name = "TIMER_EVENT_11003", event = EventType.EVENT_TIMER_EVENT, source = "timer1", condition = "", action = "action_EVENT_TIMER_EVENT_11003" },
	{ config_id = 1011012, name = "GADGET_CREATE_11012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_11012", action = "action_EVENT_GADGET_CREATE_11012", trigger_count = 0 },
	{ config_id = 1011013, name = "SELECT_OPTION_11013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11013", action = "action_EVENT_SELECT_OPTION_11013", trigger_count = 0 },
	{ config_id = 1011014, name = "ANY_MONSTER_LIVE_11014", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_11014", action = "action_EVENT_ANY_MONSTER_LIVE_11014", trigger_count = 0 },
	{ config_id = 1011015, name = "MONSTER_TIDE_DIE_11015", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_11015", action = "action_EVENT_MONSTER_TIDE_DIE_11015", trigger_count = 0 },
	{ config_id = 1011016, name = "MONSTER_TIDE_DIE_11016", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_11016", action = "action_EVENT_MONSTER_TIDE_DIE_11016", trigger_count = 0 },
	{ config_id = 1011021, name = "SEAL_BATTLE_END_11021", event = EventType.EVENT_SEAL_BATTLE_END, source = "", condition = "condition_EVENT_SEAL_BATTLE_END_11021", action = "action_EVENT_SEAL_BATTLE_END_11021", trigger_count = 0 },
	{ config_id = 1011022, name = "SELECT_OPTION_11022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11022", action = "action_EVENT_SELECT_OPTION_11022", trigger_count = 0 }
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
		gadgets = { 11011 },
		regions = { },
		triggers = { "TIMER_EVENT_11003", "GADGET_CREATE_11012", "SELECT_OPTION_11013", "SEAL_BATTLE_END_11021", "SELECT_OPTION_11022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 11001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_11014", "MONSTER_TIDE_DIE_11015", "MONSTER_TIDE_DIE_11016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 11002, 11004, 11006 },
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
function action_EVENT_TIMER_EVENT_11003(context, evt)
	ScriptLib.KillEntityByConfigId(context, {group_id = defs.group_id, config_id = defs.gadget_id})
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, "timer1")
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_11012(context, evt)
	if 11011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_11012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 302001011, 11011, {189}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_11013(context, evt)
	if 11011 ~= evt.param1 then
		return false
	end
	
	-- 判断是gadgetid 11011 option_id 189
	if 11011 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_11013(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id, GadgetState.GearStart)
	
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	
	ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.gadget_id, 189)
	
	ScriptLib.AddQuestProgress(context, "3020010111")
	
	local ret = ScriptLib.StartSealBattle(context,defs.gadget_id, {radius = defs.radius, battle_time = defs.battle_time, monster_group_id = defs.group_id, default_kill_charge = 0, auto_charge = 0, auto_decline= defs.auto_decline, max_energy = defs.max_energy, battle_type = SealBattleType.ENERGY_CHARGE})
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_11014(context, evt)
	if 11001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_11014(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001011, {11002,11006}, 3, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_11015(context, evt)
	if 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_11015(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001011, {11002,11004,11006}, 3, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_11016(context, evt)
	if 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_11016(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少1只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001011, {11002,11004,11006}, 3, 1, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SEAL_BATTLE_END_11021(context, evt)
	if 11011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SEAL_BATTLE_END_11021(context, evt)
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
		ScriptLib.AddQuestProgress(context, "3020010112")
		ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "timer1", 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_11022(context, evt)
	if 11011 ~= evt.param1 then
		return false
	end
	
	-- 判断是gadgetid 11011 option_id 189
	if 11011 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_11022(context, evt)
	ScriptLib.SetGroupVariableValue(context, "isDone", 0)
	
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id, GadgetState.GearStart)
	
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	
	ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.gadget_id, 189)
	
	local ret = ScriptLib.StartSealBattle(context,defs.gadget_id, {radius = defs.radius, battle_time = defs.battle_time, monster_group_id = defs.group_id, default_kill_charge = 0, auto_charge = 0, auto_decline= defs.auto_decline, max_energy = defs.max_energy, battle_type = SealBattleType.ENERGY_CHARGE})
	
	return 0
end