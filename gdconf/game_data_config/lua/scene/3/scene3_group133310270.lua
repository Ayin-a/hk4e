-- 基础信息
local base_info = {
	group_id = 133310270
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
	{ config_id = 270001, gadget_id = 70500000, pos = { x = -2676.707, y = 208.760, z = 4653.334 }, rot = { x = 326.760, y = 348.363, z = 43.082 }, level = 1, point_type = 1003, persistent = true, area_id = 28 },
	{ config_id = 270002, gadget_id = 70500000, pos = { x = -2676.736, y = 208.000, z = 4650.844 }, rot = { x = 17.080, y = 176.559, z = 354.716 }, level = 1, point_type = 1003, persistent = true, area_id = 28 },
	{ config_id = 270003, gadget_id = 70360001, pos = { x = -2672.394, y = 205.498, z = 4644.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 28 }
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
		gadgets = { 270001, 270002, 270003 },
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