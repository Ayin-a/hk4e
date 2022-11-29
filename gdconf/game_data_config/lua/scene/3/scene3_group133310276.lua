-- 基础信息
local base_info = {
	group_id = 133310276
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
	{ config_id = 276001, gadget_id = 70500000, pos = { x = -2412.391, y = 271.835, z = 4124.900 }, rot = { x = 11.660, y = 3.271, z = 25.954 }, level = 1, point_type = 1005, persistent = true, area_id = 26 },
	{ config_id = 276002, gadget_id = 70500000, pos = { x = -2410.822, y = 272.792, z = 4123.644 }, rot = { x = 11.457, y = 2.246, z = 22.111 }, level = 1, point_type = 1003, persistent = true, area_id = 26 },
	{ config_id = 276003, gadget_id = 70500000, pos = { x = -2412.685, y = 271.401, z = 4126.698 }, rot = { x = 22.465, y = 284.626, z = 358.019 }, level = 1, point_type = 1003, persistent = true, area_id = 26 },
	{ config_id = 276004, gadget_id = 70500000, pos = { x = -2414.683, y = 270.476, z = 4127.350 }, rot = { x = 348.825, y = 178.630, z = 337.736 }, level = 1, point_type = 1005, persistent = true, area_id = 26 },
	{ config_id = 276005, gadget_id = 70360001, pos = { x = -2412.639, y = 271.183, z = 4128.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 26 }
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
		gadgets = { 276001, 276002, 276003, 276004, 276005 },
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