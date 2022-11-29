-- 基础信息
local base_info = {
	group_id = 133309712
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {431}

--常用ID：
--{431,432} 开/关门
--{433} 启动电梯
--{438,439} 开/关风扇（权限等级3）
--{440} 权限操作台解除物件锁定

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
	{ config_id = 712001, gadget_id = 70330416, pos = { x = -2528.000, y = -20.192, z = 5467.998 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 712002, gadget_id = 70330283, pos = { x = -2525.764, y = -20.386, z = 5470.412 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 5}, area_id = 27 },
	{ config_id = 712006, gadget_id = 70330257, pos = { x = -2545.021, y = -18.091, z = 5460.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900241, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 27 },
	{ config_id = 712007, gadget_id = 70330257, pos = { x = -2561.002, y = -18.091, z = 5459.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900242, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 27 },
	{ config_id = 712008, gadget_id = 70330257, pos = { x = -2561.008, y = -18.091, z = 5476.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900243, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 27 },
	{ config_id = 712009, gadget_id = 70330257, pos = { x = -2544.929, y = -18.091, z = 5476.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900244, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1712003, name = "SELECT_OPTION_712003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_712003", action = "action_EVENT_SELECT_OPTION_712003", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1712004, name = "GADGET_STATE_CHANGE_712004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_712004", action = "action_EVENT_GADGET_STATE_CHANGE_712004", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1712005, name = "GROUP_LOAD_712005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_712005", action = "action_EVENT_GROUP_LOAD_712005", trigger_count = 0 },
	-- 251到达
	{ config_id = 1712010, name = "PLATFORM_ARRIVAL_712010", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_712010", action = "action_EVENT_PLATFORM_ARRIVAL_712010" },
	-- 252到达
	{ config_id = 1712011, name = "PLATFORM_ARRIVAL_712011", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_712011", action = "action_EVENT_PLATFORM_ARRIVAL_712011" },
	-- 254到达
	{ config_id = 1712012, name = "PLATFORM_ARRIVAL_712012", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_712012", action = "action_EVENT_PLATFORM_ARRIVAL_712012" },
	-- 255到达
	{ config_id = 1712013, name = "PLATFORM_ARRIVAL_712013", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_712013", action = "action_EVENT_PLATFORM_ARRIVAL_712013" }
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
		gadgets = { 712001, 712002 },
		regions = { },
		triggers = { "SELECT_OPTION_712003", "GADGET_STATE_CHANGE_712004", "GROUP_LOAD_712005", "PLATFORM_ARRIVAL_712010", "PLATFORM_ARRIVAL_712011", "PLATFORM_ARRIVAL_712012", "PLATFORM_ARRIVAL_712013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 712006, 712007, 712008, 712009 },
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
function condition_EVENT_SELECT_OPTION_712003(context, evt)
	-- 判断是gadgetid 712002 option_id 431
	if 712002 ~= evt.param1 then
		return false	
	end
	
	if 431 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_712003(context, evt)
	-- 将configid为 712002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 712002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_712004(context, evt)
	if 712002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_712004(context, evt)
	-- 将configid为 712001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 712001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309712, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_712005(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133309712, 712002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_712005(context, evt)
	-- 将configid为 712001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 712001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "active", 1, 133309251) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "active", 1, 133309252) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "active", 1, 133309254) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "active", 1, 133309255) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_712010(context, evt)
	-- 判断是gadgetid 为 712006的移动平台，是否到达了330900241 的路线中的 7 点
	
	if 712006 ~= evt.param1 then
	  return false
	end
	
	if 330900241 ~= evt.param2 then
	  return false
	end
	
	if 7 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_712010(context, evt)
	-- 将本组内变量名为 "active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "active", 1, 133309251) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 712006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_712011(context, evt)
	-- 判断是gadgetid 为 712009的移动平台，是否到达了330900244 的路线中的 6 点
	
	if 712009 ~= evt.param1 then
	  return false
	end
	
	if 330900244 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_712011(context, evt)
	-- 将本组内变量名为 "active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "active", 1, 133309252) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 712009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_712012(context, evt)
	-- 判断是gadgetid 为 712008的移动平台，是否到达了330900243 的路线中的 7 点
	
	if 712008 ~= evt.param1 then
	  return false
	end
	
	if 330900243 ~= evt.param2 then
	  return false
	end
	
	if 7 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_712012(context, evt)
	-- 将本组内变量名为 "active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "active", 1, 133309254) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 712008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_712013(context, evt)
	-- 判断是gadgetid 为 712007的移动平台，是否到达了330900242 的路线中的 7 点
	
	if 712007 ~= evt.param1 then
	  return false
	end
	
	if 330900242 ~= evt.param2 then
	  return false
	end
	
	if 7 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_712013(context, evt)
	-- 将本组内变量名为 "active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "active", 1, 133309255) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 712007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_1/PermissonOperator"