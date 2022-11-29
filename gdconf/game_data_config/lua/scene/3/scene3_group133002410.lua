-- 基础信息
local base_info = {
	group_id = 133002410
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 410001, monster_id = 25020201, pos = { x = 1382.352, y = 272.751, z = -656.902 }, rot = { x = 0.000, y = 317.927, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 410002, monster_id = 25020201, pos = { x = 1374.922, y = 271.332, z = -657.431 }, rot = { x = 0.000, y = 6.204, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 410003, monster_id = 25030201, pos = { x = 1378.956, y = 269.732, z = -650.956 }, rot = { x = 0.000, y = 317.927, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 410004, monster_id = 25030301, pos = { x = 1376.945, y = 269.689, z = -651.573 }, rot = { x = 0.000, y = 338.918, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 410005, monster_id = 25070101, pos = { x = 1369.864, y = 269.343, z = -650.305 }, rot = { x = 0.000, y = 74.910, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 410006, monster_id = 25070101, pos = { x = 1369.375, y = 268.653, z = -646.768 }, rot = { x = 0.000, y = 74.910, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 410007, monster_id = 25010401, pos = { x = 1366.972, y = 270.771, z = -654.998 }, rot = { x = 0.000, y = 74.910, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 410008, monster_id = 25010401, pos = { x = 1364.505, y = 269.481, z = -648.043 }, rot = { x = 0.000, y = 74.910, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 410009, monster_id = 25010501, pos = { x = 1366.615, y = 268.137, z = -643.069 }, rot = { x = 0.000, y = 94.864, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 }
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
	{ config_id = 1410010, name = "ANY_MONSTER_DIE_410010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_410010", action = "action_EVENT_ANY_MONSTER_DIE_410010" },
	{ config_id = 1410011, name = "ANY_MONSTER_DIE_410011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_410011", action = "action_EVENT_ANY_MONSTER_DIE_410011" },
	{ config_id = 1410012, name = "GROUP_LOAD_410012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_410012" }
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
		monsters = { 410001, 410002, 410003, 410004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_410010", "GROUP_LOAD_410012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 410005, 410006, 410007, 410008, 410009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_410011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_410010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_410010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002410, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 1110175 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_410011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_410011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4121007") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_410012(context, evt)
	-- 调用提示id为 1110174 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110174) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end