-- 基础信息
local base_info = {
	group_id = 133315229
}

-- Trigger变量
local defs = {
	point_sum = 35,
	route_2 = 331500073,
	gadget_seelie = 229002
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
	{ config_id = 229001, gadget_id = 70710006, pos = { x = 162.731, y = 104.506, z = 2930.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 229002, gadget_id = 70710010, pos = { x = 140.689, y = 99.231, z = 2955.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 331500074, area_id = 20 },
	{ config_id = 229003, gadget_id = 70710007, pos = { x = 162.579, y = 104.479, z = 2929.348 }, rot = { x = 0.000, y = 344.964, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 229004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 142.016, y = 98.404, z = 2954.730 }, area_id = 20 },
	{ config_id = 229007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 142.189, y = 99.231, z = 2955.552 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1229004, name = "ENTER_REGION_229004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_229004", action = "action_EVENT_ENTER_REGION_229004" },
	{ config_id = 1229005, name = "PLATFORM_REACH_POINT_229005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_229005", action = "action_EVENT_PLATFORM_REACH_POINT_229005", trigger_count = 0 },
	{ config_id = 1229006, name = "AVATAR_NEAR_PLATFORM_229006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_229006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_229006", trigger_count = 0 },
	{ config_id = 1229007, name = "ENTER_REGION_229007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_229007", action = "action_EVENT_ENTER_REGION_229007", trigger_count = 0 },
	{ config_id = 1229008, name = "GADGET_STATE_CHANGE_229008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229008", action = "action_EVENT_GADGET_STATE_CHANGE_229008" },
	{ config_id = 1229009, name = "GADGET_CREATE_229009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_229009", action = "action_EVENT_GADGET_CREATE_229009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "go", value = 0, no_refresh = true }
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
		gadgets = { 229001, 229002, 229003 },
		regions = { 229004, 229007 },
		triggers = { "ENTER_REGION_229004", "PLATFORM_REACH_POINT_229005", "AVATAR_NEAR_PLATFORM_229006", "ENTER_REGION_229007", "GADGET_STATE_CHANGE_229008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 229001 },
		regions = { },
		triggers = { "GADGET_CREATE_229009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_229004(context, evt)
	if evt.param1 ~= 229004 then return false end
	
	-- 判断是区域229004
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 229004 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_229004(context, evt)
	-- 调用提示id为 7306301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=134.2017, y=100.6543, z=2947.128}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=134.2017, y=100.6543, z=2947.128}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_229005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_229005(context, evt)
	-- 将configid为 229001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 229001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 229002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 229002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 针对当前group内变量名为 "unlock" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "unlock", 1, 133315089) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_229006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	if 27 == evt.param3 and 
	ScriptLib.GetGroupVariableValue(context, "go") ~= 1 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_229006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 229002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_229007(context, evt)
	if evt.param1 ~= 229007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断是区域229007
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 229007 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_229007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 229002, 331500073) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 229003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_229008(context, evt)
	if 229001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315229, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_229009(context, evt)
	if 229001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_229009(context, evt)
	-- 将configid为 229001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 229001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end