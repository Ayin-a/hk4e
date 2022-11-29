-- 基础信息
local base_info = {
	group_id = 133302148
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 148001, monster_id = 26120301, pos = { x = -273.353, y = 201.934, z = 2661.212 }, rot = { x = 0.000, y = 16.525, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 24 },
	{ config_id = 148003, monster_id = 26120101, pos = { x = -275.101, y = 201.937, z = 2661.296 }, rot = { x = 0.000, y = 23.231, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 201, area_id = 24 },
	{ config_id = 148004, monster_id = 26090201, pos = { x = -275.415, y = 202.584, z = 2663.538 }, rot = { x = 0.000, y = 27.629, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 24 },
	{ config_id = 148005, monster_id = 26090101, pos = { x = -271.383, y = 202.583, z = 2663.213 }, rot = { x = 0.000, y = 9.518, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 24 },
	{ config_id = 148006, monster_id = 26090101, pos = { x = -273.050, y = 202.067, z = 2664.669 }, rot = { x = 0.000, y = 20.720, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 24 },
	{ config_id = 148007, monster_id = 26090401, pos = { x = -271.898, y = 202.426, z = 2662.331 }, rot = { x = 0.000, y = 12.444, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 24 },
	{ config_id = 148008, monster_id = 26090401, pos = { x = -273.491, y = 202.109, z = 2663.914 }, rot = { x = 0.000, y = 12.818, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 24 },
	{ config_id = 148011, monster_id = 26120201, pos = { x = -274.720, y = 201.929, z = 2663.287 }, rot = { x = 0.000, y = 16.113, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 201, area_id = 24 },
	{ config_id = 148012, monster_id = 26120101, pos = { x = -274.533, y = 201.913, z = 2660.812 }, rot = { x = 0.000, y = 12.925, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 201, area_id = 24 },
	{ config_id = 148013, monster_id = 26090201, pos = { x = -275.608, y = 202.996, z = 2664.024 }, rot = { x = 0.000, y = 8.156, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 24 },
	{ config_id = 148015, monster_id = 26090801, pos = { x = -273.348, y = 201.998, z = 2662.313 }, rot = { x = 0.000, y = 339.073, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 24 },
	{ config_id = 148016, monster_id = 26090801, pos = { x = -273.339, y = 202.305, z = 2664.369 }, rot = { x = 0.000, y = 351.100, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 24 },
	{ config_id = 148017, monster_id = 26120201, pos = { x = -275.234, y = 201.946, z = 2661.254 }, rot = { x = 0.000, y = 31.626, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 201, area_id = 24 },
	{ config_id = 148018, monster_id = 26090901, pos = { x = -274.144, y = 201.983, z = 2664.545 }, rot = { x = 0.000, y = 10.629, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 24 },
	{ config_id = 148019, monster_id = 26090401, pos = { x = -274.161, y = 202.406, z = 2661.134 }, rot = { x = 0.000, y = 25.879, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 24 },
	{ config_id = 148020, monster_id = 26090901, pos = { x = -272.600, y = 201.839, z = 2662.101 }, rot = { x = 0.000, y = 6.598, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 24 }
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
	{ config_id = 1148009, name = "ANY_MONSTER_DIE_148009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_148009", action = "action_EVENT_ANY_MONSTER_DIE_148009" },
	{ config_id = 1148010, name = "ANY_MONSTER_DIE_148010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_148010", action = "action_EVENT_ANY_MONSTER_DIE_148010" },
	{ config_id = 1148014, name = "ANY_MONSTER_DIE_148014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_148014", action = "action_EVENT_ANY_MONSTER_DIE_148014" },
	{ config_id = 1148021, name = "ANY_MONSTER_DIE_148021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_148021", action = "action_EVENT_ANY_MONSTER_DIE_148021" }
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
	rand_suite = true
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
		monsters = { 148003, 148004, 148007, 148008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_148009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 148012, 148013, 148015, 148016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_148014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 148001, 148005, 148006, 148011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_148010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 148017, 148018, 148019, 148020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_148021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_148009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_148009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q230300301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_148010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_148010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q230300301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_148014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_148014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q230300301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_148021(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_148021(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q230300301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end