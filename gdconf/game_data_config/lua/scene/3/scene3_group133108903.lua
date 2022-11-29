-- 基础信息
local base_info = {
	group_id = 133108903
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 903002, monster_id = 20050701, pos = { x = -270.663, y = 201.636, z = -886.940 }, rot = { x = 0.000, y = 98.701, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 1411, 5019 }, area_id = 7 },
	{ config_id = 903003, monster_id = 20050501, pos = { x = -269.709, y = 201.039, z = -881.079 }, rot = { x = 0.000, y = 140.134, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 1411, 5019 }, area_id = 7 },
	{ config_id = 903004, monster_id = 20050602, pos = { x = -270.984, y = 201.418, z = -884.512 }, rot = { x = 0.000, y = 107.684, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 1411, 5019 }, area_id = 7 },
	{ config_id = 903006, monster_id = 20050201, pos = { x = -269.889, y = 201.819, z = -889.164 }, rot = { x = 0.000, y = 85.186, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 1411, 5019 }, area_id = 7 },
	{ config_id = 903008, monster_id = 20050801, pos = { x = -269.709, y = 201.038, z = -881.062 }, rot = { x = 0.000, y = 7.074, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 1411, 5019 }, area_id = 7 },
	{ config_id = 903009, monster_id = 20050602, pos = { x = -270.972, y = 201.417, z = -884.512 }, rot = { x = 0.000, y = 1.261, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 1411, 5019 }, area_id = 7 },
	{ config_id = 903010, monster_id = 20050301, pos = { x = -267.464, y = 200.906, z = -879.555 }, rot = { x = 0.000, y = 273.838, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 1411, 5019 }, area_id = 7 }
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
	{ config_id = 1903001, name = "ANY_MONSTER_DIE_903001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_903001", action = "action_EVENT_ANY_MONSTER_DIE_903001", trigger_count = 0 },
	{ config_id = 1903005, name = "TIMER_EVENT_903005", event = EventType.EVENT_TIMER_EVENT, source = "delay", condition = "", action = "action_EVENT_TIMER_EVENT_903005", trigger_count = 0 },
	{ config_id = 1903011, name = "ANY_MONSTER_DIE_903011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_903011", action = "action_EVENT_ANY_MONSTER_DIE_903011", trigger_count = 0 }
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
		monsters = { 903008, 903009, 903010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_903001", "TIMER_EVENT_903005" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 903002, 903003, 903004, 903006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_903011" },
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
function condition_EVENT_ANY_MONSTER_DIE_903001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_903001(context, evt)
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 延迟1.5秒后,向groupId为：133108903的对象,请求一次调用,并将string参数："delay" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133108903, "delay", 1.5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_903005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108903, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_903011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_903011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310890301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end