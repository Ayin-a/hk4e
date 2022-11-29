-- 基础信息
local base_info = {
	group_id = 133303374
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
	{ config_id = 374001, gadget_id = 70500000, pos = { x = -1109.353, y = 265.819, z = 3950.642 }, rot = { x = 338.321, y = 6.287, z = 327.993 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 374002, gadget_id = 70500000, pos = { x = -1105.952, y = 264.444, z = 3949.975 }, rot = { x = 350.596, y = 296.240, z = 20.119 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 374003, gadget_id = 70500000, pos = { x = -1111.035, y = 265.305, z = 3946.974 }, rot = { x = 328.447, y = 280.397, z = 15.084 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 374004, gadget_id = 70500000, pos = { x = -1104.484, y = 264.724, z = 3950.586 }, rot = { x = 337.137, y = 5.021, z = 358.873 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 374005, gadget_id = 70360001, pos = { x = -1108.566, y = 264.813, z = 3948.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 }
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
		gadgets = { 374001, 374002, 374003, 374004, 374005 },
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