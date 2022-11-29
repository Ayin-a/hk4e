-- 基础信息
local base_info = {
	group_id = 133315157
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
	{ config_id = 157001, gadget_id = 70500000, pos = { x = 161.637, y = 259.773, z = 2849.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 20 },
	{ config_id = 157002, gadget_id = 70500000, pos = { x = 154.117, y = 253.389, z = 2852.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 20 },
	{ config_id = 157003, gadget_id = 70500000, pos = { x = 158.689, y = 259.415, z = 2846.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 20 },
	{ config_id = 157004, gadget_id = 70500000, pos = { x = 157.572, y = 253.833, z = 2856.740 }, rot = { x = 0.000, y = 0.000, z = 15.710 }, level = 1, point_type = 1005, persistent = true, area_id = 20 },
	{ config_id = 157005, gadget_id = 70360001, pos = { x = 160.631, y = 254.663, z = 2857.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 20 }
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
		gadgets = { 157001, 157002, 157003, 157004, 157005 },
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