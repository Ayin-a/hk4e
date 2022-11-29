-- 基础信息
local base_info = {
	group_id = 133104134
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 310400289,
	gadget_seelie = 134002
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
	{ config_id = 134001, gadget_id = 70710006, pos = { x = 703.426, y = 200.002, z = 193.139 }, rot = { x = 0.000, y = 106.910, z = 0.000 }, level = 32, area_id = 9 },
	{ config_id = 134002, gadget_id = 70710010, pos = { x = 738.808, y = 203.925, z = 231.881 }, rot = { x = 0.000, y = 226.051, z = 0.000 }, level = 32, route_id = 310400290, area_id = 9 },
	{ config_id = 134003, gadget_id = 70710007, pos = { x = 705.002, y = 202.248, z = 196.312 }, rot = { x = 2.829, y = 219.402, z = 356.562 }, level = 32, area_id = 9 },
	{ config_id = 134004, gadget_id = 70220020, pos = { x = 739.043, y = 203.191, z = 233.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 134010, gadget_id = 70220020, pos = { x = 738.980, y = 203.095, z = 229.708 }, rot = { x = 0.000, y = 17.377, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 134011, gadget_id = 70220020, pos = { x = 737.058, y = 202.948, z = 231.321 }, rot = { x = 0.000, y = 269.993, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 134013, gadget_id = 70220020, pos = { x = 741.161, y = 203.230, z = 231.523 }, rot = { x = 0.000, y = 96.169, z = 0.000 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 134007, shape = RegionShape.SPHERE, radius = 1.2, pos = { x = 739.519, y = 204.008, z = 231.598 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1134005, name = "PLATFORM_REACH_POINT_134005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_134005", action = "action_EVENT_PLATFORM_REACH_POINT_134005", trigger_count = 0 },
	{ config_id = 1134006, name = "AVATAR_NEAR_PLATFORM_134006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_134006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_134006", trigger_count = 0 },
	{ config_id = 1134007, name = "ENTER_REGION_134007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_134007", action = "action_EVENT_ENTER_REGION_134007", trigger_count = 0 },
	{ config_id = 1134008, name = "GADGET_STATE_CHANGE_134008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_134008", action = "action_EVENT_GADGET_STATE_CHANGE_134008" },
	{ config_id = 1134009, name = "GADGET_CREATE_134009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_134009", action = "action_EVENT_GADGET_CREATE_134009", trigger_count = 0 },
	{ config_id = 1134012, name = "GADGET_STATE_CHANGE_134012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_134012", action = "action_EVENT_GADGET_STATE_CHANGE_134012" }
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
		gadgets = { 134001, 134002, 134003, 134004, 134010, 134011, 134013 },
		regions = { 134007 },
		triggers = { "PLATFORM_REACH_POINT_134005", "AVATAR_NEAR_PLATFORM_134006", "ENTER_REGION_134007", "GADGET_STATE_CHANGE_134008", "GADGET_STATE_CHANGE_134012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 134001 },
		regions = { },
		triggers = { "GADGET_CREATE_134009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_134005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_134005(context, evt)
	-- 将configid为 134001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 134001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 134002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 134002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_134006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_134006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 134002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_134007(context, evt)
	if evt.param1 ~= 134007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_134007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 134002, 310400289) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 134003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_134008(context, evt)
	if 134001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_134008(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "count", 1, 133104125) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104134, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_134009(context, evt)
	if 134001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_134009(context, evt)
	-- 将configid为 134001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 134001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_134012(context, evt)
	if 134010 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_134012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 134011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 触发镜头注目，注目位置为坐标（0，0，0），持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=0, y=0, z=0}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end