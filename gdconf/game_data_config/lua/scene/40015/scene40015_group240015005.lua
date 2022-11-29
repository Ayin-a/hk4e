-- 基础信息
local base_info = {
	group_id = 240015005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 25010501, pos = { x = -139.643, y = 37.255, z = 84.419 }, rot = { x = 0.000, y = 150.363, z = 0.000 }, level = 1 },
	{ config_id = 5002, monster_id = 25010301, pos = { x = -130.551, y = 37.212, z = 84.451 }, rot = { x = 0.000, y = 219.055, z = 0.000 }, level = 1 },
	{ config_id = 5003, monster_id = 25030201, pos = { x = -142.495, y = 37.221, z = 76.400 }, rot = { x = 0.000, y = 74.797, z = 0.000 }, level = 1 },
	{ config_id = 5004, monster_id = 25030201, pos = { x = -130.265, y = 37.211, z = 77.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5005, monster_id = 25020201, pos = { x = -143.784, y = 37.233, z = 83.447 }, rot = { x = 0.000, y = 158.133, z = 0.000 }, level = 1 },
	{ config_id = 5006, monster_id = 25030201, pos = { x = -135.421, y = 37.227, z = 76.721 }, rot = { x = 0.000, y = 32.003, z = 0.000 }, level = 1 }
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
	{ config_id = 1005007, name = "ANY_MONSTER_DIE_5007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5007", action = "action_EVENT_ANY_MONSTER_DIE_5007" }
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
		triggers = { "ANY_MONSTER_DIE_5007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 5001, 5002, 5003, 5004, 5005, 5006 },
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
function condition_EVENT_ANY_MONSTER_DIE_5007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240015009, 2)
	
	return 0
end