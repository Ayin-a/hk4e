-- 基础信息
local base_info = {
	group_id = 133212203
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
	{ config_id = 203001, gadget_id = 70900386, pos = { x = -3421.382, y = 206.767, z = -2632.313 }, rot = { x = 355.874, y = 359.218, z = 239.097 }, level = 26, drop_tag = "书页章节3稻妻", isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 203002, gadget_id = 70900386, pos = { x = -3604.171, y = 207.979, z = -2400.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "书页章节3稻妻", isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 203003, gadget_id = 70900386, pos = { x = -3679.672, y = 206.433, z = -2246.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "书页章节3稻妻", isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 203004, gadget_id = 70900386, pos = { x = -3612.471, y = 265.681, z = -2148.537 }, rot = { x = 2.201, y = 359.214, z = 8.148 }, level = 26, drop_tag = "书页章节3稻妻", isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 203005, gadget_id = 70900386, pos = { x = -3652.964, y = 213.412, z = -1604.143 }, rot = { x = 337.524, y = 8.911, z = 338.302 }, level = 26, drop_tag = "书页章节3稻妻", isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 203006, gadget_id = 70900386, pos = { x = -3757.245, y = 202.403, z = -1674.336 }, rot = { x = 273.560, y = 20.283, z = 316.865 }, level = 26, drop_tag = "书页章节3稻妻", isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 203007, gadget_id = 70900386, pos = { x = -3742.734, y = 242.957, z = -2176.840 }, rot = { x = 280.082, y = 285.703, z = 0.000 }, level = 26, drop_tag = "书页章节3稻妻", isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 203008, gadget_id = 70900386, pos = { x = -4044.117, y = 256.775, z = -2291.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "书页章节3稻妻", isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 203009, gadget_id = 70900386, pos = { x = -3981.002, y = 258.430, z = -2298.725 }, rot = { x = 82.470, y = 199.384, z = 320.277 }, level = 26, drop_tag = "书页章节3稻妻", isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 203010, gadget_id = 70900386, pos = { x = -3917.039, y = 235.310, z = -2242.219 }, rot = { x = 292.259, y = 167.401, z = 263.779 }, level = 26, drop_tag = "书页章节3稻妻", isOneoff = true, persistent = true, area_id = 13 }
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
		gadgets = { 203001, 203002, 203003, 203004, 203005, 203006, 203007, 203008, 203009, 203010 },
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