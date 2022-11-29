-- 基础信息
local base_info = {
	group_id = 133307141
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 141001, monster_id = 26090601, pos = { x = -1924.627, y = 147.961, z = 5867.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 141002, monster_id = 26090601, pos = { x = -1917.225, y = 147.947, z = 5879.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 141003, monster_id = 26090701, pos = { x = -1917.884, y = 147.954, z = 5866.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 141004, monster_id = 26090701, pos = { x = -1908.878, y = 148.370, z = 5883.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 141005, monster_id = 26090601, pos = { x = -1912.842, y = 148.316, z = 5896.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 141006, monster_id = 23010201, pos = { x = -1938.472, y = 149.289, z = 5883.225 }, rot = { x = 0.000, y = 91.683, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, pose_id = 9011, area_id = 27 },
	{ config_id = 141007, monster_id = 25210403, pos = { x = -1935.938, y = 149.375, z = 5887.753 }, rot = { x = 0.000, y = 56.524, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9002, area_id = 27 },
	{ config_id = 141008, monster_id = 25210303, pos = { x = -1933.805, y = 149.179, z = 5888.951 }, rot = { x = 0.000, y = 240.780, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9005, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 141009, gadget_id = 70300105, pos = { x = -1931.483, y = 148.830, z = 5882.938 }, rot = { x = 359.972, y = 354.563, z = 354.645 }, level = 32, area_id = 27 },
	{ config_id = 141010, gadget_id = 70300094, pos = { x = -1931.970, y = 148.726, z = 5880.911 }, rot = { x = 0.000, y = 57.095, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 141011, gadget_id = 70220128, pos = { x = -1934.875, y = 149.113, z = 5886.101 }, rot = { x = 3.611, y = 63.584, z = 353.490 }, level = 32, area_id = 27 },
	{ config_id = 141012, gadget_id = 70710548, pos = { x = -1931.543, y = 148.720, z = 5879.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 141013, gadget_id = 70710548, pos = { x = -1931.947, y = 148.737, z = 5882.873 }, rot = { x = 0.000, y = 155.205, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 141014, gadget_id = 70210101, pos = { x = -1932.163, y = 148.752, z = 5882.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 27 },
	{ config_id = 141015, gadget_id = 70210101, pos = { x = -1931.325, y = 148.700, z = 5880.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 27 }
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
		monsters = { 141001, 141002, 141003, 141004, 141005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 141006, 141007, 141008 },
		gadgets = { 141009, 141010, 141011, 141012, 141013, 141014, 141015 },
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