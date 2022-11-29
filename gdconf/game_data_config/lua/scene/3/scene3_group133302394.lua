-- 基础信息
local base_info = {
	group_id = 133302394
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 394001, monster_id = 21010101, pos = { x = -29.086, y = 276.569, z = 2762.551 }, rot = { x = 0.000, y = 1.568, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 9016, area_id = 20 },
	{ config_id = 394002, monster_id = 21010101, pos = { x = -26.542, y = 275.289, z = 2760.111 }, rot = { x = 0.000, y = 298.665, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 9016, area_id = 20 },
	{ config_id = 394006, monster_id = 21010501, pos = { x = -33.513, y = 281.917, z = 2772.247 }, rot = { x = 0.000, y = 211.080, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 32, area_id = 20 },
	{ config_id = 394007, monster_id = 21010101, pos = { x = -33.514, y = 277.459, z = 2765.180 }, rot = { x = 0.000, y = 62.599, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 9016, area_id = 20 },
	{ config_id = 394008, monster_id = 21010501, pos = { x = -33.405, y = 276.325, z = 2761.778 }, rot = { x = 0.000, y = 183.367, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 9003, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 394009, gadget_id = 70210101, pos = { x = -29.797, y = 279.193, z = 2767.507 }, rot = { x = 0.000, y = 45.378, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 394004, shape = RegionShape.SPHERE, radius = 25, pos = { x = -28.977, y = 279.083, z = 2768.218 }, area_id = 20 },
	{ config_id = 394005, shape = RegionShape.SPHERE, radius = 60, pos = { x = -29.800, y = 279.191, z = 2767.508 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1394003, name = "ANY_MONSTER_DIE_394003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_394003", action = "action_EVENT_ANY_MONSTER_DIE_394003" },
	{ config_id = 1394004, name = "ENTER_REGION_394004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_394004", action = "action_EVENT_ENTER_REGION_394004" },
	{ config_id = 1394005, name = "ENTER_REGION_394005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
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
	end_suite = 3,
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
		regions = { 394005 },
		triggers = { "ENTER_REGION_394005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 394001, 394002, 394006, 394007, 394008 },
		gadgets = { },
		regions = { 394004 },
		triggers = { "ANY_MONSTER_DIE_394003", "ENTER_REGION_394004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 394009 },
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
function condition_EVENT_ANY_MONSTER_DIE_394003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_394003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7318302") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_394004(context, evt)
	if evt.param1 ~= 394004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_394004(context, evt)
	-- 调用提示id为 1111316 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111316) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-29.79744, y=279.1931, z=2767.507}，持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-29.79744, y=279.1931, z=2767.507}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end