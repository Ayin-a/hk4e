-- 基础信息
local base_info = {
	group_id = 133315070
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
	{ config_id = 70009, gadget_id = 70360001, pos = { x = 489.499, y = 97.000, z = 2486.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
	-- 平台1草种子
	{ config_id = 70001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 526.363, y = 135.762, z = 2384.884 }, area_id = 20 },
	-- 平台2草种子
	{ config_id = 70002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 578.596, y = 138.534, z = 2574.380 }, area_id = 20 },
	-- 平台3草种子
	{ config_id = 70003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 466.642, y = 138.382, z = 2481.920 }, area_id = 20 },
	-- 平台1去2
	{ config_id = 70004, shape = RegionShape.SPHERE, radius = 8, pos = { x = 540.627, y = 126.379, z = 2405.065 }, area_id = 20 },
	-- 平台2去3
	{ config_id = 70005, shape = RegionShape.SPHERE, radius = 8, pos = { x = 515.955, y = 135.162, z = 2556.457 }, area_id = 20 }
}

-- 触发器
triggers = {
	-- 平台1草种子
	{ config_id = 1070001, name = "ENTER_REGION_70001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_70001", action = "action_EVENT_ENTER_REGION_70001" },
	-- 平台2草种子
	{ config_id = 1070002, name = "ENTER_REGION_70002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_70002", action = "action_EVENT_ENTER_REGION_70002" },
	-- 平台3草种子
	{ config_id = 1070003, name = "ENTER_REGION_70003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_70003", action = "action_EVENT_ENTER_REGION_70003" },
	-- 平台1去2
	{ config_id = 1070004, name = "ENTER_REGION_70004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_70004", action = "action_EVENT_ENTER_REGION_70004" },
	-- 平台2去3
	{ config_id = 1070005, name = "ENTER_REGION_70005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_70005", action = "action_EVENT_ENTER_REGION_70005" },
	{ config_id = 1070006, name = "QUEST_START_70006", event = EventType.EVENT_QUEST_START, source = "7306626", condition = "", action = "action_EVENT_QUEST_START_70006", trigger_count = 0 },
	{ config_id = 1070007, name = "QUEST_START_70007", event = EventType.EVENT_QUEST_START, source = "7306627", condition = "", action = "action_EVENT_QUEST_START_70007", trigger_count = 0 },
	{ config_id = 1070008, name = "QUEST_START_70008", event = EventType.EVENT_QUEST_START, source = "7306628", condition = "", action = "action_EVENT_QUEST_START_70008", trigger_count = 0 }
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
		gadgets = { 70009 },
		regions = { },
		triggers = { "QUEST_START_70006", "QUEST_START_70007", "QUEST_START_70008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 70001, 70002, 70003 },
		triggers = { "ENTER_REGION_70001", "ENTER_REGION_70002", "ENTER_REGION_70003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 70004 },
		triggers = { "ENTER_REGION_70004" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 70005 },
		triggers = { "ENTER_REGION_70005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_70001(context, evt)
	if evt.param1 ~= 70001 then return false end
	
	-- 判断是区域70001
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 70001 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_70001(context, evt)
	-- 调用提示id为 7306614 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306614) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=526.3626, y=135.7622, z=2384.884}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=526.3626, y=135.7622, z=2384.884}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_70002(context, evt)
	if evt.param1 ~= 70002 then return false end
	
	-- 判断是区域70002
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 70002 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_70002(context, evt)
	-- 调用提示id为 7306613 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306613) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=578.5963, y=138.5344, z=2574.38}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=578.5963, y=138.5344, z=2574.38}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_70003(context, evt)
	if evt.param1 ~= 70003 then return false end
	
	-- 判断是gadgetid 为 217002的移动平台，是否到达了331500071 的路线中的 41 点
	
	if 217002 ~= evt.param1 then
	  return false
	end
	
	if 331500071 ~= evt.param2 then
	  return false
	end
	
	if 41 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_70003(context, evt)
	-- 调用提示id为 7306616 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306616) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=466.6422, y=138.3822, z=2481.92}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=466.6422, y=138.3822, z=2481.92}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_70004(context, evt)
	if evt.param1 ~= 70004 then return false end
	
	-- 判断是区域70004
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 70004 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_70004(context, evt)
	-- 调用提示id为 7306609 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306609) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=550.8134, y=139.8226, z=2431.255}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=550.8134, y=139.8226, z=2431.255}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_70005(context, evt)
	if evt.param1 ~= 70005 then return false end
	
	-- 判断是区域70005
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 70005 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_70005(context, evt)
	-- 调用提示id为 7306610 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306610) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=481.3546, y=136.2254, z=2508.021}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=481.3546, y=136.2254, z=2508.021}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_70006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315070, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_70007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315070, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_70008(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315070, 4)
	
	return 0
end

require "V3_0/DeathFieldStandard"