-- 基础信息
local base_info = {
	group_id = 201055003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3004, monster_id = 20010601, pos = { x = -47.835, y = 50.425, z = -86.411 }, rot = { x = 0.000, y = 346.915, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3005, monster_id = 20010604, pos = { x = -56.431, y = 50.110, z = -83.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1027 } },
	{ config_id = 3006, monster_id = 20010601, pos = { x = -66.687, y = 50.445, z = -85.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3027, monster_id = 20010601, pos = { x = -47.872, y = 50.417, z = -86.127 }, rot = { x = 0.000, y = 321.133, z = 0.000 }, level = 1 },
	{ config_id = 3028, monster_id = 20011304, pos = { x = -56.546, y = 50.110, z = -82.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 6105 } },
	{ config_id = 3029, monster_id = 20010601, pos = { x = -66.733, y = 50.443, z = -85.653 }, rot = { x = 0.000, y = 13.625, z = 0.000 }, level = 1 },
	{ config_id = 3030, monster_id = 20010501, pos = { x = -48.511, y = 49.841, z = -82.476 }, rot = { x = 0.000, y = 325.542, z = 0.000 }, level = 1 },
	{ config_id = 3031, monster_id = 20010501, pos = { x = -65.944, y = 49.841, z = -81.949 }, rot = { x = 0.000, y = 16.006, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3001, gadget_id = 70710197, pos = { x = -56.530, y = 64.100, z = -107.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 2 },
	{ config_id = 3003, gadget_id = 70350002, pos = { x = -37.972, y = 48.103, z = -76.672 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3008, gadget_id = 70350004, pos = { x = -77.021, y = 49.044, z = -76.732 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3009, gadget_id = 70350004, pos = { x = -56.592, y = 59.233, z = -87.084 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 3010, gadget_id = 70360002, pos = { x = -1.375, y = 53.762, z = -49.223 }, rot = { x = 0.000, y = 271.849, z = 0.000 }, level = 1 },
	{ config_id = 3011, gadget_id = 70360002, pos = { x = -1.638, y = 53.762, z = -73.361 }, rot = { x = 0.000, y = 269.199, z = 0.000 }, level = 1 },
	{ config_id = 3012, gadget_id = 70350003, pos = { x = 2.873, y = 53.641, z = -55.760 }, rot = { x = 0.000, y = 90.730, z = 0.000 }, level = 1 },
	{ config_id = 3013, gadget_id = 70350003, pos = { x = 2.793, y = 53.736, z = -74.955 }, rot = { x = 0.000, y = 90.730, z = 0.000 }, level = 1 },
	{ config_id = 3017, gadget_id = 70710197, pos = { x = -56.530, y = 64.100, z = -107.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 2 },
	{ config_id = 3018, gadget_id = 70710197, pos = { x = -56.530, y = 64.100, z = -107.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 2 },
	{ config_id = 3019, gadget_id = 70710197, pos = { x = -56.530, y = 64.100, z = -107.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 2 }
}

-- 区域
regions = {
	{ config_id = 3002, shape = RegionShape.SPHERE, radius = 10, pos = { x = -46.891, y = 53.762, z = -53.344 } },
	{ config_id = 3016, shape = RegionShape.CUBIC, size = { x = 10.000, y = 20.000, z = 15.000 }, pos = { x = 19.690, y = 53.763, z = -74.633 } },
	{ config_id = 3034, shape = RegionShape.SPHERE, radius = 15, pos = { x = -64.640, y = 48.832, z = -77.572 } },
	{ config_id = 3035, shape = RegionShape.SPHERE, radius = 5, pos = { x = -0.111, y = 53.839, z = -73.053 } },
	{ config_id = 3038, shape = RegionShape.SPHERE, radius = 8, pos = { x = -48.432, y = 57.002, z = -40.745 } }
}

-- 触发器
triggers = {
	{ config_id = 1003002, name = "ENTER_REGION_3002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3002", action = "action_EVENT_ENTER_REGION_3002" },
	{ config_id = 1003007, name = "ANY_MONSTER_DIE_3007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3007", action = "action_EVENT_ANY_MONSTER_DIE_3007", trigger_count = 3 },
	{ config_id = 1003015, name = "QUEST_FINISH_3015", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_3015", action = "action_EVENT_QUEST_FINISH_3015" },
	{ config_id = 1003016, name = "ENTER_REGION_3016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3016", action = "action_EVENT_ENTER_REGION_3016" },
	{ config_id = 1003020, name = "TIMER_EVENT_3020", event = EventType.EVENT_TIMER_EVENT, source = "start2", condition = "", action = "action_EVENT_TIMER_EVENT_3020" },
	{ config_id = 1003021, name = "TIMER_EVENT_3021", event = EventType.EVENT_TIMER_EVENT, source = "start3", condition = "", action = "action_EVENT_TIMER_EVENT_3021" },
	{ config_id = 1003022, name = "TIMER_EVENT_3022", event = EventType.EVENT_TIMER_EVENT, source = "start4", condition = "", action = "action_EVENT_TIMER_EVENT_3022" },
	{ config_id = 1003023, name = "TIMER_EVENT_3023", event = EventType.EVENT_TIMER_EVENT, source = "time1", condition = "", action = "action_EVENT_TIMER_EVENT_3023", trigger_count = 0 },
	{ config_id = 1003024, name = "TIMER_EVENT_3024", event = EventType.EVENT_TIMER_EVENT, source = "time2", condition = "", action = "action_EVENT_TIMER_EVENT_3024", trigger_count = 0 },
	{ config_id = 1003025, name = "TIMER_EVENT_3025", event = EventType.EVENT_TIMER_EVENT, source = "time3", condition = "", action = "action_EVENT_TIMER_EVENT_3025", trigger_count = 0 },
	{ config_id = 1003026, name = "TIMER_EVENT_3026", event = EventType.EVENT_TIMER_EVENT, source = "time4", condition = "", action = "action_EVENT_TIMER_EVENT_3026", trigger_count = 0 },
	{ config_id = 1003032, name = "VARIABLE_CHANGE_3032", event = EventType.EVENT_VARIABLE_CHANGE, source = "wave", condition = "condition_EVENT_VARIABLE_CHANGE_3032", action = "action_EVENT_VARIABLE_CHANGE_3032" },
	{ config_id = 1003033, name = "VARIABLE_CHANGE_3033", event = EventType.EVENT_VARIABLE_CHANGE, source = "wave", condition = "condition_EVENT_VARIABLE_CHANGE_3033", action = "action_EVENT_VARIABLE_CHANGE_3033" },
	{ config_id = 1003034, name = "ENTER_REGION_3034", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3034", action = "action_EVENT_ENTER_REGION_3034" },
	{ config_id = 1003035, name = "ENTER_REGION_3035", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3035", action = "action_EVENT_ENTER_REGION_3035" },
	{ config_id = 1003036, name = "PLATFORM_REACH_POINT_3036", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_3036", action = "action_EVENT_PLATFORM_REACH_POINT_3036", trigger_count = 0 },
	{ config_id = 1003037, name = "PLATFORM_REACH_POINT_3037", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_3037", action = "action_EVENT_PLATFORM_REACH_POINT_3037", trigger_count = 0 },
	{ config_id = 1003038, name = "ENTER_REGION_3038", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3038", action = "action_EVENT_ENTER_REGION_3038" }
}

-- 变量
variables = {
	{ config_id = 1, name = "wave", value = 0, no_refresh = false },
	{ config_id = 2, name = "die", value = 0, no_refresh = false }
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
		monsters = { 3004, 3005, 3006 },
		gadgets = { 3003, 3008, 3009, 3010, 3011, 3012, 3013 },
		regions = { 3002, 3016, 3034, 3035, 3038 },
		triggers = { "ENTER_REGION_3002", "ANY_MONSTER_DIE_3007", "QUEST_FINISH_3015", "ENTER_REGION_3016", "TIMER_EVENT_3020", "TIMER_EVENT_3021", "TIMER_EVENT_3022", "TIMER_EVENT_3023", "TIMER_EVENT_3024", "TIMER_EVENT_3025", "TIMER_EVENT_3026", "VARIABLE_CHANGE_3032", "VARIABLE_CHANGE_3033", "ENTER_REGION_3034", "ENTER_REGION_3035", "PLATFORM_REACH_POINT_3036", "PLATFORM_REACH_POINT_3037", "ENTER_REGION_3038" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_3002(context, evt)
	if evt.param1 ~= 3002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3002(context, evt)
	-- 调用提示id为 10550101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10550101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-51，59，-64），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-51, y=59, z=-64}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3007(context, evt)
	-- 针对当前group内变量名为 "wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_3015(context, evt)
	--检查ID为1101210的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1101210 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_3015(context, evt)
	-- 将configid为 3010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201055006, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201055006, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3016(context, evt)
	if evt.param1 ~= 3016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3016(context, evt)
	-- 调用提示id为 10550201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10550201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3020(context, evt)
	-- 延迟80秒后,向groupId为：201055003的对象,请求一次调用,并将string参数："time2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055003, "time2", 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 创建id为3017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3021(context, evt)
	-- 延迟80秒后,向groupId为：201055003的对象,请求一次调用,并将string参数："time3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055003, "time3", 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 创建id为3018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3022(context, evt)
	-- 延迟80秒后,向groupId为：201055003的对象,请求一次调用,并将string参数："time4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055003, "time4", 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 创建id为3019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3023(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201055003, EntityType.GADGET, 3001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为3001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟80秒后,向groupId为：201055003的对象,请求一次调用,并将string参数："time1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055003, "time1", 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3024(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201055003, EntityType.GADGET, 3017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为3017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟80秒后,向groupId为：201055003的对象,请求一次调用,并将string参数："time2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055003, "time2", 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3025(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201055003, EntityType.GADGET, 3018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为3018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟80秒后,向groupId为：201055003的对象,请求一次调用,并将string参数："time3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055003, "time3", 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3026(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201055003, EntityType.GADGET, 3019 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为3019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟80秒后,向groupId为：201055003的对象,请求一次调用,并将string参数："time4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055003, "time4", 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3032(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave"为1
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3032(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3027, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3028, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3029, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3030, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3031, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3033(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave"为2
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3033(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201055006, 5)
	
	-- 将configid为 3003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3003, GadgetState.GearStart) then
			return -1
		end 
	
	-- 取消group中对应名称的TimerEvent
	    ScriptLib.CancelGroupTimerEvent(context, 201055003, "start2") 
	
	-- 取消group中对应名称的TimerEvent
	    ScriptLib.CancelGroupTimerEvent(context, 201055003, "start3") 
	
	-- 取消group中对应名称的TimerEvent
	    ScriptLib.CancelGroupTimerEvent(context, 201055003, "start4") 
	
	-- 取消group中对应名称的TimerEvent
	    ScriptLib.CancelGroupTimerEvent(context, 201055003, "time1") 
	
	-- 取消group中对应名称的TimerEvent
	    ScriptLib.CancelGroupTimerEvent(context, 201055003, "time2") 
	
	
	-- 取消group中对应名称的TimerEvent
	    ScriptLib.CancelGroupTimerEvent(context, 201055003, "time3")
	
	-- 取消group中对应名称的TimerEvent
	    ScriptLib.CancelGroupTimerEvent(context, 201055003, "time4")
	
	-- 停止移动平台
	    ScriptLib.StopPlatform(context, 3001)
	
	-- 停止移动平台
	    ScriptLib.StopPlatform(context, 3017)
	
	-- 停止移动平台
	    ScriptLib.StopPlatform(context, 3018)
	
	-- 停止移动平台
	    ScriptLib.StopPlatform(context, 3019)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3034(context, evt)
	if evt.param1 ~= 3034 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3034(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201055006, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3035(context, evt)
	if evt.param1 ~= 3035 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3035(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "20105500301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_3036(context, evt)
	-- 判断是gadgetid 为 3001的移动平台，是否到达了2 的路线中的 1 点
	
	if (3001 ~= evt.param1) and (3017 ~= evt.param1) and (3018 ~= evt.param1) and (3019 ~= evt.param1) then
	  return false
	end
	
	if 2 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_3036(context, evt)
	-- 将configid为 3009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_3037(context, evt)
	-- 判断是gadgetid 为 3001的移动平台，是否到达了2 的路线中的 2 点
	
	if (3001 ~= evt.param1) and (3017 ~= evt.param1) and (3018 ~= evt.param1) and (3019 ~= evt.param1) then
	  return false
	end
	
	
	if 2 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_3037(context, evt)
	-- 将configid为 3009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3038(context, evt)
	if evt.param1 ~= 3038 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3038(context, evt)
	-- 创建id为3001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟80秒后,向groupId为：201055003的对象,请求一次调用,并将string参数："time1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055003, "time1", 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟20秒后,向groupId为：201055003的对象,请求一次调用,并将string参数："start2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055003, "start2", 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟40秒后,向groupId为：201055003的对象,请求一次调用,并将string参数："start3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055003, "start3", 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟60秒后,向groupId为：201055003的对象,请求一次调用,并将string参数："start4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055003, "start4", 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201055006, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201055006, 4)
	
	return 0
end