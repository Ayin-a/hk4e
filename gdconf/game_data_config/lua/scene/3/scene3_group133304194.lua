-- 基础信息
local base_info = {
	group_id = 133304194
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 194001, monster_id = 26090101, pos = { x = -1427.924, y = 344.660, z = 2144.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 194002, monster_id = 26090101, pos = { x = -1418.413, y = 341.945, z = 2144.141 }, rot = { x = 0.000, y = 243.519, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 194003, monster_id = 26090201, pos = { x = -1423.612, y = 343.781, z = 2150.631 }, rot = { x = 0.000, y = 61.735, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 194004, monster_id = 26090901, pos = { x = -1418.231, y = 344.660, z = 2146.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 194005, monster_id = 26090901, pos = { x = -1408.720, y = 341.945, z = 2146.375 }, rot = { x = 0.000, y = 243.519, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 194006, monster_id = 26120101, pos = { x = -1413.919, y = 343.781, z = 2152.865 }, rot = { x = 0.000, y = 250.069, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 201, area_id = 21 },
	{ config_id = 194007, monster_id = 26120201, pos = { x = -1416.415, y = 343.780, z = 2141.974 }, rot = { x = 0.000, y = 61.735, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 201, area_id = 21 },
	{ config_id = 194009, monster_id = 26090201, pos = { x = -1426.108, y = 343.780, z = 2139.739 }, rot = { x = 0.000, y = 61.735, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 21 }
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
	{ config_id = 1194008, name = "ANY_MONSTER_DIE_194008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_194008", action = "action_EVENT_ANY_MONSTER_DIE_194008" },
	{ config_id = 1194010, name = "ANY_MONSTER_DIE_194010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_194010", action = "action_EVENT_ANY_MONSTER_DIE_194010", trigger_count = 0 }
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
		monsters = { 194001, 194002, 194003, 194009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_194008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 194004, 194005, 194006, 194007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_194010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_194008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_194008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304194, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_194010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_194010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133304194") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end