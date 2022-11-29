-- 基础信息
local base_info = {
	group_id = 133304065
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
	{ config_id = 65001, gadget_id = 70350433, pos = { x = -1553.971, y = 257.150, z = 2366.607 }, rot = { x = 0.938, y = 337.658, z = 342.354 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 65002, gadget_id = 70350433, pos = { x = -1534.504, y = 247.181, z = 2310.487 }, rot = { x = 341.243, y = 343.958, z = 341.427 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 65008, gadget_id = 70350434, pos = { x = -1514.181, y = 240.719, z = 2338.608 }, rot = { x = 39.670, y = 89.477, z = 356.217 }, level = 30, persistent = true, area_id = 21 },
	-- 宝箱门
	{ config_id = 65012, gadget_id = 70350434, pos = { x = -1573.401, y = 262.485, z = 2344.868 }, rot = { x = 0.519, y = 105.098, z = 2.413 }, level = 30, persistent = true, area_id = 21 },
	-- 阅读物门
	{ config_id = 65013, gadget_id = 70350434, pos = { x = -1569.358, y = 259.664, z = 2320.912 }, rot = { x = 355.158, y = 58.967, z = 347.394 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1065003, name = "GROUP_LOAD_65003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_65003", action = "action_EVENT_GROUP_LOAD_65003", trigger_count = 0 },
	-- 左门关
	{ config_id = 1065004, name = "VARIABLE_CHANGE_65004", event = EventType.EVENT_VARIABLE_CHANGE, source = "left", condition = "condition_EVENT_VARIABLE_CHANGE_65004", action = "action_EVENT_VARIABLE_CHANGE_65004", trigger_count = 0 },
	-- 左门开
	{ config_id = 1065005, name = "VARIABLE_CHANGE_65005", event = EventType.EVENT_VARIABLE_CHANGE, source = "left", condition = "condition_EVENT_VARIABLE_CHANGE_65005", action = "action_EVENT_VARIABLE_CHANGE_65005", trigger_count = 0 },
	-- 右门关
	{ config_id = 1065006, name = "VARIABLE_CHANGE_65006", event = EventType.EVENT_VARIABLE_CHANGE, source = "right", condition = "condition_EVENT_VARIABLE_CHANGE_65006", action = "action_EVENT_VARIABLE_CHANGE_65006", trigger_count = 0 },
	-- 右门开
	{ config_id = 1065007, name = "VARIABLE_CHANGE_65007", event = EventType.EVENT_VARIABLE_CHANGE, source = "right", condition = "condition_EVENT_VARIABLE_CHANGE_65007", action = "action_EVENT_VARIABLE_CHANGE_65007", trigger_count = 0 },
	-- 中门关
	{ config_id = 1065009, name = "VARIABLE_CHANGE_65009", event = EventType.EVENT_VARIABLE_CHANGE, source = "mid", condition = "condition_EVENT_VARIABLE_CHANGE_65009", action = "action_EVENT_VARIABLE_CHANGE_65009", trigger_count = 0 },
	-- 中门开
	{ config_id = 1065010, name = "VARIABLE_CHANGE_65010", event = EventType.EVENT_VARIABLE_CHANGE, source = "mid", condition = "condition_EVENT_VARIABLE_CHANGE_65010", action = "action_EVENT_VARIABLE_CHANGE_65010", trigger_count = 0 },
	-- 去到endsuite(2)
	{ config_id = 1065011, name = "VARIABLE_CHANGE_65011", event = EventType.EVENT_VARIABLE_CHANGE, source = "finished", condition = "condition_EVENT_VARIABLE_CHANGE_65011", action = "action_EVENT_VARIABLE_CHANGE_65011", trigger_count = 0 },
	-- 宝箱门关
	{ config_id = 1065014, name = "VARIABLE_CHANGE_65014", event = EventType.EVENT_VARIABLE_CHANGE, source = "chestdoor", condition = "condition_EVENT_VARIABLE_CHANGE_65014", action = "action_EVENT_VARIABLE_CHANGE_65014", trigger_count = 0 },
	-- 宝箱门开
	{ config_id = 1065015, name = "VARIABLE_CHANGE_65015", event = EventType.EVENT_VARIABLE_CHANGE, source = "chestdoor", condition = "condition_EVENT_VARIABLE_CHANGE_65015", action = "action_EVENT_VARIABLE_CHANGE_65015", trigger_count = 0 },
	-- 阅读物门关
	{ config_id = 1065016, name = "VARIABLE_CHANGE_65016", event = EventType.EVENT_VARIABLE_CHANGE, source = "readdoor", condition = "condition_EVENT_VARIABLE_CHANGE_65016", action = "action_EVENT_VARIABLE_CHANGE_65016", trigger_count = 0 },
	-- 阅读物门开
	{ config_id = 1065017, name = "VARIABLE_CHANGE_65017", event = EventType.EVENT_VARIABLE_CHANGE, source = "readdoor", condition = "condition_EVENT_VARIABLE_CHANGE_65017", action = "action_EVENT_VARIABLE_CHANGE_65017", trigger_count = 0 },
	-- 重置
	{ config_id = 1065018, name = "GROUP_LOAD_65018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_65018", action = "action_EVENT_GROUP_LOAD_65018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finished", value = 0, no_refresh = true },
	{ config_id = 2, name = "left", value = 0, no_refresh = false },
	{ config_id = 3, name = "right", value = 0, no_refresh = false },
	{ config_id = 4, name = "mid", value = 0, no_refresh = false },
	{ config_id = 5, name = "chestdoor", value = 0, no_refresh = false },
	{ config_id = 6, name = "readdoor", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 65001, 65002, 65008, 65012, 65013 },
		regions = { },
		triggers = { "GROUP_LOAD_65003", "VARIABLE_CHANGE_65004", "VARIABLE_CHANGE_65005", "VARIABLE_CHANGE_65006", "VARIABLE_CHANGE_65007", "VARIABLE_CHANGE_65009", "VARIABLE_CHANGE_65010", "VARIABLE_CHANGE_65011", "VARIABLE_CHANGE_65014", "VARIABLE_CHANGE_65015", "VARIABLE_CHANGE_65016", "VARIABLE_CHANGE_65017", "GROUP_LOAD_65018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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
function condition_EVENT_GROUP_LOAD_65003(context, evt)
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_65003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304065, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_65004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"left"为0
	if ScriptLib.GetGroupVariableValue(context, "left") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_65004(context, evt)
	-- 将configid为 65001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_65005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"left"为1
	if ScriptLib.GetGroupVariableValue(context, "left") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_65005(context, evt)
	-- 将configid为 65001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_65006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"right"为0
	if ScriptLib.GetGroupVariableValue(context, "right") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_65006(context, evt)
	-- 将configid为 65002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_65007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"right"为1
	if ScriptLib.GetGroupVariableValue(context, "right") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_65007(context, evt)
	-- 将configid为 65002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_65009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"mid"为0
	if ScriptLib.GetGroupVariableValue(context, "mid") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_65009(context, evt)
	-- 将configid为 65008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_65010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"mid"为1
	if ScriptLib.GetGroupVariableValue(context, "mid") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_65010(context, evt)
	-- 将configid为 65008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_65011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_65011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304065, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_65014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chestdoor"为0
	if ScriptLib.GetGroupVariableValue(context, "chestdoor") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_65014(context, evt)
	-- 将configid为 65012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_65015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chestdoor"为1
	if ScriptLib.GetGroupVariableValue(context, "chestdoor") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_65015(context, evt)
	-- 将configid为 65012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_65016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"readdoor"为0
	if ScriptLib.GetGroupVariableValue(context, "readdoor") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_65016(context, evt)
	-- 将configid为 65013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_65017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"readdoor"为1
	if ScriptLib.GetGroupVariableValue(context, "readdoor") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_65017(context, evt)
	-- 将configid为 65013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_65018(context, evt)
	-- 判断变量"finished"为0
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_65018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304065, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end