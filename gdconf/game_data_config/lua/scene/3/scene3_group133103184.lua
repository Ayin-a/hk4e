-- 基础信息
local base_info = {
	group_id = 133103184
}

-- Trigger变量
local defs = {
	duration = 45,
	kill_sum = 3,
	group_id = 133103184,
	gadget_controller_id = 184003
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
	{ config_id = 184001, gadget_id = 70330021, pos = { x = 865.011, y = 336.124, z = 1565.841 }, rot = { x = 0.000, y = 263.724, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 184002, gadget_id = 70330019, pos = { x = 874.513, y = 338.916, z = 1563.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 184003, gadget_id = 70330021, pos = { x = 867.870, y = 338.698, z = 1549.442 }, rot = { x = 0.000, y = 73.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 184008, gadget_id = 70330021, pos = { x = 878.603, y = 339.151, z = 1551.999 }, rot = { x = 0.000, y = 239.096, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 184009, gadget_id = 70330019, pos = { x = 867.909, y = 338.831, z = 1564.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 184010, gadget_id = 70330019, pos = { x = 870.856, y = 339.907, z = 1557.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 184012, gadget_id = 70211112, pos = { x = 870.956, y = 340.124, z = 1561.592 }, rot = { x = 0.000, y = 125.672, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 184013, gadget_id = 70690006, pos = { x = 871.009, y = 340.087, z = 1561.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1184004, name = "GADGET_STATE_CHANGE_184004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_184004", action = "action_EVENT_GADGET_STATE_CHANGE_184004" },
	{ config_id = 1184005, name = "GADGET_STATE_CHANGE_184005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_184005", action = "action_EVENT_GADGET_STATE_CHANGE_184005" },
	{ config_id = 1184006, name = "GADGET_STATE_CHANGE_184006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_184006", action = "action_EVENT_GADGET_STATE_CHANGE_184006" },
	{ config_id = 1184007, name = "VARIABLE_CHANGE_184007", event = EventType.EVENT_VARIABLE_CHANGE, source = "gears", condition = "condition_EVENT_VARIABLE_CHANGE_184007", action = "action_EVENT_VARIABLE_CHANGE_184007" },
	{ config_id = 1184011, name = "GADGET_CREATE_184011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_184011", action = "action_EVENT_GADGET_CREATE_184011", trigger_count = 0 },
	{ config_id = 1184014, name = "GADGET_CREATE_184014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_184014", action = "action_EVENT_GADGET_CREATE_184014", trigger_count = 0 },
	{ config_id = 1184015, name = "GADGET_CREATE_184015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_184015", action = "action_EVENT_GADGET_CREATE_184015", trigger_count = 0 },
	{ config_id = 1184016, name = "GROUP_LOAD_184016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_184016", action = "action_EVENT_GROUP_LOAD_184016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gears", value = 0, no_refresh = true },
	{ config_id = 2, name = "g1", value = 0, no_refresh = true },
	{ config_id = 3, name = "g2", value = 0, no_refresh = true },
	{ config_id = 4, name = "g3", value = 0, no_refresh = true }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 184001, 184002, 184003, 184008, 184009, 184010, 184012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_184004", "GADGET_STATE_CHANGE_184005", "GADGET_STATE_CHANGE_184006", "VARIABLE_CHANGE_184007", "GADGET_CREATE_184011", "GADGET_CREATE_184014", "GADGET_CREATE_184015", "GROUP_LOAD_184016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 184013 },
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
function condition_EVENT_GADGET_STATE_CHANGE_184004(context, evt)
	if 184010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_184004(context, evt)
	-- 针对当前group内变量名为 "gears" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "gears", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "g3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "g3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_184005(context, evt)
	if 184002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_184005(context, evt)
	-- 针对当前group内变量名为 "gears" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "gears", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "g1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "g1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_184006(context, evt)
	if 184009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_184006(context, evt)
	-- 针对当前group内变量名为 "gears" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "gears", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "g2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "g2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"gears"为3
	if ScriptLib.GetGroupVariableValue(context, "gears") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103184, 2)
	
	-- 将configid为 184012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_184011(context, evt)
	if 184002 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"g1"为0
	if ScriptLib.GetGroupVariableValue(context, "g1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_184011(context, evt)
	-- 将configid为 184002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_184014(context, evt)
	if 184009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"g2"为0
	if ScriptLib.GetGroupVariableValue(context, "g2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_184014(context, evt)
	-- 将configid为 184009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_184015(context, evt)
	if 184010 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"g3"为0
	if ScriptLib.GetGroupVariableValue(context, "g3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_184015(context, evt)
	-- 将configid为 184010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_184016(context, evt)
	-- 判断变量"gears"为3
	if ScriptLib.GetGroupVariableValue(context, "gears") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_184016(context, evt)
	-- 将本组内变量名为 "g1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "g1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "g2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "g2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "g3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "g3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 184002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 184009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 184010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end