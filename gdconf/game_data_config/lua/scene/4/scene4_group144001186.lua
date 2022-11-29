-- 基础信息
local base_info = {
	group_id = 144001186
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
	-- 踩踏到1号按钮
	{ config_id = 186001, shape = RegionShape.SPHERE, radius = 0.8, pos = { x = 311.997, y = 119.991, z = 308.736 }, area_id = 102 },
	-- 踩踏到2号按钮
	{ config_id = 186002, shape = RegionShape.SPHERE, radius = 0.8, pos = { x = 309.107, y = 119.991, z = 309.744 }, area_id = 102 },
	-- 踩踏到3号按钮
	{ config_id = 186003, shape = RegionShape.SPHERE, radius = 0.8, pos = { x = 308.152, y = 119.991, z = 312.726 }, area_id = 102 },
	-- 踩踏到4号按钮
	{ config_id = 186004, shape = RegionShape.SPHERE, radius = 0.8, pos = { x = 310.133, y = 119.991, z = 314.704 }, area_id = 102 },
	-- 踩踏到5号按钮
	{ config_id = 186005, shape = RegionShape.SPHERE, radius = 0.8, pos = { x = 312.931, y = 119.991, z = 314.148 }, area_id = 102 }
}

-- 触发器
triggers = {
	-- 踩踏到1号按钮
	{ config_id = 1186001, name = "ENTER_REGION_186001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_186001", action = "action_EVENT_ENTER_REGION_186001" },
	-- 踩踏到2号按钮
	{ config_id = 1186002, name = "ENTER_REGION_186002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_186002", action = "action_EVENT_ENTER_REGION_186002" },
	-- 踩踏到3号按钮
	{ config_id = 1186003, name = "ENTER_REGION_186003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_186003", action = "action_EVENT_ENTER_REGION_186003" },
	-- 踩踏到4号按钮
	{ config_id = 1186004, name = "ENTER_REGION_186004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_186004", action = "action_EVENT_ENTER_REGION_186004" },
	-- 踩踏到5号按钮
	{ config_id = 1186005, name = "ENTER_REGION_186005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_186005", action = "action_EVENT_ENTER_REGION_186005" },
	{ config_id = 1186006, name = "VARIABLE_CHANGE_186006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_186006", action = "action_EVENT_VARIABLE_CHANGE_186006" },
	{ config_id = 1186007, name = "VARIABLE_CHANGE_186007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_186007", action = "action_EVENT_VARIABLE_CHANGE_186007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "ifreached", value = 0, no_refresh = false }
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
		regions = { 186001, 186002, 186003, 186004, 186005 },
		triggers = { "ENTER_REGION_186001", "ENTER_REGION_186002", "ENTER_REGION_186003", "ENTER_REGION_186004", "ENTER_REGION_186005", "VARIABLE_CHANGE_186006", "VARIABLE_CHANGE_186007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
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
	},
	{
		-- suite_id = 4,
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

-- 触发条件
function condition_EVENT_ENTER_REGION_186001(context, evt)
	if evt.param1 ~= 186001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"ifreached"为0
	if ScriptLib.GetGroupVariableValue(context, "ifreached") ~= 0 then
			return false
	end
	
	-- 判断变量""为0
	if ScriptLib.GetGroupVariableValue(context, "") ~= 0 then
			return false
	end
	
	
	if 0 == ScriptLib.GetGroupVariableValueByGroup(context, "Water_Level", 144001008) then
	        return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_186001(context, evt)
	-- 触发镜头注目，注目位置为坐标（320.0499，227.2974，202.4648），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=320.0499, y=227.2974, z=202.4648}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 针对当前group内变量名为 "ifreached" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ifreached", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900502") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_186002(context, evt)
	if evt.param1 ~= 186002 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"ifreached"为0
	if ScriptLib.GetGroupVariableValue(context, "ifreached") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_186002(context, evt)
	-- 触发镜头注目，注目位置为坐标（223.4622，195.1101，167.9539），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=223.4622, y=195.1101, z=167.9539}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 针对当前group内变量名为 "ifreached" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ifreached", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900502") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_186003(context, evt)
	if evt.param1 ~= 186003 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"ifreached"为0
	if ScriptLib.GetGroupVariableValue(context, "ifreached") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_186003(context, evt)
	-- 触发镜头注目，注目位置为坐标（233.6515，200.9646，313.6678），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=233.6515, y=200.9646, z=313.6678}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 针对当前group内变量名为 "ifreached" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ifreached", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900502") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_186004(context, evt)
	if evt.param1 ~= 186004 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"ifreached"为0
	if ScriptLib.GetGroupVariableValue(context, "ifreached") ~= 0 then
			return false
	end
	
	
	if 0 == ScriptLib.GetGroupVariableValueByGroup(context, "Water_Level", 144001006) then
	        return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_186004(context, evt)
	-- 触发镜头注目，注目位置为坐标（240.8238，181.9558，419.0165），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=240.8238, y=181.9558, z=419.0165}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 针对当前group内变量名为 "ifreached" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ifreached", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900502") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_186005(context, evt)
	if evt.param1 ~= 186005 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"ifreached"为0
	if ScriptLib.GetGroupVariableValue(context, "ifreached") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_186005(context, evt)
	-- 触发镜头注目，注目位置为坐标（353.885，179.5354，410.7048），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=353.885, y=179.5354, z=410.7048}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 针对当前group内变量名为 "ifreached" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ifreached", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900502") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_186006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ifreached"为1
	if ScriptLib.GetGroupVariableValue(context, "ifreached") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_186006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1110258 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110258) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_186007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"complete"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "complete", 144001004) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_186007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144001186, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end