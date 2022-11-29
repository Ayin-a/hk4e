-- 基础信息
local base_info = {
	group_id = 133301403
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
	{ config_id = 403001, gadget_id = 70500000, pos = { x = -875.330, y = 322.847, z = 3276.600 }, rot = { x = 10.149, y = 318.522, z = 359.578 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 403002, gadget_id = 70500000, pos = { x = -878.813, y = 324.259, z = 3274.976 }, rot = { x = 18.796, y = 68.072, z = 20.033 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 403003, gadget_id = 70500000, pos = { x = -876.567, y = 324.781, z = 3273.574 }, rot = { x = 22.370, y = 26.272, z = 32.247 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 403004, gadget_id = 70500000, pos = { x = -883.314, y = 322.833, z = 3278.302 }, rot = { x = -0.002, y = 91.369, z = 18.172 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 403005, gadget_id = 70360001, pos = { x = -878.133, y = 322.864, z = 3277.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 }
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
		gadgets = { 403001, 403002, 403003, 403004, 403005 },
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