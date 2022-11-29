-- 基础信息
local base_info = {
	group_id = 133220710
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 710001, monster_id = 22040201, pos = { x = -2471.346, y = 202.148, z = -4152.777 }, rot = { x = 0.000, y = 67.685, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 },
	{ config_id = 710002, monster_id = 22040201, pos = { x = -2468.795, y = 202.405, z = -4159.254 }, rot = { x = 0.000, y = 62.858, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 },
	{ config_id = 710004, monster_id = 22040201, pos = { x = -2463.716, y = 202.148, z = -4148.093 }, rot = { x = 0.000, y = 208.392, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 },
	{ config_id = 710005, monster_id = 22040101, pos = { x = -2456.082, y = 202.405, z = -4152.860 }, rot = { x = 0.000, y = 252.181, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 },
	{ config_id = 710007, monster_id = 22040201, pos = { x = -2462.029, y = 202.148, z = -4149.830 }, rot = { x = 0.000, y = 215.172, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 },
	{ config_id = 710008, monster_id = 22050201, pos = { x = -2457.689, y = 202.405, z = -4154.655 }, rot = { x = 0.000, y = 239.775, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 }
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
	{ config_id = 1710003, name = "ANY_MONSTER_DIE_710003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_710003", action = "action_EVENT_ANY_MONSTER_DIE_710003" },
	{ config_id = 1710006, name = "ANY_MONSTER_DIE_710006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_710006", action = "action_EVENT_ANY_MONSTER_DIE_710006" },
	{ config_id = 1710009, name = "ANY_MONSTER_DIE_710009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_710009", action = "action_EVENT_ANY_MONSTER_DIE_710009" }
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
		monsters = { 710001, 710002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_710003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 710004, 710005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_710006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 710007, 710008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_710009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_710003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_710003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220710, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2467.593,y=202.7709,z=-4161.043}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_710006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_710006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220710, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2467.593,y=202.7709,z=-4161.043}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_710009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_710009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1204105") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end