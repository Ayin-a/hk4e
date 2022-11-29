-- 基础信息
local base_info = {
	group_id = 133213176
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
	{ config_id = 176001, gadget_id = 70900386, pos = { x = -3320.742, y = 221.777, z = -3454.684 }, rot = { x = 4.565, y = 355.882, z = 15.930 }, level = 26, drop_tag = "书页章节2稻妻", isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 176002, gadget_id = 70900386, pos = { x = -3203.963, y = 200.140, z = -3306.169 }, rot = { x = 355.794, y = 325.090, z = 0.243 }, level = 26, drop_tag = "书页章节2稻妻", isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 176003, gadget_id = 70900386, pos = { x = -3274.219, y = 204.518, z = -3264.781 }, rot = { x = 67.482, y = 156.128, z = 266.066 }, level = 26, drop_tag = "书页章节2稻妻", isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 176004, gadget_id = 70900386, pos = { x = -3800.455, y = 201.753, z = -3088.653 }, rot = { x = 8.282, y = 0.581, z = 348.116 }, level = 26, drop_tag = "书页章节2稻妻", isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 176005, gadget_id = 70900386, pos = { x = -3744.511, y = 201.209, z = -3363.983 }, rot = { x = 17.881, y = 3.161, z = 11.805 }, level = 26, drop_tag = "书页章节2稻妻", isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 176006, gadget_id = 70900386, pos = { x = -3923.165, y = 207.149, z = -3308.380 }, rot = { x = 352.981, y = 0.211, z = 356.559 }, level = 26, drop_tag = "书页章节2稻妻", isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 176007, gadget_id = 70900386, pos = { x = -3974.162, y = 220.061, z = -3210.121 }, rot = { x = 4.676, y = 0.000, z = 359.366 }, level = 26, drop_tag = "书页章节2稻妻", isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 176008, gadget_id = 70900386, pos = { x = -3972.720, y = 200.118, z = -3083.904 }, rot = { x = 357.420, y = 2.445, z = 0.000 }, level = 26, drop_tag = "书页章节2稻妻", isOneoff = true, persistent = true, area_id = 12 }
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
		gadgets = { 176001, 176002, 176003, 176004, 176005, 176006, 176007, 176008 },
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