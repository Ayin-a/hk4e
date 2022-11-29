-- 基础信息
local base_info = {
	group_id = 302001018
}

-- Trigger变量
local defs = {
	radius = 10,
	group_id = 302001018,
	gadget_id = 18011,
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
	{ config_id = 18001, monster_id = 25010201, pos = { x = 1891.579, y = 221.018, z = 575.130 }, rot = { x = 0.000, y = 338.761, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 5 },
	{ config_id = 18002, monster_id = 25010201, pos = { x = 1885.090, y = 219.861, z = 580.203 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 5 },
	{ config_id = 18003, monster_id = 25010201, pos = { x = 1893.779, y = 221.098, z = 579.401 }, rot = { x = 0.000, y = 262.273, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 5 },
	{ config_id = 18004, monster_id = 25010201, pos = { x = 1891.617, y = 220.580, z = 583.506 }, rot = { x = 0.000, y = 194.444, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 5 },
	{ config_id = 18008, monster_id = 25060101, pos = { x = 1893.264, y = 221.139, z = 577.309 }, rot = { x = 0.000, y = 306.109, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 60, area_id = 5 },
	{ config_id = 18009, monster_id = 25070101, pos = { x = 1887.196, y = 220.360, z = 576.295 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 60, area_id = 5 },
	{ config_id = 18010, monster_id = 25030201, pos = { x = 1887.964, y = 220.128, z = 582.582 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 60, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 18011, gadget_id = 70710208, pos = { x = 1890.326, y = 220.622, z = 579.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, persistent = true, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1018005, name = "TIMER_EVENT_18005", event = EventType.EVENT_TIMER_EVENT, source = "timer1", condition = "", action = "action_EVENT_TIMER_EVENT_18005" },
	{ config_id = 1018012, name = "GADGET_CREATE_18012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_18012", action = "action_EVENT_GADGET_CREATE_18012", trigger_count = 0 },
	{ config_id = 1018013, name = "SELECT_OPTION_18013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_18013", action = "action_EVENT_SELECT_OPTION_18013", trigger_count = 0 },
	{ config_id = 1018014, name = "ANY_MONSTER_LIVE_18014", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_18014", action = "action_EVENT_ANY_MONSTER_LIVE_18014", trigger_count = 0 },
	{ config_id = 1018015, name = "MONSTER_TIDE_DIE_18015", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_18015", action = "action_EVENT_MONSTER_TIDE_DIE_18015", trigger_count = 0 },
	{ config_id = 1018016, name = "MONSTER_TIDE_DIE_18016", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_18016", action = "action_EVENT_MONSTER_TIDE_DIE_18016", trigger_count = 0 },
	{ config_id = 1018021, name = "SEAL_BATTLE_END_18021", event = EventType.EVENT_SEAL_BATTLE_END, source = "", condition = "condition_EVENT_SEAL_BATTLE_END_18021", action = "action_EVENT_SEAL_BATTLE_END_18021", trigger_count = 0 },
	{ config_id = 1018022, name = "SELECT_OPTION_18022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_18022", action = "action_EVENT_SELECT_OPTION_18022", trigger_count = 0 }
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
		gadgets = { 18011 },
		regions = { },
		triggers = { "TIMER_EVENT_18005", "GADGET_CREATE_18012", "SELECT_OPTION_18013", "SEAL_BATTLE_END_18021", "SELECT_OPTION_18022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 18001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_18014", "MONSTER_TIDE_DIE_18015", "MONSTER_TIDE_DIE_18016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 18002, 18003, 18004, 18008, 18009, 18010 },
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
function action_EVENT_TIMER_EVENT_18005(context, evt)
	ScriptLib.KillEntityByConfigId(context, {group_id = defs.group_id, config_id = defs.gadget_id})
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, "timer1")
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_18012(context, evt)
	if 18011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_18012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 302001018, 18011, {189}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_18013(context, evt)
	if 18011 ~= evt.param1 then
		return false
	end
	
	-- 判断是gadgetid 18011 option_id 189
	if 18011 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_18013(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id, GadgetState.GearStart)
	
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	
	ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.gadget_id, 189)
	
	local ret = ScriptLib.StartSealBattle(context,defs.gadget_id, {radius = defs.radius, battle_time = defs.battle_time, monster_group_id = defs.group_id, default_kill_charge = 0, auto_charge = 0, auto_decline= defs.auto_decline, max_energy = defs.max_energy, battle_type = SealBattleType.ENERGY_CHARGE})
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_18014(context, evt)
	if 18001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_18014(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001018, {18002,18003}, 3, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_18015(context, evt)
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
function action_EVENT_MONSTER_TIDE_DIE_18015(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少1只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001018, {18008,18009,18010}, 3, 1, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_18016(context, evt)
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
function action_EVENT_MONSTER_TIDE_DIE_18016(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少1只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001018, {18002,18003,18004}, 3, 1, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SEAL_BATTLE_END_18021(context, evt)
	if 18011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SEAL_BATTLE_END_18021(context, evt)
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
		ScriptLib.AddQuestProgress(context, "302001018")
		ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "timer1", 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_18022(context, evt)
	if 18011 ~= evt.param1 then
		return false
	end
	
	-- 判断是gadgetid 18011 option_id 189
	if 18011 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_18022(context, evt)
	ScriptLib.SetGroupVariableValue(context, "isDone", 0)
	
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id, GadgetState.GearStart)
	
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	
	ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.gadget_id, 189)
	
	local ret = ScriptLib.StartSealBattle(context,defs.gadget_id, {radius = defs.radius, battle_time = defs.battle_time, monster_group_id = defs.group_id, default_kill_charge = 0, auto_charge = 0, auto_decline= defs.auto_decline, max_energy = defs.max_energy, battle_type = SealBattleType.ENERGY_CHARGE})
	
	return 0
end