-- 基础信息
local base_info = {
	group_id = 133213525
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
	{ config_id = 525001, gadget_id = 70500000, pos = { x = -3371.160, y = 200.846, z = -3653.480 }, rot = { x = 0.000, y = 74.079, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 12 },
	{ config_id = 525002, gadget_id = 70500000, pos = { x = -3373.972, y = 200.972, z = -3660.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 12 },
	{ config_id = 525003, gadget_id = 70500000, pos = { x = -3374.478, y = 200.250, z = -3663.212 }, rot = { x = 0.000, y = 161.080, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 12 },
	{ config_id = 525004, gadget_id = 70500000, pos = { x = -3370.190, y = 200.605, z = -3656.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 12 },
	{ config_id = 525005, gadget_id = 70360001, pos = { x = -3373.821, y = 200.998, z = -3661.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 }
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
		gadgets = { 525001, 525002, 525003, 525004, 525005 },
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