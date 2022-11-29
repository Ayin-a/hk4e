-- 基础信息
local base_info = {
	group_id = 133217195
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
	{ config_id = 195003, gadget_id = 70210101, pos = { x = -4861.664, y = 200.000, z = -3922.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 195004, gadget_id = 70210101, pos = { x = -4862.013, y = 200.000, z = -3914.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 195005, gadget_id = 70210101, pos = { x = -4866.064, y = 200.000, z = -3916.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 195006, gadget_id = 70210101, pos = { x = -4676.506, y = 200.000, z = -3953.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 195007, gadget_id = 70210101, pos = { x = -4672.213, y = 200.000, z = -3951.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 195008, gadget_id = 70210101, pos = { x = -4682.840, y = 200.000, z = -3951.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 195009, gadget_id = 70210101, pos = { x = -4697.364, y = 203.463, z = -4061.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 195010, gadget_id = 70210101, pos = { x = -4663.037, y = 200.000, z = -4064.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 195011, gadget_id = 70210101, pos = { x = -4661.652, y = 200.000, z = -4053.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 14 }
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
		{ config_id = 195001, gadget_id = 70210101, pos = { x = -5026.178, y = 200.000, z = -3801.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", area_id = 14 },
		{ config_id = 195002, gadget_id = 70210101, pos = { x = -5025.958, y = 200.000, z = -3794.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", area_id = 14 }
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
		gadgets = { 195003, 195004, 195005, 195006, 195007, 195008, 195009, 195010, 195011 },
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