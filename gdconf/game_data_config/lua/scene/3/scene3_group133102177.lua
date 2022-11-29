-- 基础信息
local base_info = {
	group_id = 133102177
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 177001, monster_id = 25010201, pos = { x = 1620.681, y = 241.538, z = 808.447 }, rot = { x = 0.000, y = 121.428, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 177004, monster_id = 25010201, pos = { x = 1613.922, y = 242.244, z = 802.262 }, rot = { x = 0.000, y = 63.919, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 177005, monster_id = 25010201, pos = { x = 1636.114, y = 240.155, z = 814.808 }, rot = { x = 0.000, y = 262.019, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 177006, monster_id = 25010201, pos = { x = 1619.025, y = 242.485, z = 796.097 }, rot = { x = 0.000, y = 58.118, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 177007, monster_id = 25010201, pos = { x = 1640.259, y = 239.404, z = 818.020 }, rot = { x = 0.000, y = 253.493, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 177008, monster_id = 25010201, pos = { x = 1641.182, y = 239.526, z = 812.685 }, rot = { x = 0.000, y = 261.708, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 177013, monster_id = 25030301, pos = { x = 1613.972, y = 241.943, z = 805.279 }, rot = { x = 0.000, y = 112.163, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 177009, gadget_id = 70710651, pos = { x = 1615.112, y = 242.227, z = 800.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 177010, gadget_id = 70710651, pos = { x = 1614.386, y = 242.240, z = 801.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1177002, name = "SPECIFIC_MONSTER_HP_CHANGE_177002", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "177013", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_177002", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_177002" },
	{ config_id = 1177003, name = "ANY_MONSTER_DIE_177003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_177003", action = "action_EVENT_ANY_MONSTER_DIE_177003" },
	{ config_id = 1177011, name = "QUEST_START_177011", event = EventType.EVENT_QUEST_START, source = "4003705", condition = "", action = "action_EVENT_QUEST_START_177011" }
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
		monsters = { 177001, 177004, 177006, 177013 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_177002", "QUEST_START_177011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 177005, 177007, 177008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_177003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 177009, 177010 },
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
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_177002(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_177002(context, evt)
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102177, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_177003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_177003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310217702") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_177011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133102177, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end