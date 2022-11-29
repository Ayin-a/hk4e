-- 基础信息
local base_info = {
	group_id = 220165007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 21020201, pos = { x = -562.010, y = 51.396, z = 741.942 }, rot = { x = 0.000, y = 219.620, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 7002, monster_id = 26120401, pos = { x = -566.852, y = 51.396, z = 742.428 }, rot = { x = 0.000, y = 187.750, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101 },
	{ config_id = 7003, monster_id = 26120401, pos = { x = -560.318, y = 51.396, z = 738.267 }, rot = { x = 0.000, y = 238.709, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101 },
	{ config_id = 7004, monster_id = 21010701, pos = { x = -564.223, y = 51.396, z = 743.617 }, rot = { x = 0.000, y = 215.883, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 7005, monster_id = 26090801, pos = { x = -565.005, y = 51.396, z = 740.322 }, rot = { x = 0.000, y = 222.428, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101 },
	{ config_id = 7006, monster_id = 26090801, pos = { x = -562.813, y = 51.396, z = 738.139 }, rot = { x = 0.000, y = 235.372, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101 },
	{ config_id = 7007, monster_id = 21010701, pos = { x = -558.559, y = 51.396, z = 739.846 }, rot = { x = 0.000, y = 234.360, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 7008, monster_id = 21010201, pos = { x = -565.243, y = 51.396, z = 739.874 }, rot = { x = 0.000, y = 203.884, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 7010, monster_id = 21010201, pos = { x = -561.933, y = 51.396, z = 737.220 }, rot = { x = 0.000, y = 225.759, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 7011, monster_id = 21030301, pos = { x = -562.043, y = 51.396, z = 741.779 }, rot = { x = 0.000, y = 220.222, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 7014, monster_id = 26091001, pos = { x = -565.088, y = 51.396, z = 740.235 }, rot = { x = 0.000, y = 224.356, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101 },
	{ config_id = 7015, monster_id = 26091001, pos = { x = -562.776, y = 51.396, z = 738.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101 },
	{ config_id = 7016, monster_id = 20010501, pos = { x = -566.976, y = 51.396, z = 742.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 7017, monster_id = 20010501, pos = { x = -560.190, y = 51.396, z = 737.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 7018, monster_id = 21020201, pos = { x = -561.975, y = 51.396, z = 741.928 }, rot = { x = 0.000, y = 221.349, z = 0.000 }, level = 1, drop_id = 1000100 }
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
	{ config_id = 1007009, name = "ANY_MONSTER_DIE_7009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7009", action = "action_EVENT_ANY_MONSTER_DIE_7009" },
	-- 第一波
	{ config_id = 1007012, name = "ANY_MONSTER_DIE_7012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7012", action = "action_EVENT_ANY_MONSTER_DIE_7012" },
	-- 第2波
	{ config_id = 1007013, name = "ANY_MONSTER_DIE_7013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7013", action = "action_EVENT_ANY_MONSTER_DIE_7013" }
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
		monsters = { 7001, 7002, 7003, 7005, 7006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 7004, 7007, 7008, 7010, 7011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 7014, 7015, 7016, 7017, 7018 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2201650071") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165007, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7013(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165007, 4)
	
	return 0
end