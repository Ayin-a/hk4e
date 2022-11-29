-- 基础信息
local base_info = {
	group_id = 133104143
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
}

-- 区域
regions = {
	{ config_id = 143001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 746.365, y = 204.154, z = 241.795 }, area_id = 9 },
	{ config_id = 143002, shape = RegionShape.SPHERE, radius = 4, pos = { x = 718.769, y = 205.007, z = 246.642 }, area_id = 9 },
	{ config_id = 143003, shape = RegionShape.SPHERE, radius = 4, pos = { x = 713.222, y = 205.129, z = 214.446 }, area_id = 9 },
	{ config_id = 143004, shape = RegionShape.SPHERE, radius = 30, pos = { x = 742.215, y = 204.466, z = 243.936 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1143001, name = "ENTER_REGION_143001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_143001", action = "action_EVENT_ENTER_REGION_143001" },
	{ config_id = 1143002, name = "ENTER_REGION_143002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_143002", action = "action_EVENT_ENTER_REGION_143002" },
	{ config_id = 1143003, name = "ENTER_REGION_143003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_143003", action = "action_EVENT_ENTER_REGION_143003" },
	{ config_id = 1143004, name = "ENTER_REGION_143004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_143004", action = "action_EVENT_ENTER_REGION_143004" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 143001, 143004 },
		triggers = { "ENTER_REGION_143001", "ENTER_REGION_143004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 143002 },
		triggers = { "ENTER_REGION_143002" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 143003 },
		triggers = { "ENTER_REGION_143003" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_143001(context, evt)
	if evt.param1 ~= 143001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_143001(context, evt)
	-- 触发镜头注目，注目位置为坐标（736，205，250），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=736, y=205, z=250}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331041431") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=746,y=204,z=241}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110201, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_143002(context, evt)
	if evt.param1 ~= 143002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_143002(context, evt)
	-- 触发镜头注目，注目位置为坐标（710，204，224），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=710, y=204, z=224}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=718,y=205,z=246}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110204, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331041432") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_143003(context, evt)
	if evt.param1 ~= 143003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_143003(context, evt)
	-- 触发镜头注目，注目位置为坐标（730，203，230），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=730, y=203, z=230}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=713,y=205,z=214}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110207, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331041433") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_143004(context, evt)
	if evt.param1 ~= 143004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_143004(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=742,y=204,z=245}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110200, pos, 90) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end