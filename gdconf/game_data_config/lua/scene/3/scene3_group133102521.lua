-- 基础信息
local base_info = {
	group_id = 133102521
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 310200172,
	gadget_seelie = 521002
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
	{ config_id = 521012, monster_id = 21030201, pos = { x = 1600.425, y = 256.319, z = 459.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 5 },
	{ config_id = 521013, monster_id = 21010301, pos = { x = 1604.410, y = 257.401, z = 466.261 }, rot = { x = 13.309, y = 258.153, z = 3.461 }, level = 18, drop_tag = "丘丘人", pose_id = 9012, area_id = 5 },
	{ config_id = 521014, monster_id = 21010301, pos = { x = 1597.516, y = 257.213, z = 466.798 }, rot = { x = 6.536, y = 158.646, z = 349.915 }, level = 18, drop_tag = "丘丘人", pose_id = 9012, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 521001, gadget_id = 70710006, pos = { x = 1632.120, y = 282.522, z = 508.099 }, rot = { x = 0.000, y = 188.558, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 521002, gadget_id = 70710010, pos = { x = 1600.815, y = 256.870, z = 464.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, route_id = 310200173, area_id = 5 },
	{ config_id = 521003, gadget_id = 70710007, pos = { x = 1630.732, y = 282.333, z = 505.587 }, rot = { x = 0.000, y = 190.535, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 521004, gadget_id = 70211111, pos = { x = 1634.740, y = 282.511, z = 509.084 }, rot = { x = 357.416, y = 221.537, z = 4.074 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 521008, gadget_id = 70220020, pos = { x = 1600.745, y = 256.743, z = 464.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 521009, gadget_id = 70220020, pos = { x = 1601.094, y = 256.558, z = 462.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 521010, gadget_id = 70220020, pos = { x = 1599.583, y = 255.997, z = 463.544 }, rot = { x = 0.000, y = 270.545, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 521011, gadget_id = 70220020, pos = { x = 1602.223, y = 256.971, z = 463.867 }, rot = { x = 10.240, y = 86.971, z = 352.447 }, level = 18, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1521005, name = "PLATFORM_REACH_POINT_521005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_521005", action = "action_EVENT_PLATFORM_REACH_POINT_521005", trigger_count = 0 },
	{ config_id = 1521006, name = "AVATAR_NEAR_PLATFORM_521006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_521006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_521006", trigger_count = 0 },
	{ config_id = 1521007, name = "ANY_GADGET_DIE_521007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_521007", action = "action_EVENT_ANY_GADGET_DIE_521007", trigger_count = 0 },
	{ config_id = 1521015, name = "GADGET_STATE_CHANGE_521015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_521015", action = "action_EVENT_GADGET_STATE_CHANGE_521015" },
	{ config_id = 1521016, name = "GADGET_CREATE_521016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_521016", action = "action_EVENT_GADGET_CREATE_521016", trigger_count = 0 }
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
		monsters = { 521012, 521013, 521014 },
		gadgets = { 521001, 521002, 521003, 521008, 521009, 521010, 521011 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_521005", "AVATAR_NEAR_PLATFORM_521006", "ANY_GADGET_DIE_521007", "GADGET_STATE_CHANGE_521015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 521001, 521004 },
		regions = { },
		triggers = { "GADGET_CREATE_521016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_521005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_521005(context, evt)
	-- 将configid为 521001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 521001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 521002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 521002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_521006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_521006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 521002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_521007(context, evt)
	-- 判断指定group组剩余gadget数量是否是3 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133102521}) ~= 3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_521007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 521002, 310200172) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 521003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_521015(context, evt)
	if 521001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_521015(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102521, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_521016(context, evt)
	if 521001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_521016(context, evt)
	-- 将configid为 521001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 521001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end