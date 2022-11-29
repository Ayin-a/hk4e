-- 基础信息
local base_info = {
	group_id = 133310240
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
	{ config_id = 240001, gadget_id = 70500000, pos = { x = -2266.073, y = 229.269, z = 4631.941 }, rot = { x = 2.948, y = 42.612, z = 11.844 }, level = 1, point_type = 1003, persistent = true, area_id = 26 },
	{ config_id = 240002, gadget_id = 70500000, pos = { x = -2264.221, y = 229.452, z = 4632.185 }, rot = { x = 7.194, y = 243.494, z = 337.758 }, level = 1, point_type = 1003, persistent = true, area_id = 26 },
	{ config_id = 240003, gadget_id = 70360001, pos = { x = -2259.635, y = 227.794, z = 4636.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 26 }
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
		gadgets = { 240001, 240002, 240003 },
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