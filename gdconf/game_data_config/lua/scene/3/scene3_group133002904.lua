-- 基础信息
local base_info = {
	group_id = 133002904
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 904001, monster_id = 21010101, pos = { x = 2022.956, y = 234.695, z = -652.715 }, rot = { x = 0.000, y = 182.426, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 },
	{ config_id = 904002, monster_id = 21010201, pos = { x = 2014.242, y = 233.451, z = -659.058 }, rot = { x = 0.000, y = 87.489, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 },
	{ config_id = 904003, monster_id = 21010201, pos = { x = 2021.155, y = 233.555, z = -666.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 },
	{ config_id = 904004, monster_id = 21010301, pos = { x = 2028.346, y = 234.314, z = -659.007 }, rot = { x = 0.000, y = 268.457, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 },
	{ config_id = 904005, monster_id = 21020201, pos = { x = 2026.074, y = 234.435, z = -654.211 }, rot = { x = 0.000, y = 245.769, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 },
	{ config_id = 904006, monster_id = 21020101, pos = { x = 2016.818, y = 233.045, z = -664.957 }, rot = { x = 0.000, y = 31.776, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 }
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
	{ config_id = 1904007, name = "ANY_MONSTER_DIE_904007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_904007", action = "action_EVENT_ANY_MONSTER_DIE_904007", trigger_count = 0 },
	{ config_id = 1904008, name = "ANY_MONSTER_DIE_904008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_904008", action = "action_EVENT_ANY_MONSTER_DIE_904008", trigger_count = 0 }
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
		monsters = { 904001, 904002, 904003, 904004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_904007" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 904005, 904006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_904008" },
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
function condition_EVENT_ANY_MONSTER_DIE_904007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_904007(context, evt)
	-- 调用提示id为 1110111 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110111) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002904, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_904008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_904008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300290401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1110172 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110172) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end