-- 基础信息
local base_info = {
	group_id = 133102366
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
	{ config_id = 366001, gadget_id = 70210107, pos = { x = 1445.062, y = 201.694, z = 388.350 }, rot = { x = 0.000, y = 187.889, z = 0.000 }, level = 16, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 366011, gadget_id = 70210107, pos = { x = 1499.330, y = 225.664, z = 532.636 }, rot = { x = 0.000, y = 215.865, z = 0.000 }, level = 16, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 366017, gadget_id = 70210107, pos = { x = 1394.352, y = 208.966, z = 611.361 }, rot = { x = 338.944, y = 358.072, z = 0.000 }, level = 16, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 366020, gadget_id = 70210107, pos = { x = 1634.552, y = 209.139, z = 276.875 }, rot = { x = 0.907, y = 55.573, z = 243.527 }, level = 16, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 366022, gadget_id = 70210107, pos = { x = 1703.002, y = 207.964, z = 267.585 }, rot = { x = 352.039, y = 349.205, z = 344.074 }, level = 16, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 366024, gadget_id = 70210107, pos = { x = 1784.050, y = 224.667, z = 363.344 }, rot = { x = 334.326, y = 104.240, z = 333.253 }, level = 16, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 366025, gadget_id = 70210107, pos = { x = 1783.850, y = 246.985, z = 399.145 }, rot = { x = 344.004, y = 105.292, z = 0.055 }, level = 16, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 366026, gadget_id = 70210107, pos = { x = 1784.385, y = 224.016, z = 364.444 }, rot = { x = 342.808, y = 101.260, z = 195.845 }, level = 16, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, area_id = 5 }
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
		gadgets = { 366001, 366011, 366017, 366020, 366022, 366024, 366025, 366026 },
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