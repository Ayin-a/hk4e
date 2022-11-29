-- 基础信息
local base_info = {
	group_id = 133315095
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
	{ config_id = 95001, gadget_id = 70500000, pos = { x = -604.428, y = 113.755, z = 2206.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 24 },
	{ config_id = 95002, gadget_id = 70500000, pos = { x = -602.458, y = 113.789, z = 2207.832 }, rot = { x = 22.173, y = 346.469, z = 11.073 }, level = 1, point_type = 1003, persistent = true, area_id = 24 },
	{ config_id = 95003, gadget_id = 70360001, pos = { x = -604.079, y = 112.904, z = 2208.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 24 }
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
		gadgets = { 95001, 95002, 95003 },
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