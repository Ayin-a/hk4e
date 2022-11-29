-- 基础信息
local base_info = {
	group_id = 144003068
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
	{ config_id = 68001, gadget_id = 70380295, pos = { x = -656.051, y = 120.038, z = 54.673 }, rot = { x = 0.000, y = 299.045, z = 0.000 }, level = 20, route_id = 400300009, start_route = false, area_id = 103 }
}

-- 区域
regions = {
	{ config_id = 68002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -654.929, y = 120.288, z = 54.070 }, area_id = 103 }
}

-- 触发器
triggers = {
	{ config_id = 1068002, name = "ENTER_REGION_68002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_68002", action = "action_EVENT_ENTER_REGION_68002", trigger_count = 0 }
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
		gadgets = { 68001 },
		regions = { 68002 },
		triggers = { "ENTER_REGION_68002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_68002(context, evt)
	if evt.param1 ~= 68002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_68002(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 68001, 400300009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 68001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end