-- 基础信息
local base_info = {
	group_id = 133107907
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 907002, monster_id = 28020513, pos = { x = -504.972, y = 227.682, z = 433.338 }, rot = { x = 0.000, y = 158.185, z = 0.000 }, level = 18, drop_tag = "走兽", disableWander = true, pose_id = 12, area_id = 7 },
	{ config_id = 907003, monster_id = 28040103, pos = { x = -505.783, y = 227.620, z = 431.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "水族", area_id = 7 },
	{ config_id = 907004, monster_id = 28040103, pos = { x = -505.362, y = 227.620, z = 429.829 }, rot = { x = 0.000, y = 95.038, z = 0.000 }, level = 18, drop_tag = "水族", area_id = 7 },
	{ config_id = 907005, monster_id = 28040103, pos = { x = -503.320, y = 227.620, z = 431.375 }, rot = { x = 0.000, y = 66.215, z = 0.000 }, level = 18, drop_tag = "水族", area_id = 7 },
	{ config_id = 907006, monster_id = 28040103, pos = { x = -503.589, y = 227.094, z = 433.476 }, rot = { x = 0.000, y = 66.215, z = 0.000 }, level = 18, drop_tag = "水族", area_id = 7 },
	{ config_id = 907007, monster_id = 28040103, pos = { x = -501.833, y = 227.620, z = 432.141 }, rot = { x = 0.000, y = 322.073, z = 0.000 }, level = 18, drop_tag = "水族", area_id = 7 },
	{ config_id = 907008, monster_id = 28040103, pos = { x = -505.284, y = 227.620, z = 432.505 }, rot = { x = 0.000, y = 30.208, z = 0.000 }, level = 18, drop_tag = "水族", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 907001, shape = RegionShape.SPHERE, radius = 1.93, pos = { x = -493.580, y = 228.105, z = 417.150 }, area_id = 7 },
	{ config_id = 907010, shape = RegionShape.SPHERE, radius = 6.81, pos = { x = -501.633, y = 227.620, z = 430.141 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1907001, name = "ENTER_REGION_907001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_907001", action = "action_EVENT_ENTER_REGION_907001" },
	{ config_id = 1907009, name = "ANY_MONSTER_DIE_907009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_907009", trigger_count = 0 },
	{ config_id = 1907010, name = "ENTER_REGION_907010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_907010", action = "action_EVENT_ENTER_REGION_907010" }
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
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { 907001, 907010 },
		triggers = { "ENTER_REGION_907001", "ANY_MONSTER_DIE_907009", "ENTER_REGION_907010" },
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
function condition_EVENT_ENTER_REGION_907001(context, evt)
	if evt.param1 ~= 907001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_907001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 907002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 907003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 907004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 907005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-504，228，433），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-504, y=228, z=433}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 1110061 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110061) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310790701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 907006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 907007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 907008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_907009(context, evt)
	-- 调用提示id为 1110080 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110080) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310790702") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_907010(context, evt)
	if evt.param1 ~= 907010 then return false end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) < 7 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ENTER_REGION_907010(context, evt)
	-- 调用提示id为 1110080 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110080) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310790702") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end