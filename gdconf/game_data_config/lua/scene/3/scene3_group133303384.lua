-- 基础信息
local base_info = {
	group_id = 133303384
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
	{ config_id = 384001, gadget_id = 70500000, pos = { x = -1968.866, y = 377.477, z = 3506.254 }, rot = { x = 20.063, y = 179.694, z = 7.251 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 384002, gadget_id = 70500000, pos = { x = -1969.956, y = 377.387, z = 3506.212 }, rot = { x = 15.577, y = 84.627, z = 351.668 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 384003, gadget_id = 70500000, pos = { x = -1966.702, y = 377.721, z = 3506.559 }, rot = { x = 0.000, y = 324.100, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 384004, gadget_id = 70500000, pos = { x = -1971.873, y = 377.407, z = 3505.974 }, rot = { x = 0.000, y = 29.850, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 384005, gadget_id = 70360001, pos = { x = -1973.735, y = 377.011, z = 3502.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 }
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
		gadgets = { 384001, 384002, 384003, 384004, 384005 },
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