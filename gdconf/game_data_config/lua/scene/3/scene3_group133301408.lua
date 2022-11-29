-- 基础信息
local base_info = {
	group_id = 133301408
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
	{ config_id = 408001, gadget_id = 70500000, pos = { x = -867.239, y = 322.550, z = 3277.798 }, rot = { x = 18.796, y = 68.072, z = 20.033 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 408002, gadget_id = 70500000, pos = { x = -864.992, y = 323.154, z = 3276.395 }, rot = { x = 22.370, y = 26.272, z = 32.247 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 408003, gadget_id = 70360001, pos = { x = -864.968, y = 320.484, z = 3279.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 }
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
		gadgets = { 408001, 408002, 408003 },
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