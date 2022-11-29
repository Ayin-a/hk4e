-- 基础信息
local base_info = {
	group_id = 133303616
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
	{ config_id = 616001, gadget_id = 70500000, pos = { x = -1777.086, y = 303.007, z = 4067.194 }, rot = { x = 32.023, y = 188.113, z = 7.357 }, level = 1, point_type = 1005, persistent = true, area_id = 26 },
	{ config_id = 616002, gadget_id = 70500000, pos = { x = -1785.819, y = 304.513, z = 4067.023 }, rot = { x = 20.443, y = 99.528, z = 347.404 }, level = 1, point_type = 1003, persistent = true, area_id = 26 },
	{ config_id = 616003, gadget_id = 70500000, pos = { x = -1777.594, y = 302.735, z = 4066.156 }, rot = { x = 357.163, y = 38.694, z = 342.668 }, level = 1, point_type = 1003, persistent = true, area_id = 26 },
	{ config_id = 616004, gadget_id = 70500000, pos = { x = -1784.886, y = 304.427, z = 4067.610 }, rot = { x = 5.383, y = 70.973, z = 355.203 }, level = 1, point_type = 1005, persistent = true, area_id = 26 },
	{ config_id = 616005, gadget_id = 70360001, pos = { x = -1780.632, y = 304.040, z = 4067.345 }, rot = { x = 347.511, y = 355.049, z = 348.395 }, level = 1, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 616001, 616002, 616003, 616004, 616005 },
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

require "V2_0/OreBlossomGroup"