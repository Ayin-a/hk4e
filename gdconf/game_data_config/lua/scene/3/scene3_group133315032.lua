-- 基础信息
local base_info = {
	group_id = 133315032
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
	{ config_id = 32001, gadget_id = 70500000, pos = { x = -611.298, y = 114.263, z = 2205.406 }, rot = { x = 17.694, y = 306.208, z = 357.483 }, level = 1, point_type = 1005, persistent = true, area_id = 24 },
	{ config_id = 32002, gadget_id = 70500000, pos = { x = -606.438, y = 113.549, z = 2209.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 24 },
	{ config_id = 32003, gadget_id = 70500000, pos = { x = -604.172, y = 113.549, z = 2208.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 24 },
	{ config_id = 32004, gadget_id = 70500000, pos = { x = -600.740, y = 113.644, z = 2208.344 }, rot = { x = 16.254, y = 353.591, z = 11.667 }, level = 1, point_type = 1005, persistent = true, area_id = 24 },
	{ config_id = 32005, gadget_id = 70360001, pos = { x = -605.669, y = 113.625, z = 2209.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 24 }
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
		gadgets = { 32001, 32002, 32003, 32004, 32005 },
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