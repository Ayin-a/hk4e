-- 基础信息
local base_info = {
	group_id = 133302333
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
	{ config_id = 333001, gadget_id = 70500000, pos = { x = -940.663, y = 210.898, z = 3003.551 }, rot = { x = 0.000, y = 113.946, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 333002, gadget_id = 70500000, pos = { x = -941.152, y = 210.488, z = 2999.906 }, rot = { x = 13.019, y = 262.399, z = 43.291 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 333003, gadget_id = 70500000, pos = { x = -947.589, y = 210.399, z = 2998.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 333004, gadget_id = 70500000, pos = { x = -950.390, y = 212.984, z = 3003.108 }, rot = { x = 0.000, y = 339.061, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 333005, gadget_id = 70360001, pos = { x = -946.039, y = 210.992, z = 3002.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 }
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
		gadgets = { 333001, 333002, 333003, 333004, 333005 },
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