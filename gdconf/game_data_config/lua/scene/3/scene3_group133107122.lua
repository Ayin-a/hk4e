-- 基础信息
local base_info = {
	group_id = 133107122
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 122001, monster_id = 25070101, pos = { x = -375.445, y = 243.065, z = 729.252 }, rot = { x = 0.000, y = 132.300, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 1007, 1010 }, area_id = 8 },
	{ config_id = 122002, monster_id = 25030301, pos = { x = -356.202, y = 241.502, z = 732.103 }, rot = { x = 0.000, y = 217.300, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 1007 }, area_id = 8 },
	{ config_id = 122003, monster_id = 25010401, pos = { x = -371.506, y = 241.687, z = 735.745 }, rot = { x = 0.000, y = 149.822, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 1010, 1019 }, area_id = 8 },
	{ config_id = 122005, monster_id = 25010501, pos = { x = -361.445, y = 241.149, z = 737.978 }, rot = { x = 0.000, y = 187.900, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 1010, 1019 }, area_id = 8 },
	{ config_id = 122006, monster_id = 25060101, pos = { x = -364.630, y = 241.386, z = 733.073 }, rot = { x = 0.000, y = 188.200, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 8 },
	{ config_id = 122008, monster_id = 25060101, pos = { x = -368.947, y = 241.580, z = 732.616 }, rot = { x = 0.000, y = 172.581, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 8 },
	{ config_id = 122009, monster_id = 25020201, pos = { x = -367.200, y = 241.310, z = 735.294 }, rot = { x = 0.000, y = 178.300, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 1010 }, area_id = 8 }
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
	{ config_id = 1122004, name = "ANY_MONSTER_DIE_122004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_122004", action = "action_EVENT_ANY_MONSTER_DIE_122004" },
	{ config_id = 1122007, name = "ANY_MONSTER_DIE_122007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_122007", action = "action_EVENT_ANY_MONSTER_DIE_122007" },
	{ config_id = 1122010, name = "MONSTER_BATTLE_122010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_122010", trigger_count = 0 },
	{ config_id = 1122011, name = "MONSTER_BATTLE_122011", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_122011", trigger_count = 0 }
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
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 122006, 122008, 122009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_122007", "MONSTER_BATTLE_122010" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 122001, 122002, 122003, 122005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_122004", "MONSTER_BATTLE_122011" },
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
function condition_EVENT_ANY_MONSTER_DIE_122004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_122004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133107122") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_122007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_122007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107122, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_122010(context, evt)
	-- 调用提示id为 1110179 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110179) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_122011(context, evt)
	-- 调用提示id为 1110180 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end