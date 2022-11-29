-- 基础信息
local base_info = {
	group_id = 133302457
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
	{ config_id = 457001, gadget_id = 70500000, pos = { x = -92.003, y = 222.572, z = 2395.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 20 },
	{ config_id = 457002, gadget_id = 70500000, pos = { x = -90.107, y = 221.644, z = 2403.070 }, rot = { x = 358.814, y = 220.113, z = 346.388 }, level = 1, point_type = 1003, persistent = true, area_id = 20 },
	{ config_id = 457003, gadget_id = 70500000, pos = { x = -82.704, y = 224.048, z = 2397.603 }, rot = { x = 344.967, y = 123.578, z = 3.622 }, level = 1, point_type = 1003, persistent = true, area_id = 20 },
	{ config_id = 457004, gadget_id = 70500000, pos = { x = -99.518, y = 223.525, z = 2386.156 }, rot = { x = 0.000, y = 47.981, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 20 },
	{ config_id = 457005, gadget_id = 70360001, pos = { x = -82.161, y = 223.528, z = 2399.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 20 }
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
		gadgets = { 457001, 457002, 457003, 457004, 457005 },
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