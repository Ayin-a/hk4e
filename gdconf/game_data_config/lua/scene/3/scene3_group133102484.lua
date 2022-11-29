-- 基础信息
local base_info = {
	group_id = 133102484
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 484006, monster_id = 21010701, pos = { x = 1488.872, y = 219.916, z = 483.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "丘丘人", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 484002, gadget_id = 70310001, pos = { x = 1480.267, y = 219.900, z = 460.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 5 },
	{ config_id = 484003, gadget_id = 70310001, pos = { x = 1489.377, y = 220.061, z = 495.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 5 },
	{ config_id = 484004, gadget_id = 70310001, pos = { x = 1474.555, y = 220.359, z = 473.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 5 },
	{ config_id = 484005, gadget_id = 70211111, pos = { x = 1461.916, y = 229.022, z = 501.656 }, rot = { x = -0.002, y = 90.458, z = 359.994 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 484007, gadget_id = 70310001, pos = { x = 1487.562, y = 219.900, z = 482.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 5 },
	{ config_id = 484008, gadget_id = 70310001, pos = { x = 1488.433, y = 222.119, z = 511.298 }, rot = { x = 0.000, y = 32.940, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 5 }
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
		monsters = { 484006 },
		gadgets = { 484002, 484003, 484004, 484005, 484007, 484008 },
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