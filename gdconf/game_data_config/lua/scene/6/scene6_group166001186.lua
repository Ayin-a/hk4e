-- 基础信息
local base_info = {
	group_id = 166001186
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
	{ config_id = 186001, gadget_id = 70310006, pos = { x = 747.202, y = 963.183, z = 879.676 }, rot = { x = 14.889, y = 358.964, z = 0.599 }, level = 32, area_id = 300 },
	{ config_id = 186002, gadget_id = 70710352, pos = { x = 749.853, y = 963.351, z = 879.700 }, rot = { x = 0.000, y = 25.884, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 186003, gadget_id = 70220025, pos = { x = 749.537, y = 963.523, z = 879.269 }, rot = { x = 77.798, y = 124.835, z = 160.633 }, level = 32, area_id = 300 },
	{ config_id = 186006, gadget_id = 70210101, pos = { x = 749.899, y = 963.366, z = 879.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", persistent = true, area_id = 300 },
	{ config_id = 186007, gadget_id = 70210101, pos = { x = 749.660, y = 963.500, z = 879.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", persistent = true, area_id = 300 }
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
	regions = {
		{ config_id = 186004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 748.667, y = 963.432, z = 879.583 }, area_id = 300 }
	},
	triggers = {
		{ config_id = 1186004, name = "ENTER_REGION_186004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_186004" }
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
		gadgets = { 186001, 186002, 186003, 186006, 186007 },
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