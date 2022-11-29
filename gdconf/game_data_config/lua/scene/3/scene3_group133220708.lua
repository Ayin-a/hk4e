-- 基础信息
local base_info = {
	group_id = 133220708
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 708001, monster_id = 22040101, pos = { x = -2441.362, y = 247.059, z = -4509.056 }, rot = { x = 0.000, y = 329.488, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 },
	{ config_id = 708002, monster_id = 22040101, pos = { x = -2438.464, y = 246.673, z = -4506.057 }, rot = { x = 0.000, y = 314.152, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 },
	{ config_id = 708004, monster_id = 22040101, pos = { x = -2448.875, y = 247.972, z = -4517.515 }, rot = { x = 0.000, y = 37.191, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 },
	{ config_id = 708005, monster_id = 22050101, pos = { x = -2445.937, y = 247.629, z = -4519.772 }, rot = { x = 0.000, y = 342.905, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 },
	{ config_id = 708007, monster_id = 22040201, pos = { x = -2435.650, y = 247.664, z = -4499.580 }, rot = { x = 0.000, y = 173.911, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 },
	{ config_id = 708008, monster_id = 22040201, pos = { x = -2437.152, y = 246.483, z = -4502.055 }, rot = { x = 0.000, y = 184.522, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 },
	{ config_id = 708009, monster_id = 22040201, pos = { x = -2434.623, y = 244.778, z = -4505.504 }, rot = { x = 0.000, y = 198.880, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 }
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
	{ config_id = 1708003, name = "ANY_MONSTER_DIE_708003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_708003", action = "action_EVENT_ANY_MONSTER_DIE_708003" },
	{ config_id = 1708006, name = "ANY_MONSTER_DIE_708006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_708006", action = "action_EVENT_ANY_MONSTER_DIE_708006" },
	{ config_id = 1708010, name = "ANY_MONSTER_DIE_708010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_708010" },
	{ config_id = 1708011, name = "ANY_MONSTER_DIE_708011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_708011" }
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
		monsters = { 708001, 708002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_708003", "ANY_MONSTER_DIE_708011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 708004, 708005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_708006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 708007, 708008, 708009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_708010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_708003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_708003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220708, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2434.938,y=250.5282,z=-4511.285}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_708006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_708006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220708, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2440.548,y=246.3917,z=-4511.9}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110502, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_708010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1204003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_708011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1204002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end