-- 基础信息
local base_info = {
	group_id = 199002018
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 18001, monster_id = 21030401, pos = { x = 951.402, y = 99.055, z = -804.653 }, rot = { x = 0.000, y = 220.100, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9012, area_id = 401 },
	{ config_id = 18002, monster_id = 21020201, pos = { x = 944.979, y = 99.166, z = -798.051 }, rot = { x = 0.000, y = 21.983, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 401, area_id = 401 },
	{ config_id = 18003, monster_id = 21020101, pos = { x = 953.944, y = 99.071, z = -813.617 }, rot = { x = 0.000, y = 122.434, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 401 },
	{ config_id = 18005, monster_id = 21010601, pos = { x = 950.122, y = 99.037, z = -801.345 }, rot = { x = 0.000, y = 200.177, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9012, area_id = 401 },
	{ config_id = 18006, monster_id = 21010601, pos = { x = 951.327, y = 99.123, z = -809.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9012, area_id = 401 },
	{ config_id = 18007, monster_id = 21011001, pos = { x = 948.675, y = 99.235, z = -812.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9002, area_id = 401 },
	{ config_id = 18008, monster_id = 21011001, pos = { x = 942.138, y = 99.133, z = -800.453 }, rot = { x = 0.000, y = 82.674, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9002, area_id = 401 }
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
	{ config_id = 1018004, name = "ANY_MONSTER_DIE_18004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_18004", action = "action_EVENT_ANY_MONSTER_DIE_18004" }
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
		monsters = { 18001, 18002, 18003, 18005, 18006, 18007, 18008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_18004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_18004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_18004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902906finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end