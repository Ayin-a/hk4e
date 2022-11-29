-- 基础信息
local base_info = {
	group_id = 220129014
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
	{ config_id = 14001, gadget_id = 70800135, pos = { x = 302.975, y = 205.439, z = 721.333 }, rot = { x = 0.000, y = 85.683, z = 0.000 }, level = 1 },
	{ config_id = 14002, gadget_id = 70800136, pos = { x = 302.800, y = 205.424, z = 491.802 }, rot = { x = 0.000, y = 92.182, z = 0.000 }, level = 1 },
	{ config_id = 14003, gadget_id = 70800137, pos = { x = 302.991, y = 205.469, z = 269.913 }, rot = { x = 0.000, y = 86.138, z = 0.000 }, level = 1 },
	{ config_id = 14004, gadget_id = 70800138, pos = { x = 302.847, y = 205.428, z = 68.287 }, rot = { x = 0.000, y = 91.963, z = 0.000 }, level = 1 },
	{ config_id = 14005, gadget_id = 70800139, pos = { x = -457.264, y = -47.164, z = 974.000 }, rot = { x = 0.000, y = 85.077, z = 0.000 }, level = 1 },
	{ config_id = 14006, gadget_id = 70800159, pos = { x = -458.293, y = -1.921, z = -75.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 14007, shape = RegionShape.CUBIC, size = { x = 400.000, y = 400.000, z = 1200.000 }, pos = { x = 331.334, y = 200.072, z = 491.685 } },
	{ config_id = 14013, shape = RegionShape.SPHERE, radius = 100, pos = { x = -373.185, y = -29.190, z = 977.199 } },
	{ config_id = 14014, shape = RegionShape.SPHERE, radius = 200, pos = { x = -456.181, y = -0.195, z = -51.985 } }
}

-- 触发器
triggers = {
	{ config_id = 1014007, name = "ENTER_REGION_14007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14007", action = "action_EVENT_ENTER_REGION_14007", trigger_count = 0 },
	{ config_id = 1014013, name = "ENTER_REGION_14013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14013", action = "action_EVENT_ENTER_REGION_14013", trigger_count = 0 },
	{ config_id = 1014014, name = "ENTER_REGION_14014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14014", action = "action_EVENT_ENTER_REGION_14014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "time", value = 2, no_refresh = true },
	{ config_id = 2, name = "min_time", value = 2, no_refresh = true },
	{ config_id = 3, name = "max_time", value = 3, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 14012, shape = RegionShape.CUBIC, size = { x = 300.000, y = 400.000, z = 1000.000 }, pos = { x = 331.414, y = 290.277, z = 491.542 } }
	},
	triggers = {
		{ config_id = 1014008, name = "VARIABLE_CHANGE_14008", event = EventType.EVENT_VARIABLE_CHANGE, source = "time", condition = "condition_EVENT_VARIABLE_CHANGE_14008", action = "action_EVENT_VARIABLE_CHANGE_14008", trigger_count = 0 },
		{ config_id = 1014009, name = "VARIABLE_CHANGE_14009", event = EventType.EVENT_VARIABLE_CHANGE, source = "time", condition = "condition_EVENT_VARIABLE_CHANGE_14009", action = "action_EVENT_VARIABLE_CHANGE_14009", trigger_count = 0 },
		{ config_id = 1014010, name = "VARIABLE_CHANGE_14010", event = EventType.EVENT_VARIABLE_CHANGE, source = "time", condition = "condition_EVENT_VARIABLE_CHANGE_14010", action = "action_EVENT_VARIABLE_CHANGE_14010", trigger_count = 0 },
		{ config_id = 1014011, name = "VARIABLE_CHANGE_14011", event = EventType.EVENT_VARIABLE_CHANGE, source = "time", condition = "condition_EVENT_VARIABLE_CHANGE_14011", action = "action_EVENT_VARIABLE_CHANGE_14011", trigger_count = 0 },
		{ config_id = 1014012, name = "ENTER_REGION_14012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14012", action = "action_EVENT_ENTER_REGION_14012", trigger_count = 0 }
	}
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
		gadgets = { },
		regions = { 14007, 14013, 14014 },
		triggers = { "ENTER_REGION_14007", "ENTER_REGION_14013", "ENTER_REGION_14014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 14001, 14002, 14003, 14004, 14006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 14005 },
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
function condition_EVENT_ENTER_REGION_14007(context, evt)
	if evt.param1 ~= 14007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14007(context, evt)
	ScriptLib.RemoveExtraGroupSuite(context, 220129014, 2)
	ScriptLib.CreateGadget(context, { config_id = 14005 })
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14013(context, evt)
	if evt.param1 ~= 14013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14013(context, evt)
	
	
	ScriptLib.RemoveExtraGroupSuite(context, 220129016, 2)
	ScriptLib.RemoveExtraGroupSuite(context, 220129017, 2)
	ScriptLib.RemoveExtraGroupSuite(context, 220129018, 2)
	ScriptLib.RemoveExtraGroupSuite(context, 220129019, 2)
	
	ScriptLib.RemoveExtraGroupSuite(context, 220129016, 3)
	ScriptLib.RemoveExtraGroupSuite(context, 220129017, 3)
	ScriptLib.RemoveExtraGroupSuite(context, 220129018, 3)
	ScriptLib.RemoveExtraGroupSuite(context, 220129019, 3)
	ScriptLib.RemoveExtraGroupSuite(context, 220129011, 3)
	
	ScriptLib.RemoveExtraGroupSuite(context, 220129020, 2)
	-- 判断变量"time"为5
	if ScriptLib.GetGroupVariableValue(context, "time") == 1 then
	  ScriptLib.RemoveExtraGroupSuite(context, 220129014, 3)
	  ScriptLib.CreateGadget(context, { config_id = 14001 })
	  ScriptLib.AddExtraGroupSuite(context, 220129016, 3)
	  ScriptLib.SetGroupGadgetStateByConfigId(context, 220129020, 20007, GadgetState.ChestLocked)
	end
	
	-- 判断变量"time"为5
	if ScriptLib.GetGroupVariableValue(context, "time") == 2 then
	  ScriptLib.RemoveExtraGroupSuite(context, 220129014, 3)
	  ScriptLib.CreateGadget(context, { config_id = 14002 })
	  ScriptLib.AddExtraGroupSuite(context, 220129017, 3)
	  ScriptLib.SetGroupGadgetStateByConfigId(context, 220129020, 20007, GadgetState.ChestOpened)
	end
	
	-- 判断变量"time"为5
	if ScriptLib.GetGroupVariableValue(context, "time") == 3 then
	  ScriptLib.RemoveExtraGroupSuite(context, 220129014, 3)
	  ScriptLib.CreateGadget(context, { config_id = 14003 })
	  ScriptLib.AddExtraGroupSuite(context, 220129018, 3)
	  ScriptLib.SetGroupGadgetStateByConfigId(context, 220129020, 20007, GadgetState.ChestTrap)
	end
	
	-- 判断变量"time"为5
	if ScriptLib.GetGroupVariableValue(context, "time") == 4 then
	  ScriptLib.RemoveExtraGroupSuite(context, 220129014, 3)
	  ScriptLib.CreateGadget(context, { config_id = 14004 })
	  ScriptLib.AddExtraGroupSuite(context, 220129019, 3)
	  ScriptLib.SetGroupGadgetStateByConfigId(context, 220129020, 20007, GadgetState.ChestBramble)
	end
	
	-- 判断变量"time"为5
	if ScriptLib.GetGroupVariableValue(context, "time") == 5 then
	  ScriptLib.RemoveExtraGroupSuite(context, 220129014, 3)
	  ScriptLib.CreateGadget(context, { config_id = 14006 })
	  ScriptLib.AddExtraGroupSuite(context, 220129016, 3)
	  ScriptLib.SetGroupGadgetStateByConfigId(context, 220129020, 20007, GadgetState.ChestFrozen)
	end
	
	return 0
	
	
	
	
	
	
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14014(context, evt)
	if evt.param1 ~= 14014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14014(context, evt)
	ScriptLib.RemoveExtraGroupSuite(context, 220129014, 2)
	ScriptLib.CreateGadget(context, { config_id = 14005 })
	
	return 0
end