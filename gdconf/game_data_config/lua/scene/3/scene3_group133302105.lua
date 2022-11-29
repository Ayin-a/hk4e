-- 基础信息
local base_info = {
	group_id = 133302105
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
	{ config_id = 105001, gadget_id = 71700109, pos = { x = -553.722, y = 200.525, z = 2800.023 }, rot = { x = 0.000, y = 271.300, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 105002, gadget_id = 71700109, pos = { x = -553.770, y = 200.525, z = 2801.999 }, rot = { x = 0.000, y = 274.351, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 105003, gadget_id = 71700109, pos = { x = -553.780, y = 200.525, z = 2798.061 }, rot = { x = 0.000, y = 272.432, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 105004, gadget_id = 71700109, pos = { x = -548.517, y = 200.525, z = 2791.778 }, rot = { x = 0.000, y = 273.228, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 105005, gadget_id = 71700109, pos = { x = -548.443, y = 200.525, z = 2793.648 }, rot = { x = 0.000, y = 273.998, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 105006, gadget_id = 71700523, pos = { x = -553.652, y = 200.525, z = 2800.114 }, rot = { x = 0.000, y = 8.493, z = 0.000 }, level = 26, chest_drop_id = 1050216, drop_count = 1, area_id = 24 },
	{ config_id = 105007, gadget_id = 71700523, pos = { x = -553.625, y = 200.525, z = 2801.960 }, rot = { x = 0.000, y = 232.184, z = 0.000 }, level = 26, chest_drop_id = 1050216, drop_count = 1, area_id = 24 },
	{ config_id = 105008, gadget_id = 71700523, pos = { x = -553.838, y = 200.525, z = 2797.947 }, rot = { x = 0.000, y = 328.508, z = 0.000 }, level = 26, chest_drop_id = 1050216, drop_count = 1, area_id = 24 },
	{ config_id = 105009, gadget_id = 71700523, pos = { x = -548.468, y = 200.525, z = 2791.701 }, rot = { x = 0.000, y = 345.485, z = 0.000 }, level = 26, chest_drop_id = 1050216, drop_count = 1, area_id = 24 },
	{ config_id = 105010, gadget_id = 71700523, pos = { x = -548.644, y = 200.525, z = 2793.691 }, rot = { x = 0.000, y = 9.132, z = 0.000 }, level = 26, chest_drop_id = 1050216, drop_count = 1, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1105011, name = "GADGET_STATE_CHANGE_105011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_105011", action = "action_EVENT_GADGET_STATE_CHANGE_105011" },
	{ config_id = 1105012, name = "GADGET_STATE_CHANGE_105012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_105012", action = "action_EVENT_GADGET_STATE_CHANGE_105012" },
	{ config_id = 1105013, name = "GADGET_STATE_CHANGE_105013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_105013", action = "action_EVENT_GADGET_STATE_CHANGE_105013" },
	{ config_id = 1105014, name = "GADGET_STATE_CHANGE_105014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_105014", action = "action_EVENT_GADGET_STATE_CHANGE_105014" },
	{ config_id = 1105015, name = "GADGET_STATE_CHANGE_105015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_105015", action = "action_EVENT_GADGET_STATE_CHANGE_105015" }
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
		gadgets = { 105001, 105002, 105003, 105004, 105005, 105006, 105007, 105008, 105009, 105010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_105011", "GADGET_STATE_CHANGE_105012", "GADGET_STATE_CHANGE_105013", "GADGET_STATE_CHANGE_105014", "GADGET_STATE_CHANGE_105015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_105011(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133302105, 105006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_105011(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302105, EntityType.GADGET, 105001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_105012(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133302105, 105007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_105012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302105, EntityType.GADGET, 105002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_105013(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133302105, 105008) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_105013(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302105, EntityType.GADGET, 105003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_105014(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133302105, 105009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_105014(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302105, EntityType.GADGET, 105004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_105015(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133302105, 105010) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_105015(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302105, EntityType.GADGET, 105005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end