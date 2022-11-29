-- 基础信息
local base_info = {
	group_id = 133309284
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
	{ config_id = 284001, gadget_id = 70330342, pos = { x = -2333.894, y = 187.257, z = 5526.902 }, rot = { x = 11.978, y = 261.878, z = 356.538 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 },
	{ config_id = 284002, gadget_id = 70330342, pos = { x = -2325.621, y = 185.416, z = 5557.560 }, rot = { x = 353.541, y = 147.372, z = 348.441 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 },
	{ config_id = 284003, gadget_id = 70330342, pos = { x = -2378.695, y = 191.777, z = 5489.855 }, rot = { x = 8.569, y = 301.240, z = 352.792 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 },
	{ config_id = 284004, gadget_id = 70210101, pos = { x = -2356.242, y = 193.367, z = 5580.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 27 },
	{ config_id = 284005, gadget_id = 70210101, pos = { x = -2322.490, y = 192.176, z = 5497.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 27 },
	{ config_id = 284006, gadget_id = 70210101, pos = { x = -2361.947, y = 192.093, z = 5600.319 }, rot = { x = 353.895, y = 1.736, z = 355.372 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 27 },
	{ config_id = 284007, gadget_id = 70210101, pos = { x = -2341.790, y = 185.800, z = 5523.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 27 },
	{ config_id = 284008, gadget_id = 70210101, pos = { x = -2357.366, y = 185.800, z = 5524.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 27 },
	{ config_id = 284009, gadget_id = 70210101, pos = { x = -2366.617, y = 188.064, z = 5517.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 27 },
	{ config_id = 284010, gadget_id = 70210101, pos = { x = -2367.305, y = 185.512, z = 5529.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 27 },
	{ config_id = 284011, gadget_id = 70210101, pos = { x = -2330.151, y = 185.846, z = 5550.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 27 },
	{ config_id = 284012, gadget_id = 70900386, pos = { x = -2356.562, y = 192.462, z = 5583.117 }, rot = { x = 1.269, y = 304.712, z = 2.630 }, level = 26, drop_tag = "书页章节2须弥", isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 27 },
	{ config_id = 284013, gadget_id = 70900386, pos = { x = -2306.669, y = 144.792, z = 5542.194 }, rot = { x = 0.187, y = 220.874, z = 11.778 }, level = 26, drop_tag = "书页章节2须弥", isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 }
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
		gadgets = { 284001, 284002, 284003, 284004, 284005, 284006, 284007, 284008, 284009, 284010, 284011, 284012, 284013 },
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