-- 基础信息
local base_info = {
	group_id = 133220133
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
	{ config_id = 133001, gadget_id = 70500000, pos = { x = -2480.736, y = 456.428, z = -4416.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9157, area_id = 11 },
	{ config_id = 133002, gadget_id = 70500000, pos = { x = -2475.280, y = 451.910, z = -4405.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9157, area_id = 11 },
	{ config_id = 133003, gadget_id = 70500000, pos = { x = -2460.522, y = 452.838, z = -4412.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9157, area_id = 11 },
	{ config_id = 133007, gadget_id = 70500000, pos = { x = -2458.686, y = 453.791, z = -4399.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9156, area_id = 11 },
	{ config_id = 133008, gadget_id = 70500000, pos = { x = -2474.159, y = 452.552, z = -4398.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9156, area_id = 11 },
	{ config_id = 133009, gadget_id = 70500000, pos = { x = -2481.731, y = 456.544, z = -4420.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9156, area_id = 11 }
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
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 133007, 133008, 133009 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 133001, 133002, 133003 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================