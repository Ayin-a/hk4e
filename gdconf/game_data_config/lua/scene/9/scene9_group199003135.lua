-- 基础信息
local base_info = {
	group_id = 199003135
}

-- Trigger变量
local defs = {
	point_sum = 4,
	route_2 = 900300035,
	gadget_seelie = 135001,
	reverse = 0
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
	{ config_id = 135001, gadget_id = 70310244, pos = { x = -710.840, y = 235.259, z = -15.649 }, rot = { x = 0.148, y = 359.860, z = 358.645 }, level = 20, area_id = 403 },
	{ config_id = 135007, gadget_id = 70500000, pos = { x = -718.767, y = 233.207, z = -36.694 }, rot = { x = 0.148, y = 359.860, z = 358.645 }, level = 1, point_type = 9306, isOneoff = true, persistent = true, area_id = 403 }
}

-- 区域
regions = {
	{ config_id = 135006, shape = RegionShape.SPHERE, radius = 5, pos = { x = -710.840, y = 235.259, z = -15.649 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1135002, name = "VARIABLE_CHANGE_135002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_135002", action = "action_EVENT_VARIABLE_CHANGE_135002", trigger_count = 0 },
	-- 到终点star2变1
	{ config_id = 1135003, name = "PLATFORM_REACH_POINT_135003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_135003", action = "action_EVENT_PLATFORM_REACH_POINT_135003", trigger_count = 0 },
	-- 被回溯到终点reverse归0
	{ config_id = 1135004, name = "PLATFORM_REACH_POINT_135004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_135004", action = "action_EVENT_PLATFORM_REACH_POINT_135004", trigger_count = 0 },
	{ config_id = 1135005, name = "AVATAR_NEAR_PLATFORM_135005", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_135005", action = "action_EVENT_AVATAR_NEAR_PLATFORM_135005", trigger_count = 0 },
	{ config_id = 1135006, name = "ENTER_REGION_135006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_135006", action = "action_EVENT_ENTER_REGION_135006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "reverse", value = 0, no_refresh = true }
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
		gadgets = { 135001 },
		regions = { 135006 },
		triggers = { "VARIABLE_CHANGE_135002", "PLATFORM_REACH_POINT_135003", "PLATFORM_REACH_POINT_135004", "AVATAR_NEAR_PLATFORM_135005", "ENTER_REGION_135006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 135007 },
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
function condition_EVENT_VARIABLE_CHANGE_135002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reverse"为1
	if ScriptLib.GetGroupVariableValue(context, "reverse") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_135002(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 135001, 900300036) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 135001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_135003(context, evt)
	-- 判断是gadgetid 为 135001的移动平台，是否到达了900300035 的路线中的 4 点
	
	if 135001 ~= evt.param1 then
	  return false
	end
	
	if 900300035 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_135003(context, evt)
	-- 将本组内变量名为 "star2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "star2", 1, 199003133) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_135004(context, evt)
	-- 判断是gadgetid 为 135001的移动平台，是否到达了900300036 的路线中的 4 点
	
	if 135001 ~= evt.param1 then
	  return false
	end
	
	if 900300036 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_135004(context, evt)
	-- 将本组内变量名为 "reverse" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "reverse", 0, 199003135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003135, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_135005(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_135005(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 135001) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_135006(context, evt)
	if evt.param1 ~= 135006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_135006(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 135001, 900300035) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 135001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "revert" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "revert", 1, 199003133) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end