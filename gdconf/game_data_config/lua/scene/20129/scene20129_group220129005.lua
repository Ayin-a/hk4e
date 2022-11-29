-- 基础信息
local base_info = {
	group_id = 220129005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 23010101, pos = { x = 329.966, y = 200.120, z = 280.922 }, rot = { x = 0.000, y = 226.849, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 5003, monster_id = 23010601, pos = { x = 332.137, y = 200.025, z = 269.863 }, rot = { x = 0.000, y = 255.112, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 5006, monster_id = 23020101, pos = { x = 330.930, y = 200.160, z = 275.727 }, rot = { x = 0.000, y = 212.471, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5004, gadget_id = 70800195, pos = { x = 327.455, y = 200.197, z = 275.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005002, name = "ANY_MONSTER_DIE_5002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5002", action = "action_EVENT_ANY_MONSTER_DIE_5002" },
	{ config_id = 1005007, name = "ANY_MONSTER_DIE_5007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5007", action = "action_EVENT_ANY_MONSTER_DIE_5007" }
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
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 5001, 5003 },
		gadgets = { 5004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5002" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 5006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5002(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220129005, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=326,y=200,z=279}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 201290401, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "103013") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end