-- 基础信息
local base_info = {
	group_id = 133220618
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
	{ config_id = 618001, gadget_id = 70500000, pos = { x = -2445.419, y = 203.304, z = -4558.963 }, rot = { x = 0.000, y = 350.185, z = 8.805 }, level = 1, point_type = 1008, persistent = true, area_id = 11 },
	{ config_id = 618002, gadget_id = 70500000, pos = { x = -2446.380, y = 202.656, z = -4563.255 }, rot = { x = 0.000, y = 350.185, z = 8.805 }, level = 1, point_type = 1008, persistent = true, area_id = 11 },
	{ config_id = 618003, gadget_id = 70360001, pos = { x = -2445.185, y = 203.429, z = -4558.629 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 }
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
		gadgets = { 618001, 618002, 618003 },
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