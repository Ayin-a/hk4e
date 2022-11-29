-- 基础信息
local base_info = {
	group_id = 133211002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 23010301, pos = { x = -3948.495, y = 200.278, z = -1109.016 }, rot = { x = 0.000, y = 329.094, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 17 },
	{ config_id = 2002, monster_id = 23010601, pos = { x = -3944.110, y = 200.233, z = -1109.235 }, rot = { x = 0.000, y = 294.801, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 17 },
	{ config_id = 2003, monster_id = 23010201, pos = { x = -3940.388, y = 200.137, z = -1116.708 }, rot = { x = 0.000, y = 22.180, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 17 },
	{ config_id = 2006, monster_id = 23010101, pos = { x = -3945.724, y = 200.236, z = -1107.435 }, rot = { x = 0.000, y = 310.472, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 17 },
	{ config_id = 2007, monster_id = 23010401, pos = { x = -3951.426, y = 200.138, z = -1115.983 }, rot = { x = 0.000, y = 16.331, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 17 },
	{ config_id = 2008, monster_id = 23010501, pos = { x = -3944.101, y = 200.000, z = -1121.234 }, rot = { x = 0.000, y = 14.178, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 17 }
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
	{ config_id = 1002004, name = "ANY_MONSTER_DIE_2004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2004", action = "action_EVENT_ANY_MONSTER_DIE_2004" },
	{ config_id = 1002005, name = "ANY_MONSTER_DIE_2005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2005", action = "action_EVENT_ANY_MONSTER_DIE_2005" }
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
		monsters = { 2001, 2002, 2006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2003, 2007, 2008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133211002, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3929.485,y=200,z=-1124.133}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110317, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1202002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end