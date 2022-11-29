-- 基础信息
local base_info = {
	group_id = 133223316
}

-- Trigger变量
local defs = {
	point_sum = 17,
	route_2 = 322300054,
	gadget_seelie = 316002
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
	{ config_id = 316001, gadget_id = 70710006, pos = { x = -5961.683, y = 169.293, z = -2711.992 }, rot = { x = 0.000, y = 301.650, z = 0.000 }, level = 32, area_id = 18 },
	{ config_id = 316002, gadget_id = 70710010, pos = { x = -5914.792, y = 167.592, z = -2726.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 322300055, area_id = 18 },
	{ config_id = 316003, gadget_id = 70710007, pos = { x = -5959.179, y = 169.381, z = -2712.991 }, rot = { x = 0.000, y = 291.341, z = 0.000 }, level = 32, area_id = 18 },
	{ config_id = 316004, gadget_id = 70220024, pos = { x = -5915.263, y = 166.963, z = -2721.892 }, rot = { x = 26.561, y = 108.665, z = 266.693 }, level = 33, isOneoff = true, persistent = true, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 316007, shape = RegionShape.SPHERE, radius = 2, pos = { x = -5914.230, y = 166.858, z = -2725.421 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1316005, name = "PLATFORM_REACH_POINT_316005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_316005", action = "action_EVENT_PLATFORM_REACH_POINT_316005", trigger_count = 0 },
	{ config_id = 1316006, name = "AVATAR_NEAR_PLATFORM_316006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_316006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_316006", trigger_count = 0 },
	{ config_id = 1316007, name = "ENTER_REGION_316007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_316007", action = "action_EVENT_ENTER_REGION_316007", trigger_count = 0 },
	{ config_id = 1316008, name = "GADGET_STATE_CHANGE_316008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_316008", action = "action_EVENT_GADGET_STATE_CHANGE_316008" },
	{ config_id = 1316009, name = "GADGET_CREATE_316009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_316009", action = "action_EVENT_GADGET_CREATE_316009", trigger_count = 0 }
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
		gadgets = { 316001, 316002, 316003, 316004 },
		regions = { 316007 },
		triggers = { "PLATFORM_REACH_POINT_316005", "AVATAR_NEAR_PLATFORM_316006", "ENTER_REGION_316007", "GADGET_STATE_CHANGE_316008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 316001 },
		regions = { },
		triggers = { "GADGET_CREATE_316009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_316005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_316005(context, evt)
	-- 将configid为 316001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 316001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 316002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 316002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_316006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_316006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 316002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_316007(context, evt)
	if evt.param1 ~= 316007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_316007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 316002, 322300054) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 316003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_316008(context, evt)
	if 316001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_316008(context, evt)
	-- 针对当前group内变量名为 "finish" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "finish", 1, 133223082) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133223316, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_316009(context, evt)
	if 316001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_316009(context, evt)
	-- 将configid为 316001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 316001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end