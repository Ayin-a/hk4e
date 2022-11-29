-- 基础信息
local base_info = {
	group_id = 133225141
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 141001, monster_id = 21010201, pos = { x = -6429.744, y = 200.447, z = -2783.401 }, rot = { x = 0.000, y = 237.765, z = 0.000 }, level = 33, drop_id = 1000100, climate_area_id = 7, area_id = 18 },
	{ config_id = 141002, monster_id = 21010301, pos = { x = -6428.012, y = 200.346, z = -2786.079 }, rot = { x = 0.000, y = 260.069, z = 0.000 }, level = 33, drop_id = 1000100, climate_area_id = 7, area_id = 18 },
	{ config_id = 141005, monster_id = 21010901, pos = { x = -6440.250, y = 200.284, z = -2792.081 }, rot = { x = 0.000, y = 54.583, z = 0.000 }, level = 33, drop_id = 1000100, climate_area_id = 7, area_id = 18 },
	{ config_id = 141006, monster_id = 21011001, pos = { x = -6442.616, y = 200.346, z = -2789.747 }, rot = { x = 0.000, y = 43.365, z = 0.000 }, level = 33, drop_id = 1000100, climate_area_id = 7, area_id = 18 },
	{ config_id = 141007, monster_id = 21020801, pos = { x = -6426.742, y = 200.434, z = -2783.660 }, rot = { x = 0.000, y = 245.153, z = 0.000 }, level = 33, drop_id = 1000100, climate_area_id = 7, area_id = 18 }
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
	{ config_id = 1141003, name = "ANY_MONSTER_DIE_141003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_141003", action = "action_EVENT_ANY_MONSTER_DIE_141003", trigger_count = 0 },
	{ config_id = 1141004, name = "ANY_MONSTER_DIE_141004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_141004", action = "action_EVENT_ANY_MONSTER_DIE_141004", trigger_count = 0 }
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
		monsters = { 141001, 141002, 141005, 141006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_141004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 141007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_141003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_141003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_141003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7217326_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_141004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_141004(context, evt)
	-- 调用提示id为 721730013 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 721730013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133225141, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end