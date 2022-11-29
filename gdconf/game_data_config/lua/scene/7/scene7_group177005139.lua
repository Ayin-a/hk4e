-- 基础信息
local base_info = {
	group_id = 177005139
}

-- Trigger变量
local defs = {
	point_sum = 5,
	route_2 = 700500024,
	gadget_seelie = 139002
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

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
	{ config_id = 139001, gadget_id = 70290293, pos = { x = 315.718, y = 145.158, z = 888.462 }, rot = { x = 0.000, y = 300.665, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 139002, gadget_id = 70710010, pos = { x = 317.250, y = 156.853, z = 926.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, route_id = 700500025, area_id = 210 },
	{ config_id = 139003, gadget_id = 70710007, pos = { x = 316.347, y = 146.099, z = 890.956 }, rot = { x = 0.000, y = 194.400, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 139004, gadget_id = 70211160, pos = { x = 315.112, y = 145.185, z = 886.482 }, rot = { x = 0.000, y = 313.167, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 139010, gadget_id = 70220020, pos = { x = 317.473, y = 156.812, z = 927.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 139011, gadget_id = 70220020, pos = { x = 316.433, y = 156.853, z = 926.072 }, rot = { x = 0.000, y = 249.301, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 139012, gadget_id = 70220020, pos = { x = 318.440, y = 156.851, z = 926.051 }, rot = { x = 0.000, y = 130.088, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1139005, name = "PLATFORM_REACH_POINT_139005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_139005", action = "action_EVENT_PLATFORM_REACH_POINT_139005", trigger_count = 0 },
	{ config_id = 1139006, name = "AVATAR_NEAR_PLATFORM_139006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_139006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_139006", trigger_count = 0 },
	{ config_id = 1139007, name = "ANY_GADGET_DIE_139007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_139007", action = "action_EVENT_ANY_GADGET_DIE_139007", trigger_count = 0 },
	{ config_id = 1139008, name = "GADGET_STATE_CHANGE_139008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_139008", action = "action_EVENT_GADGET_STATE_CHANGE_139008" },
	{ config_id = 1139009, name = "GADGET_CREATE_139009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_139009", action = "action_EVENT_GADGET_CREATE_139009", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1139013, name = "GADGET_CREATE_139013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_139013", action = "action_EVENT_GADGET_CREATE_139013" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 139001, 139002, 139003, 139010, 139011, 139012 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_139005", "AVATAR_NEAR_PLATFORM_139006", "ANY_GADGET_DIE_139007", "GADGET_STATE_CHANGE_139008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 139001, 139004 },
		regions = { },
		triggers = { "GADGET_CREATE_139009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_139005(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if  defs.final_point ~= evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_139005(context, evt)
	-- 将configid为 139001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 139002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 139002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_139006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_139006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 139002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_139007(context, evt)
	-- 判断指定group组剩余gadget数量是否是5 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 177005139}) ~= 5 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_139007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 139002, 700500024) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 139003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_139008(context, evt)
	if 139001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_139008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 177005139, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 针对当前group内变量名为 "default" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "default", 1, 177005121) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_139009(context, evt)
	if 139001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_139009(context, evt)
	-- 将configid为 139001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end