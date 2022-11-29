-- 基础信息
local base_info = {
	group_id = 199002048
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
	{ config_id = 48004, gadget_id = 70360002, pos = { x = 378.499, y = 117.289, z = -444.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 48008, gadget_id = 70900423, pos = { x = 388.455, y = 122.167, z = -437.064 }, rot = { x = 0.000, y = 202.999, z = 0.000 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
	-- 使用reminder1111287
	{ config_id = 48002, shape = RegionShape.SPHERE, radius = 15, pos = { x = 388.455, y = 122.167, z = -437.064 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1048001, name = "GROUP_LOAD_48001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_48001", action = "action_EVENT_GROUP_LOAD_48001", trigger_count = 0 },
	-- 使用reminder1111287
	{ config_id = 1048002, name = "ENTER_REGION_48002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_48002", action = "action_EVENT_ENTER_REGION_48002", trigger_count = 0 },
	{ config_id = 1048003, name = "GADGETTALK_DONE_48003", event = EventType.EVENT_GADGETTALK_DONE, source = "6800250", condition = "condition_EVENT_GADGETTALK_DONE_48003", action = "action_EVENT_GADGETTALK_DONE_48003", trigger_count = 0 },
	{ config_id = 1048005, name = "QUEST_START_48005", event = EventType.EVENT_QUEST_START, source = "7902603", condition = "", action = "action_EVENT_QUEST_START_48005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "CrowAnorld", value = 0, no_refresh = true },
	{ config_id = 3, name = "CrowAnorld1", value = 0, no_refresh = true },
	{ config_id = 4, name = "camera", value = 0, no_refresh = true }
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
		gadgets = { 48004 },
		regions = { 48002 },
		triggers = { "GROUP_LOAD_48001", "ENTER_REGION_48002", "GADGETTALK_DONE_48003", "QUEST_START_48005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 48008 },
		regions = { 48002 },
		triggers = { "ENTER_REGION_48002", "GADGETTALK_DONE_48003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_48001(context, evt)
	-- 判断变量"CrowAnorld1"为1
	if ScriptLib.GetGroupVariableValue(context, "CrowAnorld1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_48001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002048, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_48002(context, evt)
	if evt.param1 ~= 48002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"CrowAnorld"为1
	if ScriptLib.GetGroupVariableValue(context, "CrowAnorld") ~= 1 then
			return false
	end
	
	-- 判断变量"camera"为0
	if ScriptLib.GetGroupVariableValue(context, "camera") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_48002(context, evt)
	-- 将本组内变量名为 "camera" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "camera", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 1111287 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111287) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（388.4551，122.1666，-437.0644），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=388.4551, y=122.1666, z=-437.0644}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGETTALK_DONE_48003(context, evt)
	-- 判断变量"play_state"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "play_state", 199002043) ~= 2 then
			return false
	end
	
	-- 判断变量"cur_stage"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "cur_stage", 199002043) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_48003(context, evt)
	-- 将本组内变量名为 "talk_done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "talk_done", 1, 199002043) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002048, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_48005(context, evt)
	-- 将本组内变量名为 "CrowAnorld1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CrowAnorld1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "create43005" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "create43005", 1, 199002043) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end