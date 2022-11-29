-- 基础信息
local base_info = {
	group_id = 133003606
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 606001, monster_id = 22010101, pos = { x = 2411.094, y = 252.771, z = -1421.601 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, isElite = true, area_id = 1 },
	{ config_id = 606002, monster_id = 22010101, pos = { x = 2396.573, y = 252.350, z = -1418.426 }, rot = { x = 0.000, y = 34.517, z = 0.000 }, level = 5, drop_id = 1000100, isElite = true, area_id = 1 },
	{ config_id = 606003, monster_id = 21030301, pos = { x = 2413.309, y = 252.761, z = -1423.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, isElite = true, area_id = 1 },
	{ config_id = 606004, monster_id = 21030201, pos = { x = 2395.310, y = 253.188, z = -1421.085 }, rot = { x = 0.000, y = 43.024, z = 0.000 }, level = 10, drop_id = 1000100, isElite = true, area_id = 1 }
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
	{ config_id = 1606005, name = "ANY_MONSTER_DIE_606005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_606005", action = "action_EVENT_ANY_MONSTER_DIE_606005" }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadgetNum", value = 0, no_refresh = false },
	{ config_id = 2, name = "mageNum", value = 0, no_refresh = false }
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
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 606001, 606002, 606003, 606004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_606005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_606005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_606005(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2405,y=249,z=-1410}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110152, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330036061") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end