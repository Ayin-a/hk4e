-- 基础信息
local base_info = {
	group_id = 133309001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1004, monster_id = 24040101, pos = { x = -2223.356, y = 2.292, z = 5568.536 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1004, area_id = 27 },
	{ config_id = 1006, monster_id = 24040201, pos = { x = -2268.624, y = 2.292, z = 5533.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1004, area_id = 27 },
	{ config_id = 1007, monster_id = 24040201, pos = { x = -2268.806, y = 2.292, z = 5603.878 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1004, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70210101, pos = { x = -2280.583, y = 2.820, z = 5535.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 27 },
	{ config_id = 1002, gadget_id = 70210101, pos = { x = -2279.209, y = 3.208, z = 5532.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 27 },
	{ config_id = 1003, gadget_id = 70210101, pos = { x = -2287.398, y = 2.809, z = 5590.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 27 },
	{ config_id = 1005, gadget_id = 70210101, pos = { x = -2290.112, y = 3.212, z = 5588.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 27 },
	{ config_id = 1009, gadget_id = 70210101, pos = { x = -2261.135, y = 2.484, z = 5621.001 }, rot = { x = 0.000, y = 0.000, z = 14.923 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 27 },
	{ config_id = 1010, gadget_id = 70210101, pos = { x = -2260.024, y = 2.516, z = 5619.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 27 },
	{ config_id = 1011, gadget_id = 70210101, pos = { x = -2203.955, y = -8.711, z = 5548.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 27 },
	{ config_id = 1013, gadget_id = 70210101, pos = { x = -2211.825, y = 4.202, z = 5554.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 27 }
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
		{ config_id = 1012, gadget_id = 70210101, pos = { x = -2204.917, y = -8.876, z = 5547.366 }, rot = { x = 38.885, y = 4.169, z = 26.162 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 27 }
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
		monsters = { 1004, 1006, 1007 },
		gadgets = { 1001, 1002, 1003, 1005, 1009, 1010, 1011, 1013 },
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