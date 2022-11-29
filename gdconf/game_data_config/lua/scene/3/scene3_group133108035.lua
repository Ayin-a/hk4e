-- 基础信息
local base_info = {
	group_id = 133108035
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35002, monster_id = 21010101, pos = { x = -130.970, y = 200.650, z = -850.369 }, rot = { x = 0.000, y = 230.647, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9011, area_id = 7 },
	{ config_id = 35005, monster_id = 21010201, pos = { x = -99.738, y = 200.181, z = -860.941 }, rot = { x = 357.657, y = 150.807, z = 1.309 }, level = 32, drop_tag = "丘丘人", pose_id = 9015, area_id = 7 },
	{ config_id = 35006, monster_id = 21010301, pos = { x = -102.345, y = 200.471, z = -861.845 }, rot = { x = 359.896, y = 135.676, z = 8.793 }, level = 32, drop_tag = "丘丘人", pose_id = 9015, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 35001, gadget_id = 70310006, pos = { x = -132.021, y = 200.869, z = -851.594 }, rot = { x = 3.824, y = 3.809, z = 358.072 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 35003, gadget_id = 70310001, pos = { x = -120.929, y = 201.358, z = -871.329 }, rot = { x = 357.702, y = 100.074, z = 8.413 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 35004, gadget_id = 70310001, pos = { x = -127.694, y = 200.818, z = -868.453 }, rot = { x = 358.236, y = 260.181, z = 0.305 }, level = 32, state = GadgetState.GearStart, area_id = 7 }
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
		monsters = { 35002, 35005, 35006 },
		gadgets = { 35001, 35003, 35004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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