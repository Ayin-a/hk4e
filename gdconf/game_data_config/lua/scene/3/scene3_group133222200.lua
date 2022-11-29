-- 基础信息
local base_info = {
	group_id = 133222200
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
	{ config_id = 200001, gadget_id = 70360001, pos = { x = -4382.023, y = 217.491, z = -4161.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 14 },
	{ config_id = 200002, gadget_id = 70500000, pos = { x = -4387.789, y = 216.443, z = -4162.345 }, rot = { x = 50.422, y = 332.091, z = 348.932 }, level = 1, point_type = 1008, persistent = true, area_id = 14 },
	{ config_id = 200004, gadget_id = 70500000, pos = { x = -4382.457, y = 217.847, z = -4162.128 }, rot = { x = 18.466, y = 359.540, z = 357.168 }, level = 1, point_type = 1008, persistent = true, area_id = 14 }
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
		-- description = 在suite3内添加魔晶矿,
		monsters = { },
		gadgets = { 200001, 200002, 200004 },
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