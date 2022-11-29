-- 基础信息
local base_info = {
	group_id = 166001295
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 295002, monster_id = 28010301, pos = { x = 724.888, y = 401.122, z = 571.794 }, rot = { x = 0.000, y = 326.561, z = 0.000 }, level = 36, drop_tag = "采集动物", disableWander = true, area_id = 300 },
	{ config_id = 295003, monster_id = 28010301, pos = { x = 724.111, y = 401.122, z = 571.206 }, rot = { x = 0.000, y = 320.317, z = 0.000 }, level = 36, drop_tag = "采集动物", disableWander = true, area_id = 300 },
	{ config_id = 295004, monster_id = 28010302, pos = { x = 724.899, y = 402.097, z = 570.782 }, rot = { x = 0.000, y = 321.529, z = 0.000 }, level = 36, drop_tag = "采集动物", disableWander = true, area_id = 300 },
	{ config_id = 295006, monster_id = 28010303, pos = { x = 723.533, y = 400.890, z = 572.726 }, rot = { x = 0.000, y = 135.872, z = 0.000 }, level = 36, drop_tag = "采集动物", disableWander = true, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 295001, gadget_id = 70211001, pos = { x = 724.965, y = 401.020, z = 570.741 }, rot = { x = 0.000, y = 322.822, z = 0.000 }, level = 26, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 295005, gadget_id = 70220019, pos = { x = 723.995, y = 394.298, z = 572.096 }, rot = { x = 0.000, y = 322.814, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 295007, gadget_id = 70220019, pos = { x = 724.647, y = 394.530, z = 571.176 }, rot = { x = 0.000, y = 231.670, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 295008, gadget_id = 70500000, pos = { x = 721.963, y = 401.430, z = 595.549 }, rot = { x = 40.070, y = 308.459, z = 0.000 }, level = 36, point_type = 2044, area_id = 300 },
	{ config_id = 295009, gadget_id = 70500000, pos = { x = 722.088, y = 401.792, z = 594.831 }, rot = { x = 21.989, y = 217.953, z = 347.092 }, level = 36, point_type = 2044, area_id = 300 }
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
		monsters = { 295002, 295003, 295004, 295006 },
		gadgets = { 295001, 295005, 295007, 295008, 295009 },
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
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