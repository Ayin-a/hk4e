-- 基础信息
local base_info = {
	group_id = 133301345
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
	{ config_id = 345001, gadget_id = 70210101, pos = { x = -579.287, y = 127.755, z = 3719.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 25 },
	{ config_id = 345002, gadget_id = 70210101, pos = { x = -582.655, y = 128.221, z = 3722.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 25 },
	{ config_id = 345003, gadget_id = 70210101, pos = { x = -578.879, y = 127.690, z = 3720.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 25 },
	{ config_id = 345004, gadget_id = 70210101, pos = { x = -593.996, y = 138.398, z = 3775.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 25 },
	{ config_id = 345005, gadget_id = 70210101, pos = { x = -580.485, y = 138.977, z = 3783.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 25 },
	{ config_id = 345006, gadget_id = 70210101, pos = { x = -579.910, y = 139.675, z = 3779.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 25 },
	{ config_id = 345007, gadget_id = 70210101, pos = { x = -598.519, y = 131.830, z = 3817.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 25 },
	{ config_id = 345008, gadget_id = 70210101, pos = { x = -590.551, y = 133.447, z = 3809.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 25 },
	{ config_id = 345009, gadget_id = 70210101, pos = { x = -683.094, y = 119.669, z = 3788.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 25 }
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
		gadgets = { 345001, 345002, 345003, 345004, 345005, 345006, 345007, 345008, 345009 },
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