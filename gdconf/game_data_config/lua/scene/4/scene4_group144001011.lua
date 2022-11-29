-- 基础信息
local base_info = {
	group_id = 144001011
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
	-- 派蒙远远的看到琴键说：“那是什么！我们过去看看吧！”
	{ config_id = 11001, shape = RegionShape.SPHERE, radius = 60, pos = { x = 310.986, y = 120.500, z = 311.906 }, area_id = 102 },
	{ config_id = 11002, shape = RegionShape.SPHERE, radius = 1, pos = { x = 311.950, y = 120.020, z = 308.388 }, area_id = 102 },
	-- 琴键1
	{ config_id = 11003, shape = RegionShape.SPHERE, radius = 1, pos = { x = 309.431, y = 120.020, z = 308.388 }, area_id = 102 },
	-- 琴键2
	{ config_id = 11004, shape = RegionShape.SPHERE, radius = 1, pos = { x = 307.231, y = 120.020, z = 312.763 }, area_id = 102 },
	-- 琴键2
	{ config_id = 11005, shape = RegionShape.SPHERE, radius = 1, pos = { x = 309.437, y = 120.020, z = 315.294 }, area_id = 102 },
	-- 琴键2
	{ config_id = 11006, shape = RegionShape.SPHERE, radius = 1, pos = { x = 313.271, y = 120.020, z = 315.149 }, area_id = 102 },
	{ config_id = 11008, shape = RegionShape.SPHERE, radius = 1, pos = { x = 188.000, y = 216.657, z = 319.761 }, area_id = 102 },
	{ config_id = 11009, shape = RegionShape.SPHERE, radius = 1, pos = { x = 184.082, y = 216.657, z = 319.348 }, area_id = 102 }
}

-- 触发器
triggers = {
	-- 派蒙远远的看到琴键说：“那是什么！我们过去看看吧！”
	{ config_id = 1011001, name = "ENTER_REGION_11001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11001", action = "action_EVENT_ENTER_REGION_11001" },
	{ config_id = 1011002, name = "ENTER_REGION_11002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 琴键1
	{ config_id = 1011003, name = "ENTER_REGION_11003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11003", action = "action_EVENT_ENTER_REGION_11003" },
	-- 琴键2
	{ config_id = 1011004, name = "ENTER_REGION_11004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11004", action = "action_EVENT_ENTER_REGION_11004" },
	-- 琴键2
	{ config_id = 1011005, name = "ENTER_REGION_11005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11005", action = "action_EVENT_ENTER_REGION_11005" },
	-- 琴键2
	{ config_id = 1011006, name = "ENTER_REGION_11006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11006", action = "action_EVENT_ENTER_REGION_11006" },
	{ config_id = 1011007, name = "VARIABLE_CHANGE_11007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_11007", action = "action_EVENT_VARIABLE_CHANGE_11007" },
	{ config_id = 1011008, name = "ENTER_REGION_11008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11008", action = "action_EVENT_ENTER_REGION_11008" },
	{ config_id = 1011009, name = "ENTER_REGION_11009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11009", action = "action_EVENT_ENTER_REGION_11009" },
	{ config_id = 1011010, name = "VARIABLE_CHANGE_11010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_11010", action = "action_EVENT_VARIABLE_CHANGE_11010" },
	{ config_id = 1011011, name = "TIMER_EVENT_11011", event = EventType.EVENT_TIMER_EVENT, source = "40010111", condition = "", action = "action_EVENT_TIMER_EVENT_11011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "4001011", value = 0, no_refresh = false },
	{ config_id = 2, name = "40010112", value = 0, no_refresh = false }
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
		regions = { 11001 },
		triggers = { "ENTER_REGION_11001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_11001(context, evt)
	if evt.param1 ~= 11001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11001(context, evt)
	-- 调用提示id为 1110256 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110256) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（310.9864，120.5，311.9057），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=310.9864, y=120.5, z=311.9057}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11003(context, evt)
	if evt.param1 ~= 11003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11003(context, evt)
	-- 针对当前group内变量名为 "4001011" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "4001011", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11004(context, evt)
	if evt.param1 ~= 11004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11004(context, evt)
	-- 针对当前group内变量名为 "4001011" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "4001011", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11005(context, evt)
	if evt.param1 ~= 11005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11005(context, evt)
	-- 针对当前group内变量名为 "4001011" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "4001011", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11006(context, evt)
	if evt.param1 ~= 11006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11006(context, evt)
	-- 针对当前group内变量名为 "4001011" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "4001011", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_11007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"4001011"为1
	if ScriptLib.GetGroupVariableValue(context, "4001011") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11007(context, evt)
	-- 调用提示id为 1110258 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110258) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（245.7023，191.6475，313.3885），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=245.7023, y=191.6475, z=313.3885}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11008(context, evt)
	if evt.param1 ~= 11008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11008(context, evt)
	-- 针对当前group内变量名为 "40010112" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "40010112", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11009(context, evt)
	if evt.param1 ~= 11009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11009(context, evt)
	-- 针对当前group内变量名为 "40010112" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "40010112", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_11010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"40010112"为1
	if ScriptLib.GetGroupVariableValue(context, "40010112") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11010(context, evt)
	-- 延迟3秒后,向groupId为：144001011的对象,请求一次调用,并将string参数："40010111" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001011, "40010111", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 调用提示id为 1110260 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110260) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_11011(context, evt)
	-- 调用提示id为 1110234 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110234) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end