-- 基础信息
local base_info = {
	group_id = 133302159
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 159001, monster_id = 25210302, pos = { x = -829.817, y = 181.552, z = 2539.067 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 24 },
	{ config_id = 159002, monster_id = 25210302, pos = { x = -835.011, y = 182.001, z = 2538.123 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 24 },
	{ config_id = 159003, monster_id = 25210402, pos = { x = -833.111, y = 181.985, z = 2539.947 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 24 },
	{ config_id = 159005, monster_id = 25210402, pos = { x = -830.704, y = 181.792, z = 2540.068 }, rot = { x = 0.000, y = 334.700, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 24 },
	{ config_id = 159006, monster_id = 25210402, pos = { x = -840.044, y = 182.933, z = 2538.735 }, rot = { x = 0.000, y = 87.375, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 24 },
	{ config_id = 159007, monster_id = 25210201, pos = { x = -834.157, y = 183.213, z = 2545.007 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 24 },
	{ config_id = 159008, monster_id = 25210502, pos = { x = -829.201, y = 180.923, z = 2534.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 24 },
	{ config_id = 159009, monster_id = 25210302, pos = { x = -827.147, y = 180.480, z = 2531.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 24 },
	{ config_id = 159010, monster_id = 25210402, pos = { x = -830.227, y = 180.637, z = 2531.566 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 24 }
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
	{ config_id = 1159004, name = "ANY_MONSTER_DIE_159004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_159004", action = "action_EVENT_ANY_MONSTER_DIE_159004" },
	{ config_id = 1159011, name = "ANY_MONSTER_DIE_159011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_159011", action = "action_EVENT_ANY_MONSTER_DIE_159011" },
	{ config_id = 1159012, name = "ANY_MONSTER_DIE_159012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_159012", action = "action_EVENT_ANY_MONSTER_DIE_159012" }
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
		monsters = { 159001, 159002, 159003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_159011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 159005, 159006, 159007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_159012" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 159008, 159009, 159010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_159004" },
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
function condition_EVENT_ANY_MONSTER_DIE_159004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_159004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q301701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_159011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_159011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302159, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_159012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_159012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302159, 3)
	
	-- 调用提示id为 400184 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end