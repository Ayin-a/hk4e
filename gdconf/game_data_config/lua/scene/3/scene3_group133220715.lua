-- 基础信息
local base_info = {
	group_id = 133220715
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 715001, monster_id = 23010301, pos = { x = -2486.716, y = 241.620, z = -4461.258 }, rot = { x = 356.093, y = 333.267, z = 2.991 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 715002, monster_id = 23010601, pos = { x = -2477.578, y = 241.617, z = -4452.791 }, rot = { x = 0.000, y = 122.015, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 715005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2452.156, y = 248.089, z = -4473.184 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1715003, name = "ANY_MONSTER_DIE_715003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_715003", action = "action_EVENT_ANY_MONSTER_DIE_715003", trigger_count = 0 },
	{ config_id = 1715004, name = "GROUP_LOAD_715004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_715004", action = "action_EVENT_GROUP_LOAD_715004", trigger_count = 0 },
	{ config_id = 1715005, name = "ENTER_REGION_715005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_715005", action = "action_EVENT_ENTER_REGION_715005" },
	{ config_id = 1715006, name = "MONSTER_BATTLE_715006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_715006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "win", value = 0, no_refresh = false },
	{ config_id = 2, name = "reminder", value = 0, no_refresh = true }
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
		triggers = { "GROUP_LOAD_715004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 715001, 715002 },
		gadgets = { },
		regions = { 715005 },
		triggers = { "ANY_MONSTER_DIE_715003", "GROUP_LOAD_715004", "ENTER_REGION_715005", "MONSTER_BATTLE_715006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_715003(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133220715) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_715003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7226602") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "win" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "win", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_715004(context, evt)
	-- 判断变量"win"为1
	if ScriptLib.GetGroupVariableValue(context, "win") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_715004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7226602") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_715005(context, evt)
	if evt.param1 ~= 715005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"reminder"为0
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_715005(context, evt)
	-- 调用提示id为 322071501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322071501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-2475.568，242.62，-4456.942），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2475.568, y=242.62, z=-4456.942}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "reminder" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_715006(context, evt)
	-- 调用提示id为 322071504 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322071504) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end