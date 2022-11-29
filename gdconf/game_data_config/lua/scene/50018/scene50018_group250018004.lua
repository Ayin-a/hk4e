-- 基础信息
local base_info = {
	group_id = 250018004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4004, monster_id = 21011201, pos = { x = 3.430, y = 0.002, z = -6.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4005, monster_id = 21011201, pos = { x = -4.126, y = 0.002, z = -5.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4006, monster_id = 21011201, pos = { x = -0.024, y = 0.002, z = 6.071 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4001, gadget_id = 70950008, pos = { x = -0.015, y = 0.000, z = -0.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004002, name = "GADGET_CREATE_4002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4002", action = "action_EVENT_GADGET_CREATE_4002" },
	{ config_id = 1004003, name = "SELECT_OPTION_4003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4003", action = "action_EVENT_SELECT_OPTION_4003" },
	{ config_id = 1004007, name = "SEAL_BATTLE_END_4007", event = EventType.EVENT_SEAL_BATTLE_END, source = "", condition = "condition_EVENT_SEAL_BATTLE_END_4007", action = "action_EVENT_SEAL_BATTLE_END_4007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "seal_battle_done", value = 0, no_refresh = false }
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
		gadgets = { 4001 },
		regions = { },
		triggers = { "GADGET_CREATE_4002", "SELECT_OPTION_4003", "SEAL_BATTLE_END_4007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4004, 4005, 4006 },
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

-- 触发条件
function condition_EVENT_GADGET_CREATE_4002(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250018004, 4001, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4003(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	-- 判断是gadgetid 4001 option_id 24
	if 4001 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4003(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearStart)
	ScriptLib.AddExtraGroupSuite(context, 250018004, 2)
	ScriptLib.StartSealBattle(context, 4001, {radius = 15, kill_time = 120, monster_group_id = 250018004, max_progress = 3, battle_type = SealBattleType.KILL_MONSTER})
	ScriptLib.DelWorktopOption(context, evt.param2)
	return 0
end

-- 触发条件
function condition_EVENT_SEAL_BATTLE_END_4007(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SEAL_BATTLE_END_4007(context, evt)
	if evt.param2 == 0 then
		ScriptLib.RemoveExtraGroupSuite(context, 250018004, 2)
		ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearStart)
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
		ScriptLib.SetWorktopOptionsByGroupId(context, 250018004, 4001, {24})
	elseif evt.param2 == 1 then
		ScriptLib.SetGroupVariableValue(context, "seal_battle_done", 1)
		ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.Default)
	end
	return 0
end