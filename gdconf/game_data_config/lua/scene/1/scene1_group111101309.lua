-- 基础信息
local base_info = {
	group_id = 111101309
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
	{ config_id = 309001, gadget_id = 70310001, pos = { x = 2322.294, y = 276.418, z = -1670.957 }, rot = { x = 0.000, y = 170.910, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 309002, gadget_id = 70310001, pos = { x = 2318.311, y = 275.009, z = -1670.861 }, rot = { x = 0.000, y = 170.910, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 309003, gadget_id = 70310001, pos = { x = 2317.375, y = 273.987, z = -1664.707 }, rot = { x = 0.000, y = 170.910, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 309004, gadget_id = 70310001, pos = { x = 2321.240, y = 275.016, z = -1662.876 }, rot = { x = 0.000, y = 170.910, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 309005, gadget_id = 70310001, pos = { x = 2325.489, y = 276.361, z = -1668.015 }, rot = { x = 0.000, y = 170.910, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 309006, gadget_id = 70211101, pos = { x = 2320.655, y = 275.185, z = -1665.538 }, rot = { x = 0.000, y = 162.607, z = 0.000 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 以下五个代表：火把点燃时+1
	{ config_id = 1309007, name = "GADGET_STATE_CHANGE_309007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_309007", action = "action_EVENT_GADGET_STATE_CHANGE_309007", trigger_count = 0 },
	{ config_id = 1309008, name = "GADGET_STATE_CHANGE_309008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_309008", action = "action_EVENT_GADGET_STATE_CHANGE_309008", trigger_count = 0 },
	{ config_id = 1309009, name = "GADGET_STATE_CHANGE_309009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_309009", action = "action_EVENT_GADGET_STATE_CHANGE_309009", trigger_count = 0 },
	{ config_id = 1309010, name = "GADGET_STATE_CHANGE_309010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_309010", action = "action_EVENT_GADGET_STATE_CHANGE_309010", trigger_count = 0 },
	{ config_id = 1309011, name = "GADGET_STATE_CHANGE_309011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_309011", action = "action_EVENT_GADGET_STATE_CHANGE_309011", trigger_count = 0 },
	{ config_id = 1309012, name = "VARIABLE_CHANGE_309012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_309012", action = "action_EVENT_VARIABLE_CHANGE_309012", trigger_count = 0 },
	-- 以下五个代表：火把熄灭时variable-1
	{ config_id = 1309013, name = "GADGET_STATE_CHANGE_309013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_309013", action = "action_EVENT_GADGET_STATE_CHANGE_309013", trigger_count = 0 },
	{ config_id = 1309014, name = "GADGET_STATE_CHANGE_309014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_309014", action = "action_EVENT_GADGET_STATE_CHANGE_309014", trigger_count = 0 },
	{ config_id = 1309015, name = "GADGET_STATE_CHANGE_309015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_309015", action = "action_EVENT_GADGET_STATE_CHANGE_309015", trigger_count = 0 },
	{ config_id = 1309016, name = "GADGET_STATE_CHANGE_309016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_309016", action = "action_EVENT_GADGET_STATE_CHANGE_309016", trigger_count = 0 },
	{ config_id = 1309017, name = "GADGET_STATE_CHANGE_309017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_309017", action = "action_EVENT_GADGET_STATE_CHANGE_309017", trigger_count = 0 },
	-- 宝箱开启，方碑解锁
	{ config_id = 1309018, name = "GADGET_STATE_CHANGE_309018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_309018", action = "action_EVENT_GADGET_STATE_CHANGE_309018" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true },
	{ config_id = 2, name = "chest", value = 0, no_refresh = true }
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
		gadgets = { 309001, 309002, 309003, 309004, 309005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_309007", "GADGET_STATE_CHANGE_309008", "GADGET_STATE_CHANGE_309009", "GADGET_STATE_CHANGE_309010", "GADGET_STATE_CHANGE_309011", "VARIABLE_CHANGE_309012", "GADGET_STATE_CHANGE_309013", "GADGET_STATE_CHANGE_309014", "GADGET_STATE_CHANGE_309015", "GADGET_STATE_CHANGE_309016", "GADGET_STATE_CHANGE_309017", "GADGET_STATE_CHANGE_309018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_309007(context, evt)
	-- 检测config_id为309001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 309001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_309007(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "count", 1, 111101309) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_309008(context, evt)
	-- 检测config_id为309002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 309002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_309008(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "count", 1, 111101309) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_309009(context, evt)
	-- 检测config_id为309003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 309003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_309009(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "count", 1, 111101309) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_309010(context, evt)
	-- 检测config_id为309004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 309004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_309010(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "count", 1, 111101309) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_309011(context, evt)
	-- 检测config_id为309005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 309005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_309011(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "count", 1, 111101309) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_309012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为5
	if ScriptLib.GetGroupVariableValueByGroup(context, "count", 111101309) ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_309012(context, evt)
	-- 创建id为309006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 309006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_309013(context, evt)
	-- 检测config_id为309001的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 309001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_309013(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "count", -1, 111101309) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_309014(context, evt)
	-- 检测config_id为309002的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 309002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_309014(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "count", -1, 111101309) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_309015(context, evt)
	-- 检测config_id为309003的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 309003 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_309015(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "count", -1, 111101309) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_309016(context, evt)
	-- 检测config_id为309004的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 309004 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_309016(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "count", -1, 111101309) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_309017(context, evt)
	-- 检测config_id为309005的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 309005 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_309017(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "count", -1, 111101309) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_309018(context, evt)
	-- 检测config_id为309006的gadget是否从GadgetState.Default变为GadgetState.ChestOpened
	if 309006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_309018(context, evt)
	-- 将本组内变量名为 "chest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "chest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end