-- 基础信息
local base_info = {
	group_id = 133002412
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 412001, monster_id = 23010401, pos = { x = 1107.289, y = 285.861, z = -433.744 }, rot = { x = 0.000, y = 76.187, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 412002, monster_id = 23010301, pos = { x = 1109.666, y = 286.275, z = -431.605 }, rot = { x = 0.000, y = 134.991, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 412003, monster_id = 23010201, pos = { x = 1107.219, y = 285.861, z = -429.763 }, rot = { x = 0.000, y = 128.002, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 412004, monster_id = 23040101, pos = { x = 1107.635, y = 285.861, z = -439.778 }, rot = { x = 0.000, y = 70.384, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 9002 }, climate_area_id = 1, area_id = 10 }
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
	{ config_id = 1412006, name = "ANY_MONSTER_DIE_412006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_412006", action = "action_EVENT_ANY_MONSTER_DIE_412006" },
	{ config_id = 1412007, name = "ANY_MONSTER_DIE_412007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_412007", action = "action_EVENT_ANY_MONSTER_DIE_412007" },
	{ config_id = 1412008, name = "GROUP_LOAD_412008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_412008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 412005, gadget_id = 77103001, pos = { x = 1195.444, y = 374.223, z = -798.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 412009, gadget_id = 77215001, pos = { x = 1199.829, y = 374.304, z = -796.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 412011, gadget_id = 70300110, pos = { x = 1196.478, y = 374.993, z = -797.640 }, rot = { x = 0.000, y = 288.462, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 412010, gadget_id = 77110010, pos = { x = 1190.893, y = 374.332, z = -795.656 }, rot = { x = 0.000, y = 99.338, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 412012, gadget_id = 77105005, pos = { x = 1195.883, y = 374.282, z = -799.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 412013, gadget_id = 70300110, pos = { x = 1196.561, y = 374.993, z = -798.275 }, rot = { x = 0.000, y = 288.462, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 412014, gadget_id = 77111001, pos = { x = 1195.811, y = 374.188, z = -794.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 412015, gadget_id = 70310006, pos = { x = 1197.361, y = 374.419, z = -788.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
	}
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
		monsters = { 412004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_412006", "GROUP_LOAD_412008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 412001, 412002, 412003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_412007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_412006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_412006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4121311") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002412, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 1110178 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110178) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_412007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_412007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4121309") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_412008(context, evt)
	-- 调用提示id为 1110177 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end