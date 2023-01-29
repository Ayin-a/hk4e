-- 基础信息
local base_info = {
	group_id = 220000034
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
	{ config_id = 87, gadget_id = 70710002, pos = { x = 81.402, y = 0.500, z = -12.125 }, rot = { x = 0.000, y = 292.160, z = 0.000 }, level = 1, route_id = 20000007 },
	{ config_id = 90, gadget_id = 70211021, pos = { x = 74.286, y = 0.534, z = 32.857 }, rot = { x = 0.000, y = 181.619, z = 0.000 }, level = 1, drop_tag = "战斗高级蒙德", showcutscene = true, isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 53, shape = RegionShape.SPHERE, radius = 10.2, pos = { x = 89.079, y = 0.500, z = -11.004 } },
	{ config_id = 54, shape = RegionShape.SPHERE, radius = 5, pos = { x = 96.611, y = 0.500, z = 14.008 } }
}

-- 触发器
triggers = {
	{ config_id = 1000053, name = "ENTER_REGION_53", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_53", action = "action_EVENT_ENTER_REGION_53", forbid_guest = false },
	{ config_id = 1000054, name = "ENTER_REGION_54", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_54", action = "action_EVENT_ENTER_REGION_54", forbid_guest = false },
	{ config_id = 1000055, name = "PLATFORM_REACH_POINT_55", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_55", action = "action_EVENT_PLATFORM_REACH_POINT_55" }
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
	rand_suite = true
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
		gadgets = { 87 },
		regions = { 53, 54 },
		triggers = { "ENTER_REGION_53", "ENTER_REGION_54", "PLATFORM_REACH_POINT_55" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_53(context, evt)
	if evt.param1 ~= 53 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_53(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 87, 20000008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_54(context, evt)
	if evt.param1 ~= 54 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_54(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 87, 20000009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_55(context, evt)
	-- 判断是gadgetid 为 87的移动平台，是否到达了20000009 的路线中的 1 点
	
	if 87 ~= evt.param1 then
	  return false
	end
	
	if 20000009 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_55(context, evt)
	-- 创建id为90的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 90 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end