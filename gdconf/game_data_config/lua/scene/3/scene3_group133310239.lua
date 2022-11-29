-- 基础信息
local base_info = {
	group_id = 133310239
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
	{ config_id = 239001, gadget_id = 70500000, pos = { x = -2261.733, y = 226.768, z = 4643.570 }, rot = { x = 357.273, y = 200.089, z = 346.860 }, level = 1, point_type = 1005, persistent = true, area_id = 26 },
	{ config_id = 239002, gadget_id = 70500000, pos = { x = -2255.609, y = 231.017, z = 4633.119 }, rot = { x = 341.533, y = 122.813, z = 356.467 }, level = 1, point_type = 1003, persistent = true, area_id = 26 },
	{ config_id = 239003, gadget_id = 70500000, pos = { x = -2260.489, y = 227.161, z = 4642.800 }, rot = { x = 357.962, y = 41.502, z = 17.899 }, level = 1, point_type = 1003, persistent = true, area_id = 26 },
	{ config_id = 239004, gadget_id = 70500000, pos = { x = -2256.150, y = 230.387, z = 4635.370 }, rot = { x = 13.735, y = 270.674, z = 347.311 }, level = 1, point_type = 1005, persistent = true, area_id = 26 },
	{ config_id = 239005, gadget_id = 70360001, pos = { x = -2261.225, y = 228.515, z = 4637.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 26 }
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
		gadgets = { 239001, 239002, 239003, 239004, 239005 },
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