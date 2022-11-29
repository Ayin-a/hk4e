-- 基础信息
local base_info = {
	group_id = 201016003
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
	{ config_id = 3001, gadget_id = 70350002, pos = { x = 176.725, y = 6.249, z = -48.236 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3002, gadget_id = 70360002, pos = { x = 196.782, y = 2.918, z = -48.216 }, rot = { x = 0.000, y = 88.928, z = 0.000 }, level = 1 },
	{ config_id = 3003, gadget_id = 70360020, pos = { x = 196.573, y = 10.956, z = -63.534 }, rot = { x = 0.000, y = 88.525, z = 90.000 }, level = 1 },
	{ config_id = 3004, gadget_id = 70360016, pos = { x = 196.189, y = 6.535, z = -60.295 }, rot = { x = 0.000, y = 232.936, z = 0.000 }, level = 1 },
	{ config_id = 3005, gadget_id = 70360016, pos = { x = 196.186, y = 6.179, z = -56.465 }, rot = { x = 0.000, y = 232.936, z = 0.000 }, level = 1 },
	{ config_id = 3006, gadget_id = 70360016, pos = { x = 196.117, y = 6.207, z = -52.597 }, rot = { x = 0.000, y = 232.936, z = 0.000 }, level = 1 },
	{ config_id = 3007, gadget_id = 70360016, pos = { x = 200.450, y = 6.210, z = -52.614 }, rot = { x = 0.000, y = 232.936, z = 0.000 }, level = 1 },
	{ config_id = 3008, gadget_id = 70360020, pos = { x = 196.673, y = 10.867, z = -31.921 }, rot = { x = 0.000, y = 88.525, z = 270.000 }, level = 1 },
	{ config_id = 3009, gadget_id = 70360016, pos = { x = 196.708, y = 6.546, z = -35.814 }, rot = { x = 0.000, y = 232.936, z = 0.000 }, level = 1 },
	{ config_id = 3010, gadget_id = 70360016, pos = { x = 196.894, y = 6.204, z = -39.638 }, rot = { x = 0.000, y = 232.936, z = 0.000 }, level = 1 },
	{ config_id = 3011, gadget_id = 70360016, pos = { x = 197.115, y = 6.206, z = -43.313 }, rot = { x = 0.000, y = 232.936, z = 0.000 }, level = 1 },
	{ config_id = 3012, gadget_id = 70360016, pos = { x = 193.083, y = 6.206, z = -43.393 }, rot = { x = 0.000, y = 232.936, z = 0.000 }, level = 1 },
	{ config_id = 3013, gadget_id = 70380005, pos = { x = 196.828, y = 6.111, z = -47.733 }, rot = { x = 0.000, y = 195.501, z = 0.000 }, level = 1, route_id = 1016011, start_route = false },
	{ config_id = 3014, gadget_id = 70360019, pos = { x = 204.261, y = 6.209, z = -52.613 }, rot = { x = 0.000, y = 335.145, z = 0.000 }, level = 1 },
	{ config_id = 3015, gadget_id = 70360019, pos = { x = 188.413, y = 6.219, z = -43.256 }, rot = { x = 0.000, y = 335.145, z = 0.000 }, level = 1 },
	{ config_id = 3016, gadget_id = 70380001, pos = { x = 209.565, y = 1.840, z = -58.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1016012, start_route = false },
	{ config_id = 3017, gadget_id = 70380001, pos = { x = 184.685, y = 1.873, z = -38.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1016013, start_route = false },
	{ config_id = 3018, gadget_id = 70900202, pos = { x = 196.520, y = 11.638, z = -62.929 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 3019, gadget_id = 70900202, pos = { x = 196.685, y = 11.638, z = -32.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3020, gadget_id = 70900201, pos = { x = 196.671, y = 4.396, z = -48.172 }, rot = { x = 0.000, y = 262.958, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 76, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 20.000 }, pos = { x = 221.825, y = 10.888, z = -40.542 } },
	{ config_id = 3021, shape = RegionShape.CUBIC, size = { x = 10.000, y = 5.000, z = 30.000 }, pos = { x = 211.866, y = 6.577, z = -46.393 } }
}

-- 触发器
triggers = {
	{ config_id = 1000006, name = "SELECT_OPTION_6", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6", action = "action_EVENT_SELECT_OPTION_6", forbid_guest = false },
	{ config_id = 1000025, name = "GADGET_CREATE_25", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_25", action = "action_EVENT_GADGET_CREATE_25" },
	{ config_id = 1000037, name = "GADGET_STATE_CHANGE_37", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37", action = "action_EVENT_GADGET_STATE_CHANGE_37" },
	{ config_id = 1000038, name = "GADGET_STATE_CHANGE_38", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_38", action = "action_EVENT_GADGET_STATE_CHANGE_38" },
	{ config_id = 1000039, name = "PLATFORM_REACH_POINT_39", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_39", action = "action_EVENT_PLATFORM_REACH_POINT_39", trigger_count = 0 },
	{ config_id = 1000070, name = "PLATFORM_REACH_POINT_70", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_70", action = "action_EVENT_PLATFORM_REACH_POINT_70", trigger_count = 0 },
	{ config_id = 1000076, name = "ENTER_REGION_76", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_76", action = "action_EVENT_ENTER_REGION_76", forbid_guest = false },
	{ config_id = 1000077, name = "TIMER_EVENT_77", event = EventType.EVENT_TIMER_EVENT, source = "Hints", condition = "", action = "action_EVENT_TIMER_EVENT_77" },
	{ config_id = 1003021, name = "ENTER_REGION_3021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3021", action = "action_EVENT_ENTER_REGION_3021" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Key", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 1,
	rand_suite = true
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
		gadgets = { 3001, 3002, 3003, 3004, 3005, 3006, 3007, 3008, 3009, 3010, 3011, 3012, 3013, 3014, 3015, 3016, 3017 },
		regions = { 76, 3021 },
		triggers = { "SELECT_OPTION_6", "GADGET_CREATE_25", "GADGET_STATE_CHANGE_37", "GADGET_STATE_CHANGE_38", "PLATFORM_REACH_POINT_39", "PLATFORM_REACH_POINT_70", "ENTER_REGION_76", "TIMER_EVENT_77", "ENTER_REGION_3021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_6(context, evt)
	-- 判断是gadgetid 3002 option_id 1
	if 3002 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 201016003 ；指定config：3002；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201016003, 3002, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（177，10，-48），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=177, y=10, z=-48}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201016003, monsters = {}, gadgets = {3020} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_25(context, evt)
	if 3002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_25(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_37(context, evt)
	if 3008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_37(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201016003, monsters = {}, gadgets = {3019} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_38(context, evt)
	if 3003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_38(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201016003, monsters = {}, gadgets = {3018} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_39(context, evt)
	-- 判断是gadgetid 为 3013的移动平台，是否到达了1016011 的路线中的 1 点
	
	if 3013 ~= evt.param1 then
	  return false
	end
	
	if 1016011 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"Key"为1
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_39(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 3013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_70(context, evt)
	-- 判断是gadgetid 为 3013的移动平台，是否到达了1016011 的路线中的 2 点
	
	if 3013 ~= evt.param1 then
	  return false
	end
	
	if 1016011 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_70(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 3013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_76(context, evt)
	if evt.param1 ~= 76 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_76(context, evt)
	-- 创建id为3020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟4秒后,向groupId为：201016003的对象,请求一次调用,并将string参数："Hints" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201016003, "Hints", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_77(context, evt)
	-- 创建id为3018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为3019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3021(context, evt)
	if evt.param1 ~= 3021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3021(context, evt)
	-- 调用提示id为 200050501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200050501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end