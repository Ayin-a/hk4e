-- 基础信息
local base_info = {
	group_id = 133304344
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
	{ config_id = 344001, gadget_id = 70500000, pos = { x = -1266.472, y = 178.661, z = 3055.147 }, rot = { x = 0.000, y = 298.064, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 344002, gadget_id = 70500000, pos = { x = -1265.929, y = 178.508, z = 3051.939 }, rot = { x = 0.000, y = 65.365, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 344003, gadget_id = 70360001, pos = { x = -1263.574, y = 176.954, z = 3046.393 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 }
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
		gadgets = { 344001, 344002, 344003 },
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