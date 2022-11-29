-- 基础信息
local base_info = {
	group_id = 133301067
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 67001, monster_id = 26090401, pos = { x = -1322.565, y = 161.931, z = 2818.239 }, rot = { x = 0.000, y = 297.644, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 1101 }, pose_id = 101, area_id = 21 },
	{ config_id = 67002, monster_id = 26090401, pos = { x = -1327.148, y = 162.508, z = 2818.316 }, rot = { x = 0.000, y = 293.107, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 1101 }, pose_id = 101, area_id = 21 },
	{ config_id = 67003, monster_id = 26090401, pos = { x = -1329.475, y = 162.601, z = 2812.607 }, rot = { x = 0.000, y = 330.608, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 1101 }, pose_id = 101, area_id = 21 },
	{ config_id = 67009, monster_id = 26090401, pos = { x = -1329.328, y = 162.224, z = 2816.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 1101 }, pose_id = 101, area_id = 21 },
	{ config_id = 67010, monster_id = 26090401, pos = { x = -1325.627, y = 162.224, z = 2819.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 1101 }, pose_id = 101, area_id = 21 },
	{ config_id = 67011, monster_id = 26090201, pos = { x = -1323.688, y = 162.224, z = 2815.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 1101 }, pose_id = 101, area_id = 21 },
	{ config_id = 67012, monster_id = 26090201, pos = { x = -1326.731, y = 162.224, z = 2813.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 1101 }, pose_id = 101, area_id = 21 },
	{ config_id = 67013, monster_id = 26110101, pos = { x = -1327.975, y = 162.224, z = 2817.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, affix = { 1101 }, pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 67007, gadget_id = 70310193, pos = { x = -1325.374, y = 161.797, z = 2813.744 }, rot = { x = 0.000, y = 311.982, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 67017, gadget_id = 70310195, pos = { x = -1321.729, y = 162.224, z = 2821.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 67018, gadget_id = 70310195, pos = { x = -1336.256, y = 162.224, z = 2814.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 67019, gadget_id = 70310195, pos = { x = -1333.435, y = 162.906, z = 2821.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 第二波死干净
	{ config_id = 1067004, name = "ANY_MONSTER_DIE_67004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_67004", action = "action_EVENT_ANY_MONSTER_DIE_67004", trigger_count = 0 },
	-- 第三波死干净
	{ config_id = 1067005, name = "ANY_MONSTER_DIE_67005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_67005", action = "action_EVENT_ANY_MONSTER_DIE_67005", trigger_count = 0 },
	-- 第一波死干净
	{ config_id = 1067006, name = "ANY_MONSTER_DIE_67006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_67006", action = "action_EVENT_ANY_MONSTER_DIE_67006", trigger_count = 0 },
	{ config_id = 1067014, name = "MONSTER_BATTLE_67014", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_67014", action = "action_EVENT_MONSTER_BATTLE_67014" },
	{ config_id = 1067015, name = "MONSTER_BATTLE_67015", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_67015", action = "action_EVENT_MONSTER_BATTLE_67015" },
	{ config_id = 1067016, name = "MONSTER_BATTLE_67016", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_67016", action = "action_EVENT_MONSTER_BATTLE_67016" }
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
		gadgets = { 67007, 67017, 67018, 67019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_67004", "ANY_MONSTER_DIE_67005", "ANY_MONSTER_DIE_67006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 67001, 67002, 67003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_67004", "ANY_MONSTER_DIE_67005", "ANY_MONSTER_DIE_67006", "MONSTER_BATTLE_67014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 67009, 67010, 67011, 67012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_67004", "ANY_MONSTER_DIE_67005", "ANY_MONSTER_DIE_67006", "MONSTER_BATTLE_67016" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 67013 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_67004", "ANY_MONSTER_DIE_67005", "ANY_MONSTER_DIE_67006", "MONSTER_BATTLE_67015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_67004(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_67004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_67005(context, evt)
	--判断死亡怪物的configid是否为 67013
	if evt.param1 ~= 67013 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_67005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7300305") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_67006(context, evt)
	-- 判断指定group组剩余怪物数量是否是5 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133301067) ~= 5 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_67006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301067, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_67014(context, evt)
	if 67001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_67014(context, evt)
	-- 调用提示id为 33010029 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010029) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_67015(context, evt)
	if 67013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_67015(context, evt)
	-- 调用提示id为 33010034 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010034) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_67016(context, evt)
	if 67009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_67016(context, evt)
	-- 调用提示id为 33010032 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010032) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end