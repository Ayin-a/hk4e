-- 基础信息
local base_info = {
	group_id = 166001028
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 28001, monster_id = 25070101, pos = { x = 1004.862, y = 747.178, z = 269.244 }, rot = { x = 0.000, y = 68.707, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9006, area_id = 300 },
	{ config_id = 28002, monster_id = 25010301, pos = { x = 1013.868, y = 748.923, z = 259.602 }, rot = { x = 0.000, y = 248.895, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9004, area_id = 300 },
	{ config_id = 28003, monster_id = 25060101, pos = { x = 1007.558, y = 748.526, z = 255.319 }, rot = { x = 0.000, y = 29.294, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 2, area_id = 300 },
	{ config_id = 28004, monster_id = 25010201, pos = { x = 1012.150, y = 747.742, z = 268.201 }, rot = { x = 0.000, y = 28.761, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 300 }
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
	{ config_id = 1028006, name = "MONSTER_BATTLE_28006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_28006", action = "action_EVENT_MONSTER_BATTLE_28006" },
	{ config_id = 1028007, name = "ANY_MONSTER_DIE_28007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_28007", action = "action_EVENT_ANY_MONSTER_DIE_28007" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 28005, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1005.995, y = 747.771, z = 265.333 }, area_id = 300 }
	},
	triggers = {
		{ config_id = 1028005, name = "ENTER_REGION_28005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_28005", action = "action_EVENT_ENTER_REGION_28005" }
	}
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
		monsters = { 28001, 28002, 28003, 28004 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_28006", "ANY_MONSTER_DIE_28007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_28006(context, evt)
	if 28004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_28006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001027") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 60010124 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010124) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_28007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_28007(context, evt)
	-- 调用提示id为 60010127 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010127) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001027") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001028") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end