-- 基础信息
local base_info = {
	group_id = 133315331
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
}

-- 触发器
triggers = {
	{ config_id = 1331001, name = "VARIABLE_CHANGE_331001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_331001", action = "action_EVENT_VARIABLE_CHANGE_331001" },
	{ config_id = 1331002, name = "VARIABLE_CHANGE_331002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_331002", action = "action_EVENT_VARIABLE_CHANGE_331002" },
	{ config_id = 1331003, name = "VARIABLE_CHANGE_331003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_331003", action = "action_EVENT_VARIABLE_CHANGE_331003" }
}

-- 变量
variables = {
	{ config_id = 1, name = "battle1", value = 0, no_refresh = true },
	{ config_id = 2, name = "battle2", value = 0, no_refresh = true },
	{ config_id = 3, name = "battle3", value = 0, no_refresh = true }
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
		triggers = { "VARIABLE_CHANGE_331001", "VARIABLE_CHANGE_331002", "VARIABLE_CHANGE_331003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_331001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"battle1"为1
	if ScriptLib.GetGroupVariableValue(context, "battle1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_331001(context, evt)
	-- 调用提示id为 730632414 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730632414) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_331002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"battle2"为1
	if ScriptLib.GetGroupVariableValue(context, "battle2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_331002(context, evt)
	-- 调用提示id为 7306328 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306328) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_331003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"battle3"为1
	if ScriptLib.GetGroupVariableValue(context, "battle3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_331003(context, evt)
	-- 调用提示id为 7306320 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306320) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=127.1205, y=106.1868, z=2843.843}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=127.1205, y=106.1868, z=2843.843}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end