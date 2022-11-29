-- 基础信息
local base_info = {
	group_id = 133003094
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 484, monster_id = 21010601, pos = { x = 2178.704, y = 246.730, z = -1588.962 }, rot = { x = 0.000, y = 3.875, z = 0.000 }, level = 12, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 485, monster_id = 21010601, pos = { x = 2180.024, y = 246.415, z = -1586.576 }, rot = { x = 0.000, y = 14.380, z = 0.000 }, level = 12, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 486, monster_id = 21010601, pos = { x = 2206.629, y = 249.830, z = -1628.819 }, rot = { x = 0.000, y = 6.767, z = 0.000 }, level = 13, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 487, monster_id = 21010601, pos = { x = 2197.109, y = 249.949, z = -1627.465 }, rot = { x = 0.000, y = 30.870, z = 0.000 }, level = 13, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 711, monster_id = 21010201, pos = { x = 2176.516, y = 246.455, z = -1588.213 }, rot = { x = 0.000, y = 11.833, z = 0.000 }, level = 12, drop_tag = "丘丘人", disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2600, gadget_id = 70211101, pos = { x = 2166.727, y = 240.316, z = -1534.983 }, rot = { x = 4.332, y = 324.457, z = 354.245 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
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
		monsters = { 484, 485, 486, 487, 711 },
		gadgets = { 2600 },
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