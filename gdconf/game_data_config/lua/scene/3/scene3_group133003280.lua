-- 基础信息
local base_info = {
	group_id = 133003280
}

-- Trigger变量
local defs = {
	point_sum = 17,
	route_2 = 300300280,
	gadget_seelie = 280002
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
	{ config_id = 280001, gadget_id = 70710006, pos = { x = 2143.916, y = 235.842, z = -1302.191 }, rot = { x = 0.000, y = 185.801, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 280002, gadget_id = 70710010, pos = { x = 2192.652, y = 235.216, z = -1300.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, route_id = 300300281, area_id = 1 },
	{ config_id = 280003, gadget_id = 70710007, pos = { x = 2143.995, y = 236.502, z = -1302.019 }, rot = { x = 0.000, y = 97.927, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 280004, gadget_id = 70211111, pos = { x = 2116.663, y = 228.717, z = -1383.281 }, rot = { x = 358.557, y = 43.144, z = 0.412 }, level = 1, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 280011, gadget_id = 70690001, pos = { x = 2140.188, y = 235.790, z = -1315.507 }, rot = { x = 351.181, y = 199.092, z = 358.923 }, level = 5, area_id = 1 },
	{ config_id = 280012, gadget_id = 70690001, pos = { x = 2137.930, y = 235.673, z = -1325.403 }, rot = { x = 354.120, y = 201.702, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 280013, gadget_id = 70690001, pos = { x = 2134.851, y = 236.712, z = -1337.310 }, rot = { x = 352.874, y = 198.790, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 280014, gadget_id = 70360001, pos = { x = 2120.156, y = 231.222, z = -1380.034 }, rot = { x = 0.000, y = 7.122, z = 0.000 }, level = 5, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 280007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2193.234, y = 234.969, z = -1302.753 }, area_id = 1 },
	{ config_id = 280015, shape = RegionShape.SPHERE, radius = 1, pos = { x = 2120.168, y = 231.911, z = -1379.924 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1280005, name = "PLATFORM_REACH_POINT_280005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_280005", action = "action_EVENT_PLATFORM_REACH_POINT_280005", trigger_count = 0 },
	{ config_id = 1280006, name = "AVATAR_NEAR_PLATFORM_280006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_280006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_280006", trigger_count = 0 },
	{ config_id = 1280007, name = "ENTER_REGION_280007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_280007", action = "action_EVENT_ENTER_REGION_280007", trigger_count = 0 },
	{ config_id = 1280008, name = "GADGET_STATE_CHANGE_280008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_280008", action = "action_EVENT_GADGET_STATE_CHANGE_280008" },
	{ config_id = 1280009, name = "GADGET_CREATE_280009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_280009", action = "action_EVENT_GADGET_CREATE_280009", trigger_count = 0 },
	{ config_id = 1280010, name = "GADGET_STATE_CHANGE_280010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_280010", action = "action_EVENT_GADGET_STATE_CHANGE_280010" },
	{ config_id = 1280015, name = "ENTER_REGION_280015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_280015", action = "action_EVENT_ENTER_REGION_280015", tlog_tag = "神殿_精灵草_去凯亚_完成" }
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
	end_suite = 3,
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
		gadgets = { 280001, 280002, 280003 },
		regions = { 280007 },
		triggers = { "PLATFORM_REACH_POINT_280005", "AVATAR_NEAR_PLATFORM_280006", "ENTER_REGION_280007", "GADGET_STATE_CHANGE_280008", "GADGET_STATE_CHANGE_280010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 280001, 280011, 280012, 280013, 280014 },
		regions = { 280015 },
		triggers = { "GADGET_CREATE_280009", "ENTER_REGION_280015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 280001, 280004 },
		regions = { },
		triggers = { "GADGET_CREATE_280009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_280005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_280005(context, evt)
	-- 将configid为 280001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 280001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 280002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 280002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_280006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_280006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 280002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_280007(context, evt)
	if evt.param1 ~= 280007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_280007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 280002, 300300280) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 280003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_280008(context, evt)
	if 280004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_280008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_280009(context, evt)
	if 280001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_280009(context, evt)
	-- 将configid为 280001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 280001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_280010(context, evt)
	if 280001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_280010(context, evt)
	-- 触发镜头注目，注目位置为坐标（2119，225，-1380），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2119, y=225, z=-1380}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133003280, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_280015(context, evt)
	if evt.param1 ~= 280015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_280015(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003280, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 280014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 280011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 280012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 280013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end