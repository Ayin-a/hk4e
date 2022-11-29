-- 基础信息
local base_info = {
	group_id = 133220529
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
	{ config_id = 529001, gadget_id = 70210101, pos = { x = -2952.636, y = 208.467, z = -4126.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 529002, gadget_id = 70210101, pos = { x = -2950.719, y = 208.321, z = -4127.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 529003, gadget_id = 70210101, pos = { x = -2951.998, y = 208.431, z = -4128.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 529004, gadget_id = 70210101, pos = { x = -2951.998, y = 208.431, z = -4128.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 529005, gadget_id = 70210101, pos = { x = -2834.989, y = 204.926, z = -4115.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 529006, gadget_id = 70210101, pos = { x = -2852.352, y = 209.420, z = -4092.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true, area_id = 11 }
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
		gadgets = { 529001, 529002, 529003, 529004, 529005, 529006 },
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