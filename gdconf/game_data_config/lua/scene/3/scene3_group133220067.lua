-- 基础信息
local base_info = {
	group_id = 133220067
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
	{ config_id = 67001, gadget_id = 70900386, pos = { x = -2492.382, y = 209.004, z = -4167.024 }, rot = { x = 0.496, y = 107.574, z = -0.004 }, level = 26, drop_tag = "书页章节1稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 67002, gadget_id = 70900386, pos = { x = -2567.855, y = 213.360, z = -3874.044 }, rot = { x = 0.240, y = 271.463, z = 0.680 }, level = 26, drop_tag = "书页章节1稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 67003, gadget_id = 70900386, pos = { x = -2767.579, y = 206.401, z = -4105.855 }, rot = { x = 0.347, y = 224.709, z = 0.093 }, level = 26, drop_tag = "书页章节1稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 67004, gadget_id = 70900386, pos = { x = -2816.496, y = 183.632, z = -4082.744 }, rot = { x = 9.255, y = 118.061, z = 5.207 }, level = 26, drop_tag = "书页章节1稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 67005, gadget_id = 70900386, pos = { x = -2431.183, y = 255.642, z = -4274.721 }, rot = { x = 16.456, y = 126.576, z = 13.916 }, level = 26, drop_tag = "书页章节1稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 67007, gadget_id = 70900386, pos = { x = -2216.887, y = 204.351, z = -4917.936 }, rot = { x = 26.637, y = 15.029, z = 21.250 }, level = 26, drop_tag = "书页章节1稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 67008, gadget_id = 70900386, pos = { x = -2277.607, y = 201.787, z = -4281.544 }, rot = { x = 353.557, y = 69.338, z = 353.334 }, level = 26, drop_tag = "书页章节1稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 67009, gadget_id = 70900386, pos = { x = -2271.376, y = 199.932, z = -4343.771 }, rot = { x = 5.727, y = 355.662, z = 358.291 }, level = 26, drop_tag = "书页章节1稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 67010, gadget_id = 70900386, pos = { x = -2474.872, y = 373.860, z = -4378.783 }, rot = { x = 3.706, y = 104.210, z = 321.245 }, level = 26, drop_tag = "书页章节1稻妻", isOneoff = true, persistent = true, area_id = 11 }
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
		gadgets = { 67001, 67002, 67003, 67004, 67005, 67007, 67008, 67009, 67010 },
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