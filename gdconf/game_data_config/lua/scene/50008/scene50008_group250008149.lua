-- 基础信息
local base_info = {
	group_id = 250008149
}

-- Trigger变量
local defs = {
	gadget_door_1 = 149001,
	gadget_door_2 = 149002,
	gadget_door_3 = 149003,
	gadget_door_4 = 149004,
	group_id = 250008149
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
	{ config_id = 149001, gadget_id = 70350004, pos = { x = 80.268, y = 3.770, z = -209.131 }, rot = { x = 0.000, y = 90.000, z = 180.000 }, level = 1 },
	{ config_id = 149002, gadget_id = 70350004, pos = { x = 87.058, y = 3.770, z = -209.131 }, rot = { x = 0.000, y = 90.000, z = 180.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 149003, gadget_id = 70350004, pos = { x = 94.443, y = 3.770, z = -209.131 }, rot = { x = 0.000, y = 90.000, z = 180.000 }, level = 1 },
	{ config_id = 149004, gadget_id = 70350004, pos = { x = 102.176, y = 3.770, z = -209.131 }, rot = { x = 0.000, y = 90.000, z = 180.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 149005, gadget_id = 70211121, pos = { x = 105.898, y = 3.500, z = -209.477 }, rot = { x = 0.000, y = 271.084, z = 0.000 }, level = 1, drop_tag = "解谜高级蒙德", isOneoff = true, persistent = true },
	{ config_id = 149006, gadget_id = 70360002, pos = { x = 80.354, y = 3.500, z = -216.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 149007, gadget_id = 70360002, pos = { x = 87.068, y = 3.500, z = -216.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 149008, gadget_id = 70360002, pos = { x = 94.374, y = 3.500, z = -216.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 149009, gadget_id = 70360002, pos = { x = 102.075, y = 3.500, z = -216.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1149010, name = "GADGET_CREATE_149010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_149010", action = "action_EVENT_GADGET_CREATE_149010", trigger_count = 0 },
	{ config_id = 1149011, name = "GADGET_CREATE_149011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_149011", action = "action_EVENT_GADGET_CREATE_149011", trigger_count = 0 },
	{ config_id = 1149012, name = "GADGET_CREATE_149012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_149012", action = "action_EVENT_GADGET_CREATE_149012", trigger_count = 0 },
	{ config_id = 1149013, name = "GADGET_CREATE_149013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_149013", action = "action_EVENT_GADGET_CREATE_149013", trigger_count = 0 },
	{ config_id = 1149014, name = "SELECT_OPTION_149014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_149014", action = "action_EVENT_SELECT_OPTION_149014", trigger_count = 0 },
	{ config_id = 1149015, name = "SELECT_OPTION_149015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_149015", action = "action_EVENT_SELECT_OPTION_149015", trigger_count = 0 },
	{ config_id = 1149016, name = "SELECT_OPTION_149016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_149016", action = "action_EVENT_SELECT_OPTION_149016", trigger_count = 0 },
	{ config_id = 1149017, name = "SELECT_OPTION_149017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_149017", action = "action_EVENT_SELECT_OPTION_149017", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 149001, 149002, 149003, 149004, 149005, 149006, 149007, 149008, 149009 },
		regions = { },
		triggers = { "GADGET_CREATE_149010", "GADGET_CREATE_149011", "GADGET_CREATE_149012", "GADGET_CREATE_149013", "SELECT_OPTION_149014", "SELECT_OPTION_149015", "SELECT_OPTION_149016", "SELECT_OPTION_149017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_149010(context, evt)
	if 149006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_149010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_149011(context, evt)
	if 149007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_149011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_149012(context, evt)
	if 149008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_149012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_149013(context, evt)
	if 149009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_149013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_149014(context, evt)
	if 149006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_149014(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door_1) == GadgetState.Default then
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door_1, GadgetState.GearStart)
	
	elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door_1) == GadgetState.GearStart then
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door_1, GadgetState.Default)
	
	end
	
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door_2) == GadgetState.Default then
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door_2, GadgetState.GearStart)
	
	elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door_2) == GadgetState.GearStart then
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door_2, GadgetState.Default)
	
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_149015(context, evt)
	if 149007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_149015(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door_1) == GadgetState.Default then
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door_1, GadgetState.GearStart)
	
	elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door_1) == GadgetState.GearStart then
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door_1, GadgetState.Default)
	
	end
	
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door_2) == GadgetState.Default then
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door_2, GadgetState.GearStart)
	
	elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door_2) == GadgetState.GearStart then
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door_2, GadgetState.Default)
	
	end 
	
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door_3) == GadgetState.Default then
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door_3, GadgetState.GearStart)
	
	elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door_3) == GadgetState.GearStart then
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door_3, GadgetState.Default)
	
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_149016(context, evt)
	if 149008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_149016(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door_4) == GadgetState.Default then
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door_4, GadgetState.GearStart)
	
	elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door_4) == GadgetState.GearStart then
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door_4, GadgetState.Default)
	
	end
	
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door_2) == GadgetState.Default then
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door_2, GadgetState.GearStart)
	
	elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door_2) == GadgetState.GearStart then
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door_2, GadgetState.Default)
	
	end 
	
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door_3) == GadgetState.Default then
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door_3, GadgetState.GearStart)
	
	elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door_3) == GadgetState.GearStart then
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door_3, GadgetState.Default)
	
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_149017(context, evt)
	if 149009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_149017(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door_3) == GadgetState.Default then
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door_3, GadgetState.GearStart)
	
	elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door_3) == GadgetState.GearStart then
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door_3, GadgetState.Default)
	
	end 
	
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door_4) == GadgetState.Default then
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door_4, GadgetState.GearStart)
	
	elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door_4) == GadgetState.GearStart then
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door_4, GadgetState.Default)
	
	end 
	
	return 0
end