-- 基础信息
local base_info = {
	group_id = 133104639
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
	{ config_id = 639001, gadget_id = 70210101, pos = { x = 886.808, y = 256.966, z = 329.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 639002, gadget_id = 70210101, pos = { x = 893.355, y = 256.948, z = 334.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 639003, gadget_id = 70210101, pos = { x = 892.604, y = 256.736, z = 330.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 639004, gadget_id = 70210101, pos = { x = 893.829, y = 256.136, z = 322.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 639005, gadget_id = 70210101, pos = { x = 899.926, y = 256.895, z = 327.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", isOneoff = true, persistent = true, area_id = 5 }
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
		gadgets = { 639001, 639002, 639003, 639004, 639005 },
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