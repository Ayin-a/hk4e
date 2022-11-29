-- 基础信息
local base_info = {
	group_id = 133008107
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
	{ config_id = 107001, gadget_id = 70380023, pos = { x = 1179.867, y = 372.229, z = -957.783 }, rot = { x = 0.000, y = 111.574, z = 0.000 }, level = 30, route_id = 300800024, start_route = false, persistent = true, area_id = 10 },
	{ config_id = 107002, gadget_id = 70350081, pos = { x = 1178.486, y = 375.860, z = -963.538 }, rot = { x = 0.000, y = 140.617, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 10 },
	{ config_id = 107003, gadget_id = 70220054, pos = { x = 1184.387, y = 369.740, z = -959.578 }, rot = { x = 0.000, y = 286.410, z = 0.000 }, level = 30, state = GadgetState.GearStop, route_id = 300800097, persistent = true, area_id = 10 },
	{ config_id = 107005, gadget_id = 70360001, pos = { x = 1178.534, y = 376.799, z = -963.570 }, rot = { x = 0.000, y = 291.481, z = 0.000 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 107011, shape = RegionShape.SPHERE, radius = 20.6, pos = { x = 1188.482, y = 372.229, z = -956.889 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1107004, name = "GADGET_STATE_CHANGE_107004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_107004", action = "action_EVENT_GADGET_STATE_CHANGE_107004", trigger_count = 0 },
	{ config_id = 1107006, name = "GADGET_CREATE_107006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_107006", action = "action_EVENT_GADGET_CREATE_107006", trigger_count = 0 },
	{ config_id = 1107007, name = "SELECT_OPTION_107007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_107007", action = "action_EVENT_SELECT_OPTION_107007" },
	{ config_id = 1107008, name = "GROUP_LOAD_107008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_107008", action = "action_EVENT_GROUP_LOAD_107008", trigger_count = 0 },
	{ config_id = 1107009, name = "GADGET_STATE_CHANGE_107009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_107009", action = "action_EVENT_GADGET_STATE_CHANGE_107009", trigger_count = 0 },
	{ config_id = 1107010, name = "ANY_GADGET_DIE_107010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_107010", action = "action_EVENT_ANY_GADGET_DIE_107010" },
	{ config_id = 1107011, name = "ENTER_REGION_107011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107011", action = "action_EVENT_ENTER_REGION_107011" },
	{ config_id = 1107012, name = "PLATFORM_REACH_POINT_107012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_107012", action = "action_EVENT_PLATFORM_REACH_POINT_107012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "water", value = 0, no_refresh = true }
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
		gadgets = { 107001, 107002 },
		regions = { 107011 },
		triggers = { "GADGET_STATE_CHANGE_107004", "GADGET_CREATE_107006", "SELECT_OPTION_107007", "GROUP_LOAD_107008", "GADGET_STATE_CHANGE_107009", "ANY_GADGET_DIE_107010", "ENTER_REGION_107011", "PLATFORM_REACH_POINT_107012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_107004(context, evt)
	if 107003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_107004(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 107003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_107006(context, evt)
	if 107005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_107006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008107, 107005, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_107007(context, evt)
	-- 判断是gadgetid 107005 option_id 24
	if 107005 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_107007(context, evt)
	-- 将configid为 107002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 107002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 107001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 107005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 触发镜头注目，注目位置为坐标（1184，372，-956），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1184, y=372, z=-956}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "water" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "water", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_107008(context, evt)
	-- 判断变量"water"为1
	if ScriptLib.GetGroupVariableValue(context, "water") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_107008(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 107001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_107009(context, evt)
	if 107003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_107009(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 107003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_107010(context, evt)
	if 107003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_107010(context, evt)
	-- 将configid为 107002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 107002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为107005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 107005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 107003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107011(context, evt)
	if evt.param1 ~= 107011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_107011(context, evt)
	-- 创建id为107003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 107003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（1184，372，-956），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1184, y=372, z=-956}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_107012(context, evt)
	-- 判断是gadgetid 为 107001的移动平台，是否到达了300800024 的路线中的 1 点
	
	if 107001 ~= evt.param1 then
	  return false
	end
	
	if 300800024 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_107012(context, evt)
	-- 将本组内变量名为 "water" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "water", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end