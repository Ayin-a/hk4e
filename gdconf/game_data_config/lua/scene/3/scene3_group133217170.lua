-- 基础信息
local base_info = {
	group_id = 133217170
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
	{ config_id = 170001, gadget_id = 70500000, pos = { x = -4382.315, y = 191.779, z = -3851.528 }, rot = { x = 4.237, y = 0.057, z = 1.544 }, level = 1, point_type = 1005, persistent = true, area_id = 14 },
	{ config_id = 170002, gadget_id = 70500000, pos = { x = -4399.629, y = 187.967, z = -3852.850 }, rot = { x = 15.408, y = 0.696, z = 5.144 }, level = 1, point_type = 1008, persistent = true, area_id = 14 },
	{ config_id = 170003, gadget_id = 70500000, pos = { x = -4396.274, y = 190.108, z = -3856.016 }, rot = { x = 10.661, y = 1.249, z = 13.326 }, level = 1, point_type = 1005, persistent = true, area_id = 14 },
	{ config_id = 170004, gadget_id = 70500000, pos = { x = -4389.338, y = 190.333, z = -3853.513 }, rot = { x = 51.253, y = 14.053, z = 30.128 }, level = 1, point_type = 1008, persistent = true, area_id = 14 },
	{ config_id = 170005, gadget_id = 70360001, pos = { x = -4389.758, y = 190.354, z = -3853.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 14 }
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
		gadgets = { 170001, 170002, 170003, 170004, 170005 },
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