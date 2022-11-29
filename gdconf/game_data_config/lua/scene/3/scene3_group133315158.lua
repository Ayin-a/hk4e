-- 基础信息
local base_info = {
	group_id = 133315158
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
	{ config_id = 158001, gadget_id = 70500000, pos = { x = 163.793, y = 254.807, z = 2857.055 }, rot = { x = 0.000, y = 306.842, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 20 },
	{ config_id = 158002, gadget_id = 70500000, pos = { x = 152.782, y = 254.032, z = 2849.020 }, rot = { x = 0.000, y = 268.551, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 20 },
	{ config_id = 158003, gadget_id = 70360001, pos = { x = 156.429, y = 253.511, z = 2857.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 20 }
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
		gadgets = { 158001, 158002, 158003 },
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