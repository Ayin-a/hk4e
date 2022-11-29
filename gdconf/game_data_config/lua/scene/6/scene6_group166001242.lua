-- 基础信息
local base_info = {
	group_id = 166001242
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 242001, monster_id = 25070101, pos = { x = 922.548, y = 1022.297, z = 862.705 }, rot = { x = 0.000, y = 225.470, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1009, 1008 }, title_id = 10089, special_name_id = 10122, area_id = 300 },
	{ config_id = 242002, monster_id = 25030201, pos = { x = 926.214, y = 1022.388, z = 860.076 }, rot = { x = 0.000, y = 240.626, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1008, 1009 }, title_id = 10090, special_name_id = 10123, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 242004, shape = RegionShape.SPHERE, radius = 30, pos = { x = 923.077, y = 1022.633, z = 857.851 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1242004, name = "ENTER_REGION_242004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_242004" },
	{ config_id = 1242005, name = "ANY_MONSTER_DIE_242005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_242005", action = "action_EVENT_ANY_MONSTER_DIE_242005" }
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
		monsters = { 242001, 242002 },
		gadgets = { },
		regions = { 242004 },
		triggers = { "ENTER_REGION_242004", "ANY_MONSTER_DIE_242005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_242004(context, evt)
	-- 调用提示id为 60010282 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010282) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_242005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_242005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001242") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 60010284 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010284) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end