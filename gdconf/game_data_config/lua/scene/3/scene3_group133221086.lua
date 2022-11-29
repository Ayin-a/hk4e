-- 基础信息
local base_info = {
	group_id = 133221086
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 86002, monster_id = 21010101, pos = { x = -3128.983, y = 214.278, z = -4294.492 }, rot = { x = 0.000, y = 310.033, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 1101 }, area_id = 11 },
	{ config_id = 86003, monster_id = 21010201, pos = { x = -3133.089, y = 213.784, z = -4293.042 }, rot = { x = 0.000, y = 253.880, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 1101 }, pose_id = 9016, area_id = 11 },
	{ config_id = 86004, monster_id = 21010101, pos = { x = -3128.208, y = 213.891, z = -4289.708 }, rot = { x = 0.000, y = 271.595, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 1101 }, area_id = 11 },
	{ config_id = 86005, monster_id = 21010601, pos = { x = -3126.912, y = 214.538, z = -4295.360 }, rot = { x = 0.000, y = 314.402, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 1101 }, area_id = 11 },
	{ config_id = 86006, monster_id = 21010601, pos = { x = -3125.847, y = 213.966, z = -4289.586 }, rot = { x = 0.000, y = 270.893, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 1101 }, area_id = 11 },
	{ config_id = 86007, monster_id = 21010101, pos = { x = -3132.406, y = 213.765, z = -4288.458 }, rot = { x = 0.000, y = 222.752, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 1101 }, pose_id = 9016, area_id = 11 },
	{ config_id = 86008, monster_id = 21010101, pos = { x = -3129.671, y = 214.490, z = -4289.683 }, rot = { x = 0.000, y = 196.386, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 1101 }, pose_id = 9016, area_id = 11 },
	{ config_id = 86009, monster_id = 21010101, pos = { x = -3133.218, y = 213.377, z = -4295.558 }, rot = { x = 0.000, y = 301.207, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 1101 }, pose_id = 9016, area_id = 11 }
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
	{ config_id = 1086001, name = "ANY_MONSTER_DIE_86001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_86001", action = "action_EVENT_ANY_MONSTER_DIE_86001" },
	{ config_id = 1086010, name = "ANY_MONSTER_DIE_86010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_86010", action = "action_EVENT_ANY_MONSTER_DIE_86010" }
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
		monsters = { 86003, 86007, 86008, 86009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_86001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 86002, 86004, 86005, 86006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_86010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_86001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_86001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133221086, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3132.645,y=213.9157,z=-4295.791}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_86010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_86010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332210861") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end