-- 基础信息
local base_info = {
	group_id = 133003607
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 607003, monster_id = 21020201, pos = { x = 2263.010, y = 213.096, z = -1142.223 }, rot = { x = 0.000, y = 336.830, z = 0.000 }, level = 2, drop_id = 1000100, isElite = true, area_id = 1 },
	{ config_id = 607004, monster_id = 21010701, pos = { x = 2208.859, y = 209.347, z = -1115.273 }, rot = { x = 0.000, y = 97.743, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 },
	{ config_id = 607005, monster_id = 21011001, pos = { x = 2208.529, y = 207.964, z = -1106.562 }, rot = { x = 0.000, y = 121.176, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 },
	{ config_id = 607006, monster_id = 21010701, pos = { x = 2213.071, y = 208.185, z = -1115.482 }, rot = { x = 0.000, y = 95.532, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 },
	{ config_id = 607007, monster_id = 21020101, pos = { x = 2213.031, y = 207.691, z = -1109.583 }, rot = { x = 0.000, y = 117.853, z = 0.000 }, level = 2, drop_id = 1000100, isElite = true, area_id = 1 },
	{ config_id = 607008, monster_id = 21011001, pos = { x = 2264.948, y = 213.710, z = -1144.234 }, rot = { x = 0.000, y = 342.163, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 }
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
	{ config_id = 1607031, name = "ANY_MONSTER_DIE_607031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_607031", action = "action_EVENT_ANY_MONSTER_DIE_607031" }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadgetNum", value = 0, no_refresh = false },
	{ config_id = 2, name = "QQNum", value = 0, no_refresh = false }
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
		monsters = { 607003, 607004, 607005, 607006, 607007, 607008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_607031" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_607031(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_607031(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2240,y=208,z=-1124}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110152, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330036071") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end