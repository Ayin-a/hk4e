-- 基础信息
local base_info = {
	group_id = 133301361
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
	{ config_id = 361002, gadget_id = 70290010, pos = { x = -699.200, y = 221.127, z = 3509.983 }, rot = { x = 4.814, y = 61.578, z = 345.641 }, level = 33, area_id = 22 },
	{ config_id = 361003, gadget_id = 70500000, pos = { x = -699.200, y = 221.127, z = 3509.983 }, rot = { x = 4.816, y = 61.578, z = 345.641 }, level = 33, point_type = 3006, owner = 361002, area_id = 22 },
	{ config_id = 361005, gadget_id = 70290010, pos = { x = -722.222, y = 222.314, z = 3539.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 361006, gadget_id = 70500000, pos = { x = -722.222, y = 222.314, z = 3539.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 3006, owner = 361005, area_id = 22 }
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
		{ config_id = 361001, gadget_id = 70500000, pos = { x = -708.859, y = 226.471, z = 3506.357 }, rot = { x = 0.000, y = 97.345, z = 0.000 }, level = 33, point_type = 2052, area_id = 22 },
		{ config_id = 361007, gadget_id = 70290010, pos = { x = -712.734, y = 227.960, z = 3508.941 }, rot = { x = 356.834, y = 0.975, z = 337.108 }, level = 33, area_id = 22 },
		{ config_id = 361008, gadget_id = 70500000, pos = { x = -712.734, y = 227.960, z = 3508.941 }, rot = { x = 356.834, y = 0.975, z = 337.108 }, level = 33, point_type = 3006, owner = 361007, area_id = 22 }
	},
	triggers = {
		{ config_id = 1361004, name = "GROUP_LOAD_361004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_361004", action = "action_EVENT_GROUP_LOAD_361004", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 361002, 361003, 361005, 361006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 361002, 361003, 361005, 361006 },
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

require "V3_0/DeathFieldStandard"