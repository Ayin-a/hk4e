-- 基础信息
local base_info = {
	group_id = 201017011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11001, monster_id = 20011101, pos = { x = 4.255, y = 69.432, z = 76.582 }, rot = { x = 0.000, y = 301.167, z = 0.000 }, level = 1 },
	{ config_id = 11002, monster_id = 20010901, pos = { x = -6.758, y = 69.431, z = 75.375 }, rot = { x = 0.000, y = 301.167, z = 0.000 }, level = 1, affix = { 6101 } },
	{ config_id = 11003, monster_id = 20010801, pos = { x = 5.072, y = 69.504, z = 82.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11004, monster_id = 20011001, pos = { x = -3.469, y = 69.509, z = 76.118 }, rot = { x = 0.000, y = 301.167, z = 0.000 }, level = 1 },
	{ config_id = 11005, monster_id = 20010801, pos = { x = 2.363, y = 69.507, z = 79.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11006, monster_id = 20011001, pos = { x = -5.319, y = 69.434, z = 72.702 }, rot = { x = 0.000, y = 301.167, z = 0.000 }, level = 1 }
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
	{ config_id = 1011007, name = "ANY_MONSTER_DIE_11007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11007", action = "action_EVENT_ANY_MONSTER_DIE_11007" }
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
		monsters = { 11001, 11002, 11003, 11004, 11005, 11006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_11007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201017012, 2)
	
	return 0
end