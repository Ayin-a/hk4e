-- 基础信息
local base_info = {
	group_id = 133315107
}

-- Trigger变量
local defs = {
	point_sum = 39,
	route_2 = 331500061,
	gadget_seelie = 107002
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
	{ config_id = 107001, gadget_id = 70710006, pos = { x = 176.259, y = 104.199, z = 2936.169 }, rot = { x = 0.000, y = 305.921, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 107002, gadget_id = 70710010, pos = { x = 161.187, y = 99.750, z = 2971.913 }, rot = { x = 0.000, y = 186.891, z = 0.000 }, level = 27, route_id = 331500062, area_id = 20 },
	{ config_id = 107003, gadget_id = 70710007, pos = { x = 176.235, y = 104.210, z = 2936.328 }, rot = { x = 0.000, y = 334.891, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 107006, shape = RegionShape.SPHERE, radius = 5, pos = { x = 161.187, y = 99.750, z = 2971.913 }, area_id = 20 },
	{ config_id = 107009, shape = RegionShape.SPHERE, radius = 5, pos = { x = 161.187, y = 99.750, z = 2971.913 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1107004, name = "PLATFORM_REACH_POINT_107004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_107004", action = "action_EVENT_PLATFORM_REACH_POINT_107004", trigger_count = 0 },
	{ config_id = 1107005, name = "AVATAR_NEAR_PLATFORM_107005", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_107005", action = "action_EVENT_AVATAR_NEAR_PLATFORM_107005", trigger_count = 0 },
	{ config_id = 1107006, name = "ENTER_REGION_107006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107006", action = "action_EVENT_ENTER_REGION_107006", trigger_count = 0 },
	{ config_id = 1107007, name = "GADGET_STATE_CHANGE_107007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_107007", action = "action_EVENT_GADGET_STATE_CHANGE_107007" },
	{ config_id = 1107008, name = "GADGET_CREATE_107008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_107008", action = "action_EVENT_GADGET_CREATE_107008", trigger_count = 0 },
	{ config_id = 1107009, name = "ENTER_REGION_107009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107009", action = "action_EVENT_ENTER_REGION_107009" }
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
		gadgets = { 107001, 107002, 107003 },
		regions = { 107006, 107009 },
		triggers = { "PLATFORM_REACH_POINT_107004", "AVATAR_NEAR_PLATFORM_107005", "ENTER_REGION_107006", "GADGET_STATE_CHANGE_107007", "ENTER_REGION_107009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 107001 },
		regions = { },
		triggers = { "GADGET_CREATE_107008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_107004(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_107004(context, evt)
	-- 将configid为 107001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 107001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 107002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 107002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_107005(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	if 32 == evt.param3 and 
	ScriptLib.GetGroupVariableValue(context, "go") ~= 1 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_107005(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 107002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107006(context, evt)
	if evt.param1 ~= 107006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断是区域107006
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 107006 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_107006(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 107002, 331500061) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 107003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_107007(context, evt)
	if 107001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_107007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
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
function condition_EVENT_GADGET_CREATE_107008(context, evt)
	if 107001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_107008(context, evt)
	-- 将configid为 107001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 107001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107009(context, evt)
	if evt.param1 ~= 107009 then return false end
	
	-- 判断是区域107009
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 107009 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_107009(context, evt)
	-- 调用提示id为 7306302 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306302) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=164.1792, y=100.2031, z=2980.093}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=164.1792, y=100.2031, z=2980.093}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end