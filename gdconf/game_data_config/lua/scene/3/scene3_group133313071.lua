-- 基础信息
local base_info = {
	group_id = 133313071
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
	-- 1号门（3口）
	{ config_id = 71001, gadget_id = 70350434, pos = { x = -883.634, y = -32.045, z = 5801.243 }, rot = { x = 343.346, y = 132.089, z = 338.297 }, level = 32, persistent = true, area_id = 32 },
	-- 2号门（2口）
	{ config_id = 71002, gadget_id = 70350434, pos = { x = -895.570, y = -36.956, z = 5821.396 }, rot = { x = 356.433, y = 165.491, z = 331.147 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1071003, name = "GROUP_LOAD_71003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_71003", action = "action_EVENT_GROUP_LOAD_71003", trigger_count = 0 },
	-- 门1关
	{ config_id = 1071004, name = "VARIABLE_CHANGE_71004", event = EventType.EVENT_VARIABLE_CHANGE, source = "door1", condition = "condition_EVENT_VARIABLE_CHANGE_71004", action = "action_EVENT_VARIABLE_CHANGE_71004", trigger_count = 0 },
	-- 门1开
	{ config_id = 1071005, name = "VARIABLE_CHANGE_71005", event = EventType.EVENT_VARIABLE_CHANGE, source = "door1", condition = "condition_EVENT_VARIABLE_CHANGE_71005", action = "action_EVENT_VARIABLE_CHANGE_71005", trigger_count = 0 },
	-- 门2关
	{ config_id = 1071006, name = "VARIABLE_CHANGE_71006", event = EventType.EVENT_VARIABLE_CHANGE, source = "door2", condition = "condition_EVENT_VARIABLE_CHANGE_71006", action = "action_EVENT_VARIABLE_CHANGE_71006", trigger_count = 0 },
	-- 门2开
	{ config_id = 1071007, name = "VARIABLE_CHANGE_71007", event = EventType.EVENT_VARIABLE_CHANGE, source = "door2", condition = "condition_EVENT_VARIABLE_CHANGE_71007", action = "action_EVENT_VARIABLE_CHANGE_71007", trigger_count = 0 },
	-- 去到endsuite(2)
	{ config_id = 1071008, name = "VARIABLE_CHANGE_71008", event = EventType.EVENT_VARIABLE_CHANGE, source = "finished", condition = "condition_EVENT_VARIABLE_CHANGE_71008", action = "action_EVENT_VARIABLE_CHANGE_71008", trigger_count = 0 },
	-- 重置
	{ config_id = 1071009, name = "GROUP_LOAD_71009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_71009", action = "action_EVENT_GROUP_LOAD_71009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "door1", value = 0, no_refresh = false },
	{ config_id = 2, name = "door2", value = 0, no_refresh = false },
	{ config_id = 3, name = "finish", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 2,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 71001, state = 0 },
			{ config_id = 71002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GROUP_LOAD_71003", "VARIABLE_CHANGE_71004", "VARIABLE_CHANGE_71005", "VARIABLE_CHANGE_71006", "VARIABLE_CHANGE_71007", "VARIABLE_CHANGE_71008", "GROUP_LOAD_71009" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "door1", value = 0, no_refresh = false },
			{ config_id = 2, name = "door2", value = 0, no_refresh = false },
			{ config_id = 3, name = "finish", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 71001, state = 201 },
			{ config_id = 71002, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "door1", value = 1, no_refresh = false },
			{ config_id = 2, name = "door2", value = 1, no_refresh = false },
			{ config_id = 3, name = "finish", value = 1, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "door1", value = 0, no_refresh = false },
			{ config_id = 2, name = "door2", value = 0, no_refresh = false },
			{ config_id = 3, name = "finish", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_71003(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_71003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133313071, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_71004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"door1"为0
	if ScriptLib.GetGroupVariableValue(context, "door1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_71004(context, evt)
	-- 将configid为 71001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 71001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_71005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"door1"为1
	if ScriptLib.GetGroupVariableValue(context, "door1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_71005(context, evt)
	-- 将configid为 71001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 71001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_71006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"door2"为0
	if ScriptLib.GetGroupVariableValue(context, "door2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_71006(context, evt)
	-- 将configid为 71002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 71002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_71007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"door2"为1
	if ScriptLib.GetGroupVariableValue(context, "door2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_71007(context, evt)
	-- 将configid为 71002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 71002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_71008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_71008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133313071, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_71009(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_71009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133313071, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end