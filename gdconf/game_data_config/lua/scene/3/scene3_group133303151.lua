-- 基础信息
local base_info = {
	group_id = 133303151
}

-- DEFS_MISCS
local defs = 
{
    fishingPoint = {
        bottom = 2,
        top = 3,
    }
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 151001, gadget_id = 70950099, pos = { x = -1688.836, y = 94.800, z = 3328.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, fishing_id = 4007, fishing_areas = { 300062, 300063 }, area_id = 23 },
		{ config_id = 151002, gadget_id = 70800134, pos = { x = -1684.458, y = 102.300, z = 3183.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, fishing_id = 4008, fishing_areas = { 300068 }, area_id = 23 }
	}
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
		gadgets = { },
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