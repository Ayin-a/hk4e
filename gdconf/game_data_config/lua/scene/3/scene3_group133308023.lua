-- 基础信息
local base_info = {
	group_id = 133308023
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 23001, monster_id = 23010301, pos = { x = -1500.235, y = 170.902, z = 4396.263 }, rot = { x = 0.000, y = 42.045, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 23003, monster_id = 23010401, pos = { x = -1496.341, y = 170.902, z = 4395.458 }, rot = { x = 0.000, y = 349.512, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 23004, monster_id = 25210203, pos = { x = -1500.035, y = 170.902, z = 4393.759 }, rot = { x = 0.000, y = 42.045, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 23005, monster_id = 25210203, pos = { x = -1497.428, y = 170.902, z = 4393.147 }, rot = { x = 0.000, y = 349.512, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 23007, monster_id = 25310101, pos = { x = -1500.322, y = 170.902, z = 4392.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 23008, monster_id = 25310301, pos = { x = -1496.954, y = 170.902, z = 4392.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 23009, monster_id = 25410101, pos = { x = -1498.219, y = 170.902, z = 4393.959 }, rot = { x = 0.000, y = 33.179, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 23010, monster_id = 25210303, pos = { x = -1496.890, y = 171.025, z = 4391.257 }, rot = { x = 0.000, y = 349.512, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 23011, monster_id = 25210203, pos = { x = -1500.635, y = 170.902, z = 4392.097 }, rot = { x = 0.000, y = 42.045, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 23013, monster_id = 35310101, pos = { x = -1499.609, y = 171.025, z = 4403.193 }, rot = { x = 0.000, y = 174.359, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 26, isPartner = true },
	{ config_id = 23014, monster_id = 35310301, pos = { x = -1495.258, y = 171.100, z = 4401.971 }, rot = { x = 0.000, y = 237.604, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 26, isPartner = true }
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
	{ config_id = 1023002, name = "ANY_MONSTER_DIE_23002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_23002", action = "action_EVENT_ANY_MONSTER_DIE_23002" },
	{ config_id = 1023006, name = "ANY_MONSTER_DIE_23006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_23006", action = "action_EVENT_ANY_MONSTER_DIE_23006" },
	{ config_id = 1023012, name = "ANY_MONSTER_DIE_23012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_23012", action = "action_EVENT_ANY_MONSTER_DIE_23012" }
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
		monsters = { 23001, 23003, 23004, 23005, 23013, 23014 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_23002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 23007, 23008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_23006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 23009, 23010, 23011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_23012" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_23002(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_23002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308023, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_23006(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_23006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308023, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_23012(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_23012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7305541") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end