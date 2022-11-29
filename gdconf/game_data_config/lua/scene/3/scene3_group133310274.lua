-- 基础信息
local base_info = {
	group_id = 133310274
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
	{ config_id = 274001, gadget_id = 70500000, pos = { x = -2514.620, y = 135.500, z = 4921.958 }, rot = { x = 11.393, y = 350.143, z = 348.396 }, level = 1, point_type = 1005, persistent = true, area_id = 27 },
	{ config_id = 274002, gadget_id = 70500000, pos = { x = -2514.146, y = 134.848, z = 4924.178 }, rot = { x = 356.931, y = 285.227, z = 341.325 }, level = 1, point_type = 1003, persistent = true, area_id = 27 },
	{ config_id = 274003, gadget_id = 70500000, pos = { x = -2513.532, y = 135.558, z = 4920.271 }, rot = { x = 3.252, y = 341.178, z = 339.925 }, level = 1, point_type = 1003, persistent = true, area_id = 27 },
	{ config_id = 274004, gadget_id = 70500000, pos = { x = -2511.715, y = 134.640, z = 4921.985 }, rot = { x = 336.548, y = 230.054, z = 7.273 }, level = 1, point_type = 1005, persistent = true, area_id = 27 },
	{ config_id = 274005, gadget_id = 70360001, pos = { x = -2511.157, y = 133.952, z = 4924.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 27 }
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
		gadgets = { 274001, 274002, 274003, 274004, 274005 },
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