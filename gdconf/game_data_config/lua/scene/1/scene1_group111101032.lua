-- 基础信息
local base_info = {
	group_id = 111101032
}

-- Trigger变量
local defs = {
	routeID = 110100011
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
	{ config_id = 32001, gadget_id = 70950083, pos = { x = 2456.274, y = 247.093, z = -1398.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 32006, gadget_id = 70310012, pos = { x = 2449.780, y = 250.311, z = -1392.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32007, gadget_id = 70310012, pos = { x = 2443.768, y = 251.852, z = -1380.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 瀑布开启
	{ config_id = 32002, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2449.700, y = 250.706, z = -1392.683 } },
	-- 瀑布关闭
	{ config_id = 32003, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2443.786, y = 252.284, z = -1380.440 } }
}

-- 触发器
triggers = {
	-- 瀑布开启
	{ config_id = 1032002, name = "ENTER_REGION_32002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_32002", action = "action_EVENT_ENTER_REGION_32002", trigger_count = 0 },
	-- 瀑布关闭
	{ config_id = 1032003, name = "ENTER_REGION_32003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_32003", action = "action_EVENT_ENTER_REGION_32003", trigger_count = 0 },
	{ config_id = 1032004, name = "PLATFORM_REACH_POINT_32004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "32001", condition = "", action = "action_EVENT_PLATFORM_REACH_POINT_32004", trigger_count = 0 },
	{ config_id = 1032005, name = "GROUP_LOAD_32005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_32005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isStartMoving", value = 0, no_refresh = false }
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
		gadgets = { 32001, 32006, 32007 },
		regions = { 32002, 32003 },
		triggers = { "ENTER_REGION_32002", "ENTER_REGION_32003", "PLATFORM_REACH_POINT_32004", "GROUP_LOAD_32005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_32002(context, evt)
	if evt.param1 ~= 32002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_32002(context, evt)
	-- 将configid为 32001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 32001, GadgetState.GearStart) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	ScriptLib.SetPlatformPointArray(context, 32001, defs.routeID, {2}, { route_type = 0 })
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_32003(context, evt)
	if evt.param1 ~= 32003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_32003(context, evt)
		-- 将configid为 32001 的物件更改为状态 GadgetState.Default
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 32001, GadgetState.Default) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
				return -1
			end 
			ScriptLib.SetPlatformPointArray(context, 32001, defs.routeID, {1}, { route_type = 0 })
		return 0
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_32004(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 32001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_32005(context, evt)
	ScriptLib.SetPlatformPointArray(context, 32001, defs.routeID, {1}, { route_type = 0 })
	return 0
end