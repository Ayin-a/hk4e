-- 基础信息
local base_info = {
	group_id = 220159003
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
	{ config_id = 3002, gadget_id = 70290519, pos = { x = 481.605, y = 97.504, z = 517.434 }, rot = { x = 0.144, y = 0.514, z = 13.369 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3003, gadget_id = 70290577, pos = { x = 481.282, y = 97.248, z = 511.607 }, rot = { x = 352.576, y = 358.122, z = 12.405 }, level = 1 },
	{ config_id = 3004, gadget_id = 70290520, pos = { x = 475.465, y = 104.711, z = 509.953 }, rot = { x = 2.852, y = 52.133, z = 19.804 }, level = 1 },
	{ config_id = 3005, gadget_id = 70290520, pos = { x = 477.054, y = 105.892, z = 505.903 }, rot = { x = 0.000, y = 25.000, z = 20.000 }, level = 1 },
	{ config_id = 3006, gadget_id = 70290520, pos = { x = 479.322, y = 106.715, z = 502.548 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1 },
	{ config_id = 3007, gadget_id = 70290577, pos = { x = 479.769, y = 108.349, z = 502.363 }, rot = { x = 1.150, y = 0.054, z = 5.994 }, level = 1 },
	{ config_id = 3009, gadget_id = 70290480, pos = { x = 478.361, y = 113.301, z = 496.400 }, rot = { x = 0.000, y = 261.997, z = 0.000 }, level = 1, route_id = 5, start_route = false },
	{ config_id = 3010, gadget_id = 70900201, pos = { x = 463.161, y = 147.329, z = 481.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3012, gadget_id = 70950010, pos = { x = 491.173, y = 98.665, z = 515.846 }, rot = { x = 0.000, y = 75.313, z = 0.000 }, level = 1 },
	{ config_id = 3013, gadget_id = 70220103, pos = { x = 463.098, y = 146.649, z = 481.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3014, gadget_id = 70950010, pos = { x = 458.284, y = 95.487, z = 540.498 }, rot = { x = 0.000, y = 346.350, z = 0.000 }, level = 1 },
	{ config_id = 3015, gadget_id = 70950010, pos = { x = 490.430, y = 117.945, z = 499.254 }, rot = { x = 0.000, y = 109.855, z = 0.000 }, level = 1 },
	{ config_id = 3016, gadget_id = 70950010, pos = { x = 432.646, y = 115.450, z = 528.169 }, rot = { x = 0.000, y = 300.117, z = 0.000 }, level = 1 },
	{ config_id = 3017, gadget_id = 70950010, pos = { x = 443.756, y = 99.452, z = 467.720 }, rot = { x = 0.000, y = 213.470, z = 0.000 }, level = 1 },
	{ config_id = 3018, gadget_id = 70290485, pos = { x = 482.463, y = 97.662, z = 517.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3001, shape = RegionShape.SPHERE, radius = 2.5, pos = { x = 478.270, y = 115.913, z = 497.081 } },
	{ config_id = 3011, shape = RegionShape.CUBIC, size = { x = 10.000, y = 4.000, z = 5.000 }, pos = { x = 467.526, y = 144.080, z = 479.436 } }
}

-- 触发器
triggers = {
	{ config_id = 1003001, name = "ENTER_REGION_3001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3001", action = "action_EVENT_ENTER_REGION_3001" },
	{ config_id = 1003008, name = "GADGET_STATE_CHANGE_3008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3008", action = "action_EVENT_GADGET_STATE_CHANGE_3008" },
	{ config_id = 1003011, name = "ENTER_REGION_3011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3011", action = "action_EVENT_ENTER_REGION_3011" }
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
		gadgets = { 3002, 3003, 3009, 3012, 3013, 3014, 3015, 3016, 3017, 3018 },
		regions = { 3001, 3011 },
		triggers = { "ENTER_REGION_3001", "GADGET_STATE_CHANGE_3008", "ENTER_REGION_3011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3004, 3005, 3006, 3007, 3010 },
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
function condition_EVENT_ENTER_REGION_3001(context, evt)
	if evt.param1 ~= 3001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3001(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3008(context, evt)
	if 3002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220159003, 2)
	
	-- 触发镜头注目，注目位置为坐标（475.541，105.4302，510.5094），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=475.541, y=105.4302, z=510.5094}
	  local pos_follow = {x=1, y=-1, z=3}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = true,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220159001, EntityType.GADGET, 1033 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3011(context, evt)
	if evt.param1 ~= 3011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3011(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220159003, EntityType.GADGET, 3010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end