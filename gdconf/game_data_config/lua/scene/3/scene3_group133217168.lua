-- 基础信息
local base_info = {
	group_id = 133217168
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
	{ config_id = 168001, gadget_id = 70500000, pos = { x = -4410.187, y = 161.879, z = -3827.075 }, rot = { x = 356.690, y = 0.078, z = 357.290 }, level = 1, point_type = 1005, persistent = true, area_id = 14 },
	{ config_id = 168002, gadget_id = 70500000, pos = { x = -4413.229, y = 160.000, z = -3821.796 }, rot = { x = 0.000, y = 307.946, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 14 },
	{ config_id = 168003, gadget_id = 70500000, pos = { x = -4414.487, y = 160.901, z = -3820.440 }, rot = { x = 27.429, y = 353.693, z = 334.555 }, level = 1, point_type = 1005, persistent = true, area_id = 14 },
	{ config_id = 168004, gadget_id = 70500000, pos = { x = -4411.501, y = 161.643, z = -3828.594 }, rot = { x = 13.852, y = 357.996, z = 354.320 }, level = 1, point_type = 1008, persistent = true, area_id = 14 },
	{ config_id = 168006, gadget_id = 70360001, pos = { x = -4412.488, y = 160.929, z = -3825.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 14 }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 168005, gadget_id = 70500000, pos = { x = -4414.623, y = 161.573, z = -3827.109 }, rot = { x = 357.244, y = 10.657, z = 356.728 }, level = 1, point_type = 1005, persistent = true, area_id = 14 }
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
		-- description = 在suite3内添加魔晶矿,
		monsters = { },
		gadgets = { 168001, 168002, 168003, 168004, 168006 },
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