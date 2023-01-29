-- 基础信息
local base_info = {
	group_id = 133314198
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 198001, monster_id = 23010201, pos = { x = -457.757, y = 198.575, z = 4248.540 }, rot = { x = 0.000, y = 86.931, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 198002, monster_id = 23030101, pos = { x = -456.731, y = 198.386, z = 4252.324 }, rot = { x = 0.000, y = 100.688, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 198003, monster_id = 23010301, pos = { x = -453.794, y = 199.397, z = 4250.588 }, rot = { x = 0.000, y = 94.036, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 198006, shape = RegionShape.POLYGON, pos = { x = -417.152, y = 212.236, z = 4244.383 }, height = 57.610, point_array = { { x = -434.435, y = 4261.530 }, { x = -436.164, y = 4226.459 }, { x = -425.483, y = 4220.284 }, { x = -422.672, y = 4227.332 }, { x = -423.474, y = 4231.406 }, { x = -422.314, y = 4236.119 }, { x = -408.886, y = 4235.485 }, { x = -408.466, y = 4228.907 }, { x = -399.938, y = 4230.241 }, { x = -398.141, y = 4239.678 }, { x = -409.477, y = 4268.481 } }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1198004, name = "ANY_MONSTER_DIE_198004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_198004", action = "action_EVENT_ANY_MONSTER_DIE_198004" },
	{ config_id = 1198005, name = "MONSTER_BATTLE_198005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_198005" },
	{ config_id = 1198006, name = "ENTER_REGION_198006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_198006", action = "action_EVENT_ENTER_REGION_198006" }
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
		monsters = { 198001, 198002, 198003 },
		gadgets = { },
		regions = { 198006 },
		triggers = { "ANY_MONSTER_DIE_198004", "MONSTER_BATTLE_198005", "ENTER_REGION_198006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_198004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133314198) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_198004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7324406") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_198005(context, evt)
	-- 调用提示id为 1000180001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000180001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_198006(context, evt)
	if evt.param1 ~= 198006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_198006(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-440.76, y=207.08, z=4241.59}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-440.76, y=207.08, z=4241.59}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0.5 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 1000180000 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000180000) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end