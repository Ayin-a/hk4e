-- 基础信息
local base_info = {
	group_id = 133314076
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
	-- 1号门
	{ config_id = 76003, gadget_id = 70350434, pos = { x = -402.109, y = 141.760, z = 4436.685 }, rot = { x = 351.083, y = 147.318, z = 358.395 }, level = 30, area_id = 32 },
	-- 2号门
	{ config_id = 76004, gadget_id = 70350434, pos = { x = -426.725, y = 111.801, z = 4487.400 }, rot = { x = 313.875, y = 162.397, z = 351.570 }, level = 30, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1076006, name = "GROUP_LOAD_76006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_76006", action = "action_EVENT_GROUP_LOAD_76006", trigger_count = 0 },
	-- 门1关
	{ config_id = 1076007, name = "VARIABLE_CHANGE_76007", event = EventType.EVENT_VARIABLE_CHANGE, source = "door1", condition = "condition_EVENT_VARIABLE_CHANGE_76007", action = "action_EVENT_VARIABLE_CHANGE_76007", trigger_count = 0 },
	-- 门1开
	{ config_id = 1076008, name = "VARIABLE_CHANGE_76008", event = EventType.EVENT_VARIABLE_CHANGE, source = "door1", condition = "condition_EVENT_VARIABLE_CHANGE_76008", action = "action_EVENT_VARIABLE_CHANGE_76008", trigger_count = 0 },
	-- 门2关
	{ config_id = 1076009, name = "VARIABLE_CHANGE_76009", event = EventType.EVENT_VARIABLE_CHANGE, source = "door2", condition = "condition_EVENT_VARIABLE_CHANGE_76009", action = "action_EVENT_VARIABLE_CHANGE_76009", trigger_count = 0 },
	-- 门2开
	{ config_id = 1076010, name = "VARIABLE_CHANGE_76010", event = EventType.EVENT_VARIABLE_CHANGE, source = "door2", condition = "condition_EVENT_VARIABLE_CHANGE_76010", action = "action_EVENT_VARIABLE_CHANGE_76010", trigger_count = 0 },
	-- 去到endsuite(2)
	{ config_id = 1076013, name = "VARIABLE_CHANGE_76013", event = EventType.EVENT_VARIABLE_CHANGE, source = "finished", condition = "condition_EVENT_VARIABLE_CHANGE_76013", action = "action_EVENT_VARIABLE_CHANGE_76013", trigger_count = 0 },
	-- 重置
	{ config_id = 1076018, name = "GROUP_LOAD_76018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_76018", action = "action_EVENT_GROUP_LOAD_76018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finished", value = 0, no_refresh = true },
	{ config_id = 2, name = "door1", value = 0, no_refresh = false },
	{ config_id = 3, name = "door2", value = 0, no_refresh = false }
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
		gadgets = { 76003, 76004 },
		regions = { },
		triggers = { "GROUP_LOAD_76006", "VARIABLE_CHANGE_76007", "VARIABLE_CHANGE_76008", "VARIABLE_CHANGE_76009", "VARIABLE_CHANGE_76010", "VARIABLE_CHANGE_76013", "GROUP_LOAD_76018" },
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
function condition_EVENT_GROUP_LOAD_76006(context, evt)
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_76006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133314076, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_76007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"door1"为0
	if ScriptLib.GetGroupVariableValue(context, "door1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_76007(context, evt)
	-- 将configid为 76003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 76003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_76008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"door1"为1
	if ScriptLib.GetGroupVariableValue(context, "door1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_76008(context, evt)
	-- 将configid为 76003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 76003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_76009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"door2"为0
	if ScriptLib.GetGroupVariableValue(context, "door2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_76009(context, evt)
	-- 将configid为 76004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 76004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_76010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"door2"为1
	if ScriptLib.GetGroupVariableValue(context, "door2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_76010(context, evt)
	-- 将configid为 76004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 76004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_76013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_76013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133314076, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_76018(context, evt)
	-- 判断变量"finished"为0
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_76018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133314076, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end