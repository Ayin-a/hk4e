-- 基础信息
local base_info = {
	group_id = 133212573
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 573001, monster_id = 25080101, pos = { x = -3593.590, y = 200.000, z = -2883.591 }, rot = { x = 0.000, y = 76.228, z = 0.000 }, level = 35, drop_id = 1000100, pose_id = 1, area_id = 12 },
	{ config_id = 573002, monster_id = 25080201, pos = { x = -3581.225, y = 200.149, z = -2879.440 }, rot = { x = 0.000, y = 203.178, z = 0.000 }, level = 35, drop_id = 1000100, pose_id = 1, area_id = 12 },
	{ config_id = 573005, monster_id = 25080101, pos = { x = -3588.476, y = 199.637, z = -2891.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_id = 1000100, pose_id = 1, area_id = 12 },
	{ config_id = 573006, monster_id = 25080101, pos = { x = -3590.613, y = 200.000, z = -2881.983 }, rot = { x = 0.000, y = 80.678, z = 0.000 }, level = 35, drop_id = 1000100, pose_id = 1, area_id = 12 },
	{ config_id = 573007, monster_id = 25080201, pos = { x = -3593.963, y = 200.000, z = -2889.640 }, rot = { x = 0.000, y = 25.187, z = 0.000 }, level = 35, drop_id = 1000100, pose_id = 1, area_id = 12 }
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
	{ config_id = 1573003, name = "ANY_MONSTER_DIE_573003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_573003", action = "action_EVENT_ANY_MONSTER_DIE_573003" },
	{ config_id = 1573004, name = "ANY_MONSTER_DIE_573004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_573004", action = "action_EVENT_ANY_MONSTER_DIE_573004" },
	{ config_id = 1573008, name = "MONSTER_BATTLE_573008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_573008", action = "action_EVENT_MONSTER_BATTLE_573008" }
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
		-- description = ,
		monsters = { 573001, 573002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_573003", "MONSTER_BATTLE_573008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 573005, 573006, 573007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_573004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_573003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_573003(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212573, 3)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_573004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_573004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332125731") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_573008(context, evt)
	if 573001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_573008(context, evt)
	-- 调用提示id为 400090 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400090) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end