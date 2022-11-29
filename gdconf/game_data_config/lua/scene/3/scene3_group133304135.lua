-- 基础信息
local base_info = {
	group_id = 133304135
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
}

-- 区域
regions = {
	-- 机器人内部圈
	{ config_id = 135001, shape = RegionShape.SPHERE, radius = 60, pos = { x = -1540.081, y = 255.541, z = 2337.114 }, area_id = 21, vision_type_list = { 33040004 } },
	-- 后山
	{ config_id = 135002, shape = RegionShape.SPHERE, radius = 150, pos = { x = -1681.104, y = 474.530, z = 2141.614 }, area_id = 21, vision_type_list = { 33040005 } },
	-- 根噬洞窟
	{ config_id = 135003, shape = RegionShape.SPHERE, radius = 205, pos = { x = -1660.320, y = 188.293, z = 2167.733 }, area_id = 21, vision_type_list = { 33040006 } },
	-- 幻梦之门1-后山
	{ config_id = 135004, shape = RegionShape.SPHERE, radius = 120, pos = { x = -1643.067, y = 468.951, z = 2203.499 }, area_id = 21, vision_type_list = { 33040012 } },
	-- 幻梦之门2-大机器人坑
	{ config_id = 135005, shape = RegionShape.SPHERE, radius = 150, pos = { x = -1289.349, y = 104.000, z = 2323.187 }, area_id = 21, vision_type_list = { 33040013 } },
	-- 幻梦之门3-根噬洞窟
	{ config_id = 135006, shape = RegionShape.SPHERE, radius = 150, pos = { x = -1689.806, y = 101.415, z = 2218.090 }, area_id = 21, vision_type_list = { 33040013 } },
	-- 蘑菇洞最深处
	{ config_id = 135007, shape = RegionShape.SPHERE, radius = 80, pos = { x = -1253.599, y = 142.595, z = 2775.415 }, area_id = 21, vision_type_list = { 33040015 } },
	-- 东部边界山头
	{ config_id = 135008, shape = RegionShape.SPHERE, radius = 80, pos = { x = -1365.355, y = 391.365, z = 1932.674 }, area_id = 21, vision_type_list = { 33040016 } },
	-- 秘密基地
	{ config_id = 135009, shape = RegionShape.SPHERE, radius = 90, pos = { x = -1170.969, y = 165.144, z = 2506.611 }, area_id = 21, vision_type_list = { 33040017 } },
	-- 水没中水位洞
	{ config_id = 135010, shape = RegionShape.SPHERE, radius = 60, pos = { x = -1056.336, y = 152.712, z = 2173.602 }, area_id = 24, vision_type_list = { 33040018 } },
	-- 水没水底
	{ config_id = 135011, shape = RegionShape.SPHERE, radius = 110, pos = { x = -1141.224, y = 150.800, z = 2207.953 }, area_id = 21, vision_type_list = { 33040019 } },
	-- 机器人坑
	{ config_id = 135012, shape = RegionShape.SPHERE, radius = 220, pos = { x = -1366.862, y = 104.000, z = 2339.327 }, area_id = 21, vision_type_list = { 33040007 } },
	-- 水没高水位洞
	{ config_id = 135013, shape = RegionShape.SPHERE, radius = 70, pos = { x = -1128.727, y = 164.250, z = 2084.291 }, area_id = 21, vision_type_list = { 33040020 } },
	-- 河岸边路上
	{ config_id = 135014, shape = RegionShape.SPHERE, radius = 80, pos = { x = -1523.134, y = 222.810, z = 2842.876 }, area_id = 21, vision_type_list = { 33040021 } },
	-- 光面1
	{ config_id = 135015, shape = RegionShape.SPHERE, radius = 120, pos = { x = -1404.386, y = 266.581, z = 2876.570 }, area_id = 21, vision_type_list = { 33040022 } },
	-- 水没死域
	{ config_id = 135016, shape = RegionShape.SPHERE, radius = 40, pos = { x = -1227.418, y = 156.019, z = 2160.110 }, area_id = 21, vision_type_list = { 33040023 } },
	-- 水没洞窟
	{ config_id = 135017, shape = RegionShape.SPHERE, radius = 90, pos = { x = -1133.145, y = 161.390, z = 2221.183 }, area_id = 21, vision_type_list = { 33040008 } },
	-- 丘丘人营地
	{ config_id = 135018, shape = RegionShape.SPHERE, radius = 150, pos = { x = -1018.805, y = 228.991, z = 2350.574 }, area_id = 24, vision_type_list = { 33040024 } }
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
		gadgets = { },
		regions = { 135001, 135002, 135003, 135004, 135005, 135006, 135007, 135008, 135009, 135010, 135011, 135012, 135013, 135014, 135015, 135016, 135017, 135018 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================