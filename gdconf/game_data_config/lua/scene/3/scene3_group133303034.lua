-- 基础信息
local base_info = {
	group_id = 133303034
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 34001, monster_id = 25010301, pos = { x = -1748.440, y = 180.000, z = 3015.580 }, rot = { x = 0.000, y = 62.131, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	{ config_id = 34002, monster_id = 25010401, pos = { x = -1748.888, y = 180.000, z = 3017.539 }, rot = { x = 0.000, y = 98.099, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	{ config_id = 34003, monster_id = 25030301, pos = { x = -1735.717, y = 181.768, z = 3014.157 }, rot = { x = 0.000, y = 311.521, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	{ config_id = 34004, monster_id = 25070101, pos = { x = -1731.332, y = 181.910, z = 3025.790 }, rot = { x = 0.000, y = 208.829, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	{ config_id = 34006, monster_id = 25030301, pos = { x = -1740.895, y = 180.000, z = 3032.140 }, rot = { x = 0.000, y = 227.937, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	{ config_id = 34009, monster_id = 25020201, pos = { x = -1731.010, y = 182.618, z = 3017.116 }, rot = { x = 0.000, y = 279.374, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	{ config_id = 34010, monster_id = 25020201, pos = { x = -1730.433, y = 182.429, z = 3022.233 }, rot = { x = 0.000, y = 239.864, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	{ config_id = 34011, monster_id = 25020201, pos = { x = -1751.500, y = 180.000, z = 3020.570 }, rot = { x = 0.000, y = 107.407, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	{ config_id = 34012, monster_id = 25020201, pos = { x = -1751.769, y = 180.000, z = 3017.747 }, rot = { x = 0.000, y = 89.882, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	{ config_id = 34013, monster_id = 25070101, pos = { x = -1750.165, y = 180.000, z = 3021.284 }, rot = { x = 0.000, y = 94.200, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	{ config_id = 34014, monster_id = 25010701, pos = { x = -1746.889, y = 180.000, z = 3028.211 }, rot = { x = 0.000, y = 128.075, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	{ config_id = 34015, monster_id = 25030301, pos = { x = -1732.585, y = 181.950, z = 3017.876 }, rot = { x = 0.000, y = 279.697, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 }
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
	{ config_id = 1034005, name = "ANY_MONSTER_DIE_34005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_34005", action = "action_EVENT_ANY_MONSTER_DIE_34005" },
	{ config_id = 1034007, name = "ANY_MONSTER_DIE_34007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_34007", action = "action_EVENT_ANY_MONSTER_DIE_34007" },
	{ config_id = 1034008, name = "ANY_MONSTER_DIE_34008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_34008", action = "action_EVENT_ANY_MONSTER_DIE_34008" }
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
		monsters = { 34001, 34002, 34003, 34004, 34006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_34007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 34009, 34010, 34011, 34012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_34008" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 34013, 34014, 34015 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_34005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_34005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_34005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7302314_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_34007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_34007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303034, 3)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_34008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_34008(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303034, 4)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end