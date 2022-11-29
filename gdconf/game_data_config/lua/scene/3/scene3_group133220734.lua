-- 基础信息
local base_info = {
	group_id = 133220734
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 734001, monster_id = 25050301, pos = { x = -2470.873, y = 201.867, z = -4150.330 }, rot = { x = 0.000, y = 70.790, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 734003, monster_id = 25050401, pos = { x = -2467.367, y = 201.274, z = -4148.181 }, rot = { x = 0.000, y = 108.196, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1008 }, title_id = 10069, special_name_id = 10102, area_id = 11 },
	{ config_id = 734004, monster_id = 25050301, pos = { x = -2470.645, y = 201.813, z = -4142.713 }, rot = { x = 0.000, y = 122.089, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 734005, monster_id = 25050301, pos = { x = -2445.972, y = 200.133, z = -4143.866 }, rot = { x = 0.000, y = 216.590, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 734006, monster_id = 25050301, pos = { x = -2444.661, y = 200.237, z = -4145.137 }, rot = { x = 0.000, y = 222.226, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 734007, monster_id = 25050301, pos = { x = -2447.500, y = 200.290, z = -4147.081 }, rot = { x = 0.000, y = 215.820, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 734010, monster_id = 25050301, pos = { x = -2446.258, y = 200.250, z = -4145.866 }, rot = { x = 0.000, y = 218.583, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 734011, monster_id = 25050301, pos = { x = -2448.471, y = 200.275, z = -4146.787 }, rot = { x = 0.000, y = 213.870, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 734012, monster_id = 25050301, pos = { x = -2446.884, y = 200.344, z = -4148.033 }, rot = { x = 0.000, y = 216.453, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 11 }
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
	{ config_id = 1734002, name = "ANY_MONSTER_DIE_734002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_734002", action = "action_EVENT_ANY_MONSTER_DIE_734002" },
	{ config_id = 1734013, name = "SPECIFIC_MONSTER_HP_CHANGE_734013", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "734003", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_734013", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_734013" },
	{ config_id = 1734014, name = "SPECIFIC_MONSTER_HP_CHANGE_734014", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "734003", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_734014", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_734014" }
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
		monsters = { 734001, 734003, 734004 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_734013", "SPECIFIC_MONSTER_HP_CHANGE_734014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 734005, 734006, 734007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 734010, 734011, 734012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_734002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_734002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_734002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133220734") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_734013(context, evt)
	--[[判断指定configid的怪物的血量小于%20时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 20 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_734013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220734, 3)
	
	-- 调用提示id为 400075 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400075) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_734014(context, evt)
	--[[判断指定configid的怪物的血量小于%70时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 70 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_734014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220734, 2)
	
	-- 调用提示id为 400075 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400075) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end