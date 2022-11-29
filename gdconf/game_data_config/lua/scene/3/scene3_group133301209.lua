-- 基础信息
local base_info = {
	group_id = 133301209
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
	{ config_id = 209001, gadget_id = 70310485, pos = { x = -151.988, y = 237.471, z = 3461.415 }, rot = { x = 0.000, y = 292.500, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 29 },
	{ config_id = 209002, gadget_id = 70310485, pos = { x = -148.680, y = 237.623, z = 3462.214 }, rot = { x = 0.000, y = 327.530, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 29 },
	{ config_id = 209003, gadget_id = 70310485, pos = { x = -152.747, y = 237.378, z = 3464.969 }, rot = { x = 0.000, y = 72.099, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 29 },
	{ config_id = 209004, gadget_id = 70710102, pos = { x = -154.931, y = 237.862, z = 3460.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 209005, gadget_id = 71700425, pos = { x = -155.076, y = 237.881, z = 3461.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 209006, gadget_id = 71700426, pos = { x = -155.561, y = 237.926, z = 3460.415 }, rot = { x = 0.000, y = 23.876, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 209007, gadget_id = 70710104, pos = { x = -155.650, y = 237.862, z = 3461.095 }, rot = { x = 0.000, y = 326.825, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 209008, gadget_id = 71700427, pos = { x = -155.162, y = 237.932, z = 3460.726 }, rot = { x = 0.000, y = 20.953, z = 0.000 }, level = 27, area_id = 29 }
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
		gadgets = { 209001, 209002, 209003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 209001, 209002, 209003, 209004, 209005, 209006, 209007, 209008 },
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