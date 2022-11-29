-- 基础信息
local base_info = {
	group_id = 133008193
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 300800041,
	gadget_seelie = 193002
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
	{ config_id = 193001, gadget_id = 70720215, pos = { x = 863.428, y = 337.657, z = -648.597 }, rot = { x = 4.117, y = 237.192, z = 358.105 }, level = 30, area_id = 10 },
	{ config_id = 193002, gadget_id = 70720214, pos = { x = 884.489, y = 333.914, z = -621.049 }, rot = { x = 0.000, y = 244.813, z = 0.000 }, level = 30, route_id = 300800042, area_id = 10 },
	{ config_id = 193003, gadget_id = 70720216, pos = { x = 865.341, y = 332.855, z = -643.988 }, rot = { x = 0.000, y = 208.664, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 193004, gadget_id = 70211111, pos = { x = 864.602, y = 337.752, z = -648.307 }, rot = { x = 355.486, y = 76.975, z = 0.391 }, level = 26, drop_tag = "雪山解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 193010, gadget_id = 70310017, pos = { x = 872.785, y = 333.358, z = -627.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, area_id = 10 },
	{ config_id = 193011, gadget_id = 70310017, pos = { x = 865.073, y = 332.533, z = -635.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 193007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 883.222, y = 334.065, z = -622.736 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1193005, name = "PLATFORM_REACH_POINT_193005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_193005", action = "action_EVENT_PLATFORM_REACH_POINT_193005", trigger_count = 0 },
	{ config_id = 1193006, name = "AVATAR_NEAR_PLATFORM_193006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_193006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_193006", trigger_count = 0 },
	{ config_id = 1193007, name = "ENTER_REGION_193007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_193007", action = "action_EVENT_ENTER_REGION_193007", trigger_count = 0 },
	{ config_id = 1193008, name = "GADGET_STATE_CHANGE_193008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_193008", action = "action_EVENT_GADGET_STATE_CHANGE_193008" },
	{ config_id = 1193009, name = "GADGET_CREATE_193009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_193009", action = "action_EVENT_GADGET_CREATE_193009", trigger_count = 0 },
	{ config_id = 1193012, name = "PLATFORM_REACH_POINT_193012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_193012", action = "action_EVENT_PLATFORM_REACH_POINT_193012", trigger_count = 0 },
	{ config_id = 1193013, name = "PLATFORM_REACH_POINT_193013", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_193013", action = "action_EVENT_PLATFORM_REACH_POINT_193013", trigger_count = 0 }
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
		gadgets = { 193001, 193002, 193003, 193010, 193011 },
		regions = { 193007 },
		triggers = { "PLATFORM_REACH_POINT_193005", "AVATAR_NEAR_PLATFORM_193006", "ENTER_REGION_193007", "GADGET_STATE_CHANGE_193008", "PLATFORM_REACH_POINT_193012", "PLATFORM_REACH_POINT_193013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 193001, 193004, 193010, 193011 },
		regions = { },
		triggers = { "GADGET_CREATE_193009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_193005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_193005(context, evt)
	-- 将configid为 193001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 193001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 193002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 193002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 193010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 193010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 193011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 193011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2013, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_193006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_193006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 193002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2013, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_193007(context, evt)
	if evt.param1 ~= 193007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_193007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 193002, 300800041) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 193003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2013, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_193008(context, evt)
	if 193001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_193008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008193, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_193009(context, evt)
	if 193001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_193009(context, evt)
	-- 将configid为 193001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 193001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 193010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 193010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 193011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 193011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_193012(context, evt)
	-- 判断是gadgetid 为 193002的移动平台，是否到达了300800041 的路线中的 4 点
	
	if 193002 ~= evt.param1 then
	  return false
	end
	
	if 300800041 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_193012(context, evt)
	-- 将configid为 193010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 193010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_193013(context, evt)
	-- 判断是gadgetid 为 193002的移动平台，是否到达了300800041 的路线中的 6 点
	
	if 193002 ~= evt.param1 then
	  return false
	end
	
	if 300800041 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_193013(context, evt)
	-- 将configid为 193011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 193011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end