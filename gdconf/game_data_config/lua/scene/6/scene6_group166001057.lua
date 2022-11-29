-- 基础信息
local base_info = {
	group_id = 166001057
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 57018, monster_id = 20011401, pos = { x = 1010.951, y = 843.463, z = 536.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", isOneoff = true, area_id = 300 },
	{ config_id = 57020, monster_id = 28010202, pos = { x = 1008.072, y = 843.590, z = 530.584 }, rot = { x = 0.000, y = 108.960, z = 0.000 }, level = 36, drop_tag = "采集动物", isOneoff = true, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 57001, gadget_id = 70210102, pos = { x = 1006.070, y = 848.329, z = 529.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050169, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 300 },
	{ config_id = 57003, gadget_id = 70220064, pos = { x = 1006.075, y = 848.311, z = 529.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 57004, gadget_id = 70220064, pos = { x = 1005.494, y = 843.896, z = 537.185 }, rot = { x = 0.000, y = 76.414, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 57005, gadget_id = 70220064, pos = { x = 1018.136, y = 846.594, z = 525.328 }, rot = { x = 0.000, y = 254.171, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 57006, gadget_id = 70220064, pos = { x = 1015.879, y = 845.640, z = 525.166 }, rot = { x = 0.000, y = 39.251, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 57007, gadget_id = 70220064, pos = { x = 1006.792, y = 843.482, z = 525.719 }, rot = { x = 0.000, y = 39.251, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 57009, gadget_id = 70220064, pos = { x = 1017.991, y = 842.897, z = 532.838 }, rot = { x = 0.000, y = 39.251, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 57011, gadget_id = 70220064, pos = { x = 1008.722, y = 843.364, z = 530.203 }, rot = { x = 0.000, y = 39.251, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 57012, gadget_id = 70220064, pos = { x = 1008.106, y = 843.364, z = 530.635 }, rot = { x = 0.000, y = 39.251, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 57013, gadget_id = 70220064, pos = { x = 1011.357, y = 843.164, z = 537.270 }, rot = { x = 0.000, y = 118.686, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 57014, gadget_id = 70220064, pos = { x = 1011.298, y = 843.214, z = 536.581 }, rot = { x = 0.000, y = 39.251, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 57015, gadget_id = 70220064, pos = { x = 1010.618, y = 843.203, z = 536.823 }, rot = { x = 0.000, y = 39.251, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 57021, gadget_id = 70290204, pos = { x = 1011.299, y = 843.686, z = 527.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 57022, gadget_id = 70290233, pos = { x = 1010.870, y = 843.870, z = 528.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 57024, gadget_id = 70360089, pos = { x = 1006.189, y = 848.575, z = 529.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 57025, gadget_id = 70290347, pos = { x = 1006.338, y = 844.671, z = 531.245 }, rot = { x = 0.000, y = 8.109, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, interact_id = 87, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 57002, shape = RegionShape.SPHERE, radius = 25, pos = { x = 1008.542, y = 843.364, z = 530.403 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1057002, name = "ENTER_REGION_57002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_57002" },
	{ config_id = 1057008, name = "ANY_GADGET_DIE_57008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_57008", action = "action_EVENT_ANY_GADGET_DIE_57008" },
	{ config_id = 1057010, name = "GADGET_STATE_CHANGE_57010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_57010", action = "action_EVENT_GADGET_STATE_CHANGE_57010" },
	{ config_id = 1057016, name = "GROUP_LOAD_57016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_57016", action = "action_EVENT_GROUP_LOAD_57016", trigger_count = 0 },
	{ config_id = 1057017, name = "ANY_GADGET_DIE_57017", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_57017", action = "action_EVENT_ANY_GADGET_DIE_57017" },
	{ config_id = 1057019, name = "ANY_GADGET_DIE_57019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_57019", action = "action_EVENT_ANY_GADGET_DIE_57019" },
	{ config_id = 1057023, name = "ANY_GADGET_DIE_57023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_57023", action = "action_EVENT_ANY_GADGET_DIE_57023" }
}

-- 变量
variables = {
	{ config_id = 1, name = "keyA", value = 0, no_refresh = true }
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
		gadgets = { 57004, 57005, 57006, 57007, 57009, 57011, 57012, 57025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 57003, 57004, 57005, 57006, 57007, 57009, 57013, 57014, 57015, 57021, 57022, 57024, 57025 },
		regions = { 57002 },
		triggers = { "ENTER_REGION_57002", "ANY_GADGET_DIE_57008", "GADGET_STATE_CHANGE_57010", "GROUP_LOAD_57016", "ANY_GADGET_DIE_57017", "ANY_GADGET_DIE_57019", "ANY_GADGET_DIE_57023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
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

-- 触发操作
function action_EVENT_ENTER_REGION_57002(context, evt)
	-- 调用提示id为 60010133 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010133) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（1007.128，844.9152，530.3283），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1007.128, y=844.9152, z=530.3283}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 1 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_57008(context, evt)
	if 57003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_57008(context, evt)
	-- 创建id为57001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 57001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 57024 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_57010(context, evt)
	if 57001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_57010(context, evt)
	-- 将本组内变量名为 "keyA" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "keyA", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 60010136 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010136) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_57016(context, evt)
	-- 判断变量"keyA"为0
	if ScriptLib.GetGroupVariableValue(context, "keyA") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_57016(context, evt)
	-- 创建id为57003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 57003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_57017(context, evt)
	if 57014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_57017(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 57018, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_57019(context, evt)
	if 57012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_57019(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 57020, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_57023(context, evt)
	if 57021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_57023(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 57022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end