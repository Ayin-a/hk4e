-- 基础信息
local base_info = {
	group_id = 133301033
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
	{ config_id = 33003, npc_id = 20739, pos = { x = -1322.714, y = 172.911, z = 3433.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
}

-- 装置
gadgets = {
	{ config_id = 33001, gadget_id = 70310485, pos = { x = -1320.783, y = 172.579, z = 3434.325 }, rot = { x = 0.000, y = 1.489, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 33002, gadget_id = 70360040, pos = { x = -1322.727, y = 172.912, z = 3433.438 }, rot = { x = 0.000, y = 34.799, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
		monsters = { },
		gadgets = { 33001, 33002 },
		regions = { },
		triggers = { },
		npcs = { 33003 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 33001 },
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