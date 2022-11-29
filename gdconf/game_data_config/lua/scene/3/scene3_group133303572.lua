-- 基础信息
local base_info = {
	group_id = 133303572
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
	{ config_id = 572001, gadget_id = 70290485, pos = { x = -1456.495, y = 129.015, z = 3335.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 1号
	{ config_id = 572002, gadget_id = 70310199, pos = { x = -1460.967, y = 128.311, z = 3341.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 2号
	{ config_id = 572003, gadget_id = 70310199, pos = { x = -1459.801, y = 128.546, z = 3329.016 }, rot = { x = 0.000, y = 234.280, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 3号
	{ config_id = 572004, gadget_id = 70310199, pos = { x = -1449.223, y = 128.371, z = 3335.401 }, rot = { x = 0.000, y = 270.920, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 1号
	{ config_id = 572005, gadget_id = 70290532, pos = { x = -1460.967, y = 131.041, z = 3341.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 330300057, area_id = 23 },
	-- 2号
	{ config_id = 572006, gadget_id = 70290532, pos = { x = -1459.801, y = 131.275, z = 3329.016 }, rot = { x = 0.000, y = 234.280, z = 0.000 }, level = 30, route_id = 330300056, area_id = 23 },
	-- 3号
	{ config_id = 572007, gadget_id = 70290532, pos = { x = -1449.223, y = 131.101, z = 3335.401 }, rot = { x = 0.000, y = 270.920, z = 0.000 }, level = 30, route_id = 330300058, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 1号创1号
	{ config_id = 1572008, name = "GADGET_STATE_CHANGE_572008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_572008", action = "action_EVENT_GADGET_STATE_CHANGE_572008", trigger_count = 0 },
	-- 2号创2号
	{ config_id = 1572009, name = "GADGET_STATE_CHANGE_572009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_572009", action = "action_EVENT_GADGET_STATE_CHANGE_572009", trigger_count = 0 },
	-- 3号创3号
	{ config_id = 1572010, name = "GADGET_STATE_CHANGE_572010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_572010", action = "action_EVENT_GADGET_STATE_CHANGE_572010", trigger_count = 0 },
	-- 全激活
	{ config_id = 1572011, name = "GADGET_STATE_CHANGE_572011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_572011", action = "action_EVENT_GADGET_STATE_CHANGE_572011", trigger_count = 0 },
	-- 织梦网保底1
	{ config_id = 1572012, name = "GROUP_LOAD_572012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_572012", action = "action_EVENT_GROUP_LOAD_572012", trigger_count = 0 },
	-- 织梦网保底2
	{ config_id = 1572013, name = "GROUP_LOAD_572013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_572013", action = "action_EVENT_GROUP_LOAD_572013", trigger_count = 0 },
	-- 织梦网保底3
	{ config_id = 1572014, name = "GROUP_LOAD_572014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_572014", action = "action_EVENT_GROUP_LOAD_572014", trigger_count = 0 },
	-- 玩法完成保底
	{ config_id = 1572015, name = "GROUP_LOAD_572015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_572015", action = "action_EVENT_GROUP_LOAD_572015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finished", value = 0, no_refresh = true }
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
		gadgets = { 572001, 572002, 572003, 572004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_572008", "GADGET_STATE_CHANGE_572009", "GADGET_STATE_CHANGE_572010", "GADGET_STATE_CHANGE_572011", "GROUP_LOAD_572012", "GROUP_LOAD_572013", "GROUP_LOAD_572014", "GROUP_LOAD_572015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 572005, 572006, 572007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_572008(context, evt)
	if 572002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_572008(context, evt)
	-- 创建id为572005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 572005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-1460.967, y=131.0407, z=3341.507}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1460.967, y=131.0407, z=3341.507}
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
function condition_EVENT_GADGET_STATE_CHANGE_572009(context, evt)
	if 572003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_572009(context, evt)
	-- 创建id为572006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 572006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-1459.801, y=131.2753, z=3329.016}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1459.801, y=131.2753, z=3329.016}
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
function condition_EVENT_GADGET_STATE_CHANGE_572010(context, evt)
	if 572004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_572010(context, evt)
	-- 创建id为572007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 572007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-1449.223, y=131.1008, z=3335.401}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1449.223, y=131.1008, z=3335.401}
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
function condition_EVENT_GADGET_STATE_CHANGE_572011(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303572, 572005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303572, 572006) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303572, 572007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_572011(context, evt)
	-- 将本组内变量名为 "finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 572001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 572001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303572, 2)
	
	-- 触发镜头注目，注目位置为坐标{x=-1456.495, y=129.0145, z=3335.813}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1456.495, y=129.0145, z=3335.813}
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
function condition_EVENT_GROUP_LOAD_572012(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303572, 572002) then
		return false
	end
	
	-- 判断变量"finished"为0
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_572012(context, evt)
	-- 创建id为572005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 572005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_572013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303572, 572003) then
		return false
	end
	
	-- 判断变量"finished"为0
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_572013(context, evt)
	-- 创建id为572006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 572006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_572014(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303572, 572004) then
		return false
	end
	
	-- 判断变量"finished"为0
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_572014(context, evt)
	-- 创建id为572007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 572007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_572015(context, evt)
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_572015(context, evt)
	-- 将configid为 572001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 572001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303572, 2)
	
	return 0
end