-- 基础信息
local base_info = {
	group_id = 250015034
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 34001, monster_id = 21011001, pos = { x = 1588.648, y = 203.142, z = 905.879 }, rot = { x = 0.000, y = 291.326, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 34002, monster_id = 21011001, pos = { x = 1587.824, y = 203.142, z = 904.030 }, rot = { x = 0.000, y = 302.132, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 34003, monster_id = 22010101, pos = { x = 1582.030, y = 203.137, z = 909.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 34004, monster_id = 21030201, pos = { x = 1577.199, y = 203.141, z = 911.073 }, rot = { x = 0.000, y = 121.103, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 34006, monster_id = 21030201, pos = { x = 1587.674, y = 203.141, z = 905.311 }, rot = { x = 0.000, y = 314.754, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 34007, monster_id = 21010201, pos = { x = 1580.222, y = 203.138, z = 910.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 34008, monster_id = 21010201, pos = { x = 1584.020, y = 203.137, z = 907.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 34009, monster_id = 21010701, pos = { x = 1584.090, y = 203.138, z = 910.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 34010, monster_id = 21010701, pos = { x = 1578.392, y = 203.139, z = 907.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 34013, monster_id = 21010301, pos = { x = 1582.509, y = 203.137, z = 906.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 34014, monster_id = 21010301, pos = { x = 1582.980, y = 203.139, z = 911.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 34015, monster_id = 21010501, pos = { x = 1576.368, y = 203.141, z = 910.351 }, rot = { x = 0.000, y = 112.162, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 34016, monster_id = 21010501, pos = { x = 1577.308, y = 203.141, z = 912.369 }, rot = { x = 0.000, y = 132.947, z = 0.000 }, level = 1, disableWander = true }
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
	{ config_id = 1034030, name = "ANY_MONSTER_DIE_34030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_34030", action = "action_EVENT_ANY_MONSTER_DIE_34030" },
	{ config_id = 1034031, name = "ANY_MONSTER_DIE_34031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_34031", action = "action_EVENT_ANY_MONSTER_DIE_34031" }
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
		monsters = { 34001, 34002, 34007, 34008, 34015, 34016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_34030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 34009, 34010, 34013, 34014 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_34031" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 34003, 34004, 34006 },
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
function condition_EVENT_ANY_MONSTER_DIE_34030(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_34030(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015034, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_34031(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_34031(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015034, 3)
	
	return 0
end