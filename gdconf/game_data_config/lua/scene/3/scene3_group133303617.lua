-- 基础信息
local base_info = {
	group_id = 133303617
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
	{ config_id = 617001, gadget_id = 70500000, pos = { x = -1783.747, y = 303.906, z = 4066.847 }, rot = { x = 18.333, y = 211.438, z = 341.892 }, level = 1, point_type = 1003, persistent = true, area_id = 26 },
	{ config_id = 617002, gadget_id = 70500000, pos = { x = -1778.491, y = 303.296, z = 4066.612 }, rot = { x = 42.025, y = 119.800, z = 355.918 }, level = 1, point_type = 1003, persistent = true, area_id = 26 },
	{ config_id = 617003, gadget_id = 70360001, pos = { x = -1780.553, y = 304.016, z = 4067.317 }, rot = { x = 348.832, y = 1.265, z = 347.120 }, level = 1, persistent = true, area_id = 26 }
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
		gadgets = { 617001, 617002, 617003 },
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