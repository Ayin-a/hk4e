-- 基础信息
local base_info = {
	group_id = 133308065
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
}

-- 装置
gadgets = {
	{ config_id = 65003, gadget_id = 70211150, pos = { x = -2007.772, y = 310.401, z = 4157.174 }, rot = { x = 0.000, y = 46.677, z = 0.000 }, level = 26, chest_drop_id = 21910098, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 65005, gadget_id = 70500000, pos = { x = -2010.940, y = 317.357, z = 4114.333 }, rot = { x = 0.000, y = 143.139, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 26 },
	{ config_id = 65008, gadget_id = 70500000, pos = { x = -1936.687, y = 276.566, z = 4225.156 }, rot = { x = 0.000, y = 237.725, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 26 },
	{ config_id = 65009, gadget_id = 70211150, pos = { x = -2058.637, y = 277.782, z = 4234.068 }, rot = { x = 358.333, y = 57.271, z = 355.760 }, level = 26, chest_drop_id = 21910099, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
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
		gadgets = { 65003, 65005, 65008, 65009 },
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