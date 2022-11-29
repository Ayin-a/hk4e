-- 基础信息
local base_info = {
	group_id = 250028006
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
	{ config_id = 6001, gadget_id = 70950039, pos = { x = -6.871, y = -12.303, z = 90.349 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6002, gadget_id = 70950039, pos = { x = -6.871, y = -12.303, z = 124.327 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, route_id = 2 },
	{ config_id = 6003, gadget_id = 70950039, pos = { x = -6.871, y = -12.303, z = 170.622 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, route_id = 3 },
	{ config_id = 6004, gadget_id = 70380001, pos = { x = -6.658, y = 59.249, z = 87.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1 },
	{ config_id = 6005, gadget_id = 70380001, pos = { x = -6.658, y = 59.249, z = 121.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6006, gadget_id = 70380001, pos = { x = -6.658, y = 59.249, z = 167.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 4 },
	{ config_id = 6007, gadget_id = 70950040, pos = { x = -2.189, y = -39.471, z = 367.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 5, start_route = false },
	{ config_id = 6009, gadget_id = 70380012, pos = { x = 2.977, y = -32.786, z = 410.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 6, start_route = false }
}

-- 区域
regions = {
	{ config_id = 6010, shape = RegionShape.CUBIC, size = { x = 40.000, y = 15.000, z = 5.000 }, pos = { x = 6.878, y = -32.786, z = 387.197 } }
}

-- 触发器
triggers = {
	{ config_id = 1006008, name = "PLATFORM_REACH_POINT_6008", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_6008", action = "action_EVENT_PLATFORM_REACH_POINT_6008", trigger_count = 0 },
	{ config_id = 1006010, name = "ENTER_REGION_6010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6010", action = "action_EVENT_ENTER_REGION_6010" }
}

-- 变量
variables = {
	{ config_id = 1, name = "arrive", value = 0, no_refresh = false }
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
		gadgets = { 6001, 6002, 6003, 6004, 6005, 6006, 6007, 6009 },
		regions = { 6010 },
		triggers = { "PLATFORM_REACH_POINT_6008", "ENTER_REGION_6010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_6008(context, evt)
	-- 判断是gadgetid 为 6007的移动平台，是否到达了5 的路线中的 1 点
	
	if 6007 ~= evt.param1 then
	  return false
	end
	
	if 5 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_6008(context, evt)
	-- 针对当前group内变量名为 "arrive" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "arrive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6010(context, evt)
	if evt.param1 ~= 6010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6010(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 6007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 6009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end