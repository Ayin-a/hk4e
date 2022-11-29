-- 基础信息
local base_info = {
	group_id = 133304082
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
	{ config_id = 82001, gadget_id = 70350434, pos = { x = -1537.686, y = 273.746, z = 2374.523 }, rot = { x = 340.225, y = 266.690, z = 3.960 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 82006, gadget_id = 70350434, pos = { x = -1558.623, y = 280.917, z = 2366.057 }, rot = { x = 13.508, y = 49.143, z = 344.904 }, level = 30, persistent = true, area_id = 21 },
	-- 右边宝箱门
	{ config_id = 82009, gadget_id = 70350434, pos = { x = -1536.642, y = 269.426, z = 2300.443 }, rot = { x = 19.771, y = 86.622, z = 356.017 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1082002, name = "VARIABLE_CHANGE_82002", event = EventType.EVENT_VARIABLE_CHANGE, source = "finished", condition = "condition_EVENT_VARIABLE_CHANGE_82002", action = "action_EVENT_VARIABLE_CHANGE_82002", trigger_count = 0 },
	{ config_id = 1082003, name = "GROUP_LOAD_82003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_82003", action = "action_EVENT_GROUP_LOAD_82003", trigger_count = 0 },
	{ config_id = 1082004, name = "VARIABLE_CHANGE_82004", event = EventType.EVENT_VARIABLE_CHANGE, source = "left1", condition = "condition_EVENT_VARIABLE_CHANGE_82004", action = "action_EVENT_VARIABLE_CHANGE_82004", trigger_count = 0 },
	{ config_id = 1082005, name = "VARIABLE_CHANGE_82005", event = EventType.EVENT_VARIABLE_CHANGE, source = "left1", condition = "condition_EVENT_VARIABLE_CHANGE_82005", action = "action_EVENT_VARIABLE_CHANGE_82005", trigger_count = 0 },
	-- 阅读物门
	{ config_id = 1082007, name = "VARIABLE_CHANGE_82007", event = EventType.EVENT_VARIABLE_CHANGE, source = "left2", condition = "condition_EVENT_VARIABLE_CHANGE_82007", action = "action_EVENT_VARIABLE_CHANGE_82007", trigger_count = 0 },
	-- 阅读物门
	{ config_id = 1082008, name = "VARIABLE_CHANGE_82008", event = EventType.EVENT_VARIABLE_CHANGE, source = "left2", condition = "condition_EVENT_VARIABLE_CHANGE_82008", action = "action_EVENT_VARIABLE_CHANGE_82008", trigger_count = 0 },
	-- 右边宝箱门
	{ config_id = 1082010, name = "VARIABLE_CHANGE_82010", event = EventType.EVENT_VARIABLE_CHANGE, source = "right", condition = "condition_EVENT_VARIABLE_CHANGE_82010", action = "action_EVENT_VARIABLE_CHANGE_82010", trigger_count = 0 },
	-- 右边宝箱门
	{ config_id = 1082011, name = "VARIABLE_CHANGE_82011", event = EventType.EVENT_VARIABLE_CHANGE, source = "right", condition = "condition_EVENT_VARIABLE_CHANGE_82011", action = "action_EVENT_VARIABLE_CHANGE_82011", trigger_count = 0 },
	{ config_id = 1082012, name = "GROUP_LOAD_82012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_82012", action = "action_EVENT_GROUP_LOAD_82012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "finished", value = 0, no_refresh = true },
	{ config_id = 3, name = "left1", value = 0, no_refresh = false },
	{ config_id = 4, name = "left2", value = 0, no_refresh = false },
	{ config_id = 5, name = "right", value = 0, no_refresh = false }
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
		gadgets = { 82001, 82006, 82009 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_82002", "GROUP_LOAD_82003", "VARIABLE_CHANGE_82004", "VARIABLE_CHANGE_82005", "VARIABLE_CHANGE_82007", "VARIABLE_CHANGE_82008", "VARIABLE_CHANGE_82010", "VARIABLE_CHANGE_82011", "GROUP_LOAD_82012" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_82002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_82002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304082, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_82003(context, evt)
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_82003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304082, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_82004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"left1"为1
	if ScriptLib.GetGroupVariableValue(context, "left1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_82004(context, evt)
	-- 将configid为 82001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 82001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_82005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"left1"为0
	if ScriptLib.GetGroupVariableValue(context, "left1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_82005(context, evt)
	-- 将configid为 82001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 82001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_82007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"left2"为1
	if ScriptLib.GetGroupVariableValue(context, "left2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_82007(context, evt)
	-- 将configid为 82006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 82006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_82008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"left2"为0
	if ScriptLib.GetGroupVariableValue(context, "left2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_82008(context, evt)
	-- 将configid为 82006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 82006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_82010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"right"为1
	if ScriptLib.GetGroupVariableValue(context, "right") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_82010(context, evt)
	-- 将configid为 82009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 82009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_82011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"right"为0
	if ScriptLib.GetGroupVariableValue(context, "right") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_82011(context, evt)
	-- 将configid为 82009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 82009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_82012(context, evt)
	-- 判断变量"finished"为0
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_82012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304082, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end