-- 基础信息
local base_info = {
	group_id = 133302487
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
	-- 防卸载
	{ config_id = 487001, gadget_id = 70360001, pos = { x = -45.084, y = 275.964, z = 2747.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
	-- 蘑菇洞上的
	{ config_id = 487002, shape = RegionShape.SPHERE, radius = 25, pos = { x = -19.456, y = 274.270, z = 2983.669 }, area_id = 20 },
	-- 香醉坡的
	{ config_id = 487003, shape = RegionShape.SPHERE, radius = 25, pos = { x = -339.497, y = 285.269, z = 2115.971 }, area_id = 24 },
	-- 无郁稠林的
	{ config_id = 487004, shape = RegionShape.SPHERE, radius = 18, pos = { x = 143.364, y = 259.554, z = 2295.785 }, area_id = 20 }
}

-- 触发器
triggers = {
	-- 蘑菇洞上的
	{ config_id = 1487002, name = "ENTER_REGION_487002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_487002", action = "action_EVENT_ENTER_REGION_487002" },
	-- 香醉坡的
	{ config_id = 1487003, name = "ENTER_REGION_487003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_487003", action = "action_EVENT_ENTER_REGION_487003" },
	-- 无郁稠林的
	{ config_id = 1487004, name = "ENTER_REGION_487004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_487004", action = "action_EVENT_ENTER_REGION_487004" },
	{ config_id = 1487005, name = "VARIABLE_CHANGE_487005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_487005", action = "action_EVENT_VARIABLE_CHANGE_487005" },
	{ config_id = 1487006, name = "VARIABLE_CHANGE_487006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_487006", action = "action_EVENT_VARIABLE_CHANGE_487006" },
	{ config_id = 1487007, name = "VARIABLE_CHANGE_487007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_487007", action = "action_EVENT_VARIABLE_CHANGE_487007" },
	{ config_id = 1487008, name = "VARIABLE_CHANGE_487008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_487008", action = "action_EVENT_VARIABLE_CHANGE_487008" },
	{ config_id = 1487009, name = "VARIABLE_CHANGE_487009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_487009", action = "action_EVENT_VARIABLE_CHANGE_487009" },
	{ config_id = 1487010, name = "VARIABLE_CHANGE_487010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_487010", action = "action_EVENT_VARIABLE_CHANGE_487010" }
}

-- 变量
variables = {
	{ config_id = 1, name = "paimon0", value = 0, no_refresh = true },
	{ config_id = 2, name = "paimon1", value = 0, no_refresh = true }
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
		gadgets = { 487001 },
		regions = { 487002, 487003, 487004 },
		triggers = { "ENTER_REGION_487002", "ENTER_REGION_487003", "ENTER_REGION_487004", "VARIABLE_CHANGE_487005", "VARIABLE_CHANGE_487006", "VARIABLE_CHANGE_487007", "VARIABLE_CHANGE_487008", "VARIABLE_CHANGE_487009", "VARIABLE_CHANGE_487010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_487002(context, evt)
	if evt.param1 ~= 487002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_487002(context, evt)
	-- 针对当前group内变量名为 "paimon0" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "paimon0", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-19.45576, y=274.2698, z=2983.669}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-19.45576, y=274.2698, z=2983.669}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_487003(context, evt)
	if evt.param1 ~= 487003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_487003(context, evt)
	-- 针对当前group内变量名为 "paimon0" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "paimon0", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-340.0269, y=282.6191, z=2116.862}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-340.0269, y=282.6191, z=2116.862}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_487004(context, evt)
	if evt.param1 ~= 487004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_487004(context, evt)
	-- 针对当前group内变量名为 "paimon0" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "paimon0", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=144.146, y=258.4828, z=2299.735}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=144.146, y=258.4828, z=2299.735}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_487005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"paimon0"为1
	if ScriptLib.GetGroupVariableValue(context, "paimon0") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_487005(context, evt)
	-- 调用提示id为 33020101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33020101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_487006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"paimon0"为2
	if ScriptLib.GetGroupVariableValue(context, "paimon0") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_487006(context, evt)
	-- 调用提示id为 33020104 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33020104) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_487007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"paimon0"为3
	if ScriptLib.GetGroupVariableValue(context, "paimon0") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_487007(context, evt)
	-- 调用提示id为 33020106 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33020106) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_487008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"paimon1"为1
	if ScriptLib.GetGroupVariableValue(context, "paimon1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_487008(context, evt)
	-- 调用提示id为 33020103 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33020103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_487009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"paimon1"为2
	if ScriptLib.GetGroupVariableValue(context, "paimon1") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_487009(context, evt)
	-- 调用提示id为 33020105 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33020105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_487010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"paimon1"为3
	if ScriptLib.GetGroupVariableValue(context, "paimon1") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_487010(context, evt)
	-- 调用提示id为 33020107 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33020107) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end