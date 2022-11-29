-- 基础信息
local base_info = {
	group_id = 133217257
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
	{ config_id = 257001, gadget_id = 70210101, pos = { x = -4430.933, y = 184.010, z = -3791.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 257002, gadget_id = 70210101, pos = { x = -4438.764, y = 183.352, z = -3801.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 257003, gadget_id = 70210101, pos = { x = -4429.886, y = 182.983, z = -3792.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 257004, gadget_id = 70210101, pos = { x = -4431.721, y = 171.354, z = -3798.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 257005, gadget_id = 70210101, pos = { x = -4426.009, y = 171.834, z = -3793.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 257006, gadget_id = 70210101, pos = { x = -4384.652, y = 162.335, z = -3824.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 257007, gadget_id = 70210101, pos = { x = -4395.669, y = 166.446, z = -3814.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 257008, gadget_id = 70210101, pos = { x = -4426.646, y = 170.624, z = -3797.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 257009, gadget_id = 70210101, pos = { x = -4387.054, y = 162.116, z = -3823.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 257010, gadget_id = 70210101, pos = { x = -4438.168, y = 189.631, z = -3794.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 257011, gadget_id = 70210101, pos = { x = -4424.999, y = 159.951, z = -3811.992 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 257012, gadget_id = 70210101, pos = { x = -4420.404, y = 160.673, z = -3811.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 257013, gadget_id = 70210101, pos = { x = -4434.812, y = 161.030, z = -3810.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 257014, gadget_id = 70210101, pos = { x = -4396.788, y = 166.303, z = -3815.663 }, rot = { x = 355.514, y = 1.978, z = 340.363 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 257015, gadget_id = 70210101, pos = { x = -4397.611, y = 164.119, z = -3829.870 }, rot = { x = 340.673, y = 9.019, z = 340.373 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 14 }
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
		gadgets = { 257001, 257002, 257003, 257004, 257005, 257006, 257007, 257008, 257009, 257010, 257011, 257012, 257013, 257014, 257015 },
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