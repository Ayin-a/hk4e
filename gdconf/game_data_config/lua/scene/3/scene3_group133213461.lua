-- 基础信息
local base_info = {
	group_id = 133213461
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
	{ config_id = 461002, gadget_id = 70210105, pos = { x = -3576.176, y = 200.000, z = -3643.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 461003, gadget_id = 70210105, pos = { x = -3600.343, y = 200.000, z = -3635.538 }, rot = { x = 0.000, y = 87.289, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 461004, gadget_id = 70210105, pos = { x = -3588.731, y = 200.000, z = -3651.156 }, rot = { x = 0.000, y = 218.621, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
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
		{ config_id = 461001, gadget_id = 70330064, pos = { x = -3582.126, y = 198.632, z = -3640.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 12 }
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
		gadgets = { 461002, 461003, 461004 },
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