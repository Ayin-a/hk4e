-- 基础信息
local base_info = {
	group_id = 133309004
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
	{ config_id = 4001, gadget_id = 70210101, pos = { x = -2380.197, y = 111.166, z = 5215.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 27 },
	{ config_id = 4002, gadget_id = 70210101, pos = { x = -2380.980, y = 111.013, z = 5241.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 27 },
	{ config_id = 4003, gadget_id = 70210101, pos = { x = -2382.435, y = 110.277, z = 5262.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 27 },
	{ config_id = 4004, gadget_id = 70210101, pos = { x = -2381.638, y = 110.255, z = 5281.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 27 },
	{ config_id = 4005, gadget_id = 70210101, pos = { x = -2319.843, y = 111.250, z = 5262.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 27 },
	{ config_id = 4006, gadget_id = 70210101, pos = { x = -2320.330, y = 110.678, z = 5236.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 27 },
	{ config_id = 4007, gadget_id = 70210101, pos = { x = -2321.355, y = 110.474, z = 5280.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 27 },
	{ config_id = 4008, gadget_id = 70900386, pos = { x = -2321.067, y = 110.620, z = 5217.301 }, rot = { x = 0.000, y = 298.380, z = 0.000 }, level = 26, drop_tag = "书页章节3须弥", isOneoff = true, persistent = true, area_id = 27 },
	{ config_id = 4009, gadget_id = 70210101, pos = { x = -2263.911, y = 75.172, z = 5163.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 27 },
	{ config_id = 4010, gadget_id = 70210101, pos = { x = -2263.958, y = 75.151, z = 5154.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 27 },
	{ config_id = 4011, gadget_id = 70210101, pos = { x = -2287.561, y = 74.442, z = 5164.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 27 }
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
		gadgets = { 4001, 4002, 4003, 4004, 4005, 4006, 4007, 4008, 4009, 4010, 4011 },
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