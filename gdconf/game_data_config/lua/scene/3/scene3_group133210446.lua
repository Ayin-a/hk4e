-- 基础信息
local base_info = {
	group_id = 133210446
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
	{ config_id = 446001, gadget_id = 70500000, pos = { x = -4061.408, y = 200.102, z = -824.139 }, rot = { x = 0.894, y = 359.972, z = 356.424 }, level = 1, point_type = 1005, persistent = true, area_id = 17 },
	{ config_id = 446002, gadget_id = 70500000, pos = { x = -4058.099, y = 199.834, z = -824.321 }, rot = { x = 0.000, y = 0.000, z = 354.644 }, level = 1, point_type = 1008, persistent = true, area_id = 17 },
	{ config_id = 446003, gadget_id = 70500000, pos = { x = -4064.143, y = 200.219, z = -822.412 }, rot = { x = 3.210, y = 61.784, z = 0.307 }, level = 1, point_type = 1005, persistent = true, area_id = 17 },
	{ config_id = 446004, gadget_id = 70360001, pos = { x = -4060.095, y = 200.018, z = -822.811 }, rot = { x = 0.000, y = 248.996, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 446005, gadget_id = 70500000, pos = { x = -4060.078, y = 200.229, z = -824.923 }, rot = { x = 356.537, y = 184.694, z = 6.584 }, level = 1, point_type = 1008, persistent = true, area_id = 17 }
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
		-- description = 在suite3内添加魔晶矿,
		monsters = { },
		gadgets = { 446001, 446002, 446003, 446004, 446005 },
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