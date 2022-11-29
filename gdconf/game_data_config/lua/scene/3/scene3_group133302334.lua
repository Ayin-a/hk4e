-- 基础信息
local base_info = {
	group_id = 133302334
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
	{ config_id = 334001, gadget_id = 70500000, pos = { x = -945.366, y = 211.330, z = 3006.784 }, rot = { x = 0.000, y = 236.107, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 334002, gadget_id = 70500000, pos = { x = -947.376, y = 209.495, z = 2993.195 }, rot = { x = 0.000, y = 34.006, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 334003, gadget_id = 70360001, pos = { x = -946.417, y = 211.004, z = 3002.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 }
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
		gadgets = { 334001, 334002, 334003 },
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