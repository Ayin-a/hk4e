-- 基础信息
local base_info = {
	group_id = 133310062
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
	{ config_id = 62001, shape = RegionShape.POLYGON, pos = { x = -2493.421, y = 267.855, z = 4206.698 }, height = 198.290, point_array = { { x = -2626.941, y = 3880.803 }, { x = -2842.089, y = 4187.685 }, { x = -2698.225, y = 4313.680 }, { x = -2686.186, y = 4481.769 }, { x = -2452.841, y = 4532.592 }, { x = -2336.273, y = 4518.221 }, { x = -2214.129, y = 4433.104 }, { x = -2144.753, y = 4428.930 }, { x = -2145.385, y = 4212.632 }, { x = -2162.338, y = 4147.408 }, { x = -2282.725, y = 4116.029 }, { x = -2361.324, y = 4043.640 }, { x = -2392.191, y = 4027.720 }, { x = -2455.673, y = 3989.250 } }, area_id = 26, vision_type_list = { 33100005 } },
	{ config_id = 62002, shape = RegionShape.POLYGON, pos = { x = -2251.357, y = 204.637, z = 4557.691 }, height = 127.875, point_array = { { x = -2284.632, y = 4438.989 }, { x = -2334.769, y = 4405.567 }, { x = -2381.578, y = 4497.046 }, { x = -2341.431, y = 4603.776 }, { x = -2311.987, y = 4663.391 }, { x = -2176.025, y = 4709.814 }, { x = -2123.690, y = 4652.082 }, { x = -2121.136, y = 4554.531 }, { x = -2136.941, y = 4492.650 }, { x = -2152.406, y = 4444.889 }, { x = -2207.767, y = 4434.659 }, { x = -2245.208, y = 4434.217 } }, area_id = 26, vision_type_list = { 33100013 } },
	-- 蘑菇顶1
	{ config_id = 62003, shape = RegionShape.POLYGON, pos = { x = -2320.110, y = 361.556, z = 4118.490 }, height = 119.289, point_array = { { x = -2117.650, y = 4301.950 }, { x = -2271.204, y = 4386.696 }, { x = -2350.642, y = 4374.209 }, { x = -2430.046, y = 4096.701 }, { x = -2576.857, y = 3969.041 }, { x = -2450.611, y = 3850.284 }, { x = -2202.248, y = 3850.741 }, { x = -2095.510, y = 4018.721 }, { x = -2063.363, y = 4269.896 } }, area_id = 26, vision_type_list = { 33100014 } },
	{ config_id = 62004, shape = RegionShape.POLYGON, pos = { x = -2054.320, y = 341.185, z = 4023.050 }, height = 42.369, point_array = { { x = -2061.297, y = 4130.229 }, { x = -2129.969, y = 4124.957 }, { x = -2145.026, y = 4020.489 }, { x = -2100.774, y = 3975.314 }, { x = -2012.580, y = 3915.871 }, { x = -1963.615, y = 3981.616 }, { x = -1978.951, y = 4066.405 } }, area_id = 26, vision_type_list = { 33100014 } },
	-- 阿如村外
	{ config_id = 62005, shape = RegionShape.CYLINDER, radius = 300, pos = { x = -1995.039, y = 319.062, z = 4131.554 }, height = 250.000, area_id = 26, vision_type_list = { 33080020 } },
	-- 阿如村内
	{ config_id = 62006, shape = RegionShape.CYLINDER, radius = 100, pos = { x = -2006.680, y = 242.379, z = 4146.027 }, height = 150.000, area_id = 26 },
	-- 魔鳞医院地表
	{ config_id = 62007, shape = RegionShape.POLYGON, pos = { x = -2262.475, y = 257.250, z = 3976.093 }, height = 114.500, point_array = { { x = -2189.504, y = 4041.276 }, { x = -2236.768, y = 4066.021 }, { x = -2273.063, y = 4069.175 }, { x = -2311.913, y = 4025.277 }, { x = -2325.290, y = 3974.373 }, { x = -2335.445, y = 3918.455 }, { x = -2309.491, y = 3883.011 }, { x = -2256.691, y = 3892.376 }, { x = -2242.457, y = 3919.008 }, { x = -2214.823, y = 3962.363 } }, area_id = 26, vision_type_list = { 33080022 } }
}

-- 触发器
triggers = {
	{ config_id = 1062001, name = "ENTER_REGION_62001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1062002, name = "ENTER_REGION_62002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 蘑菇顶1
	{ config_id = 1062003, name = "ENTER_REGION_62003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1062004, name = "ENTER_REGION_62004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 阿如村外
	{ config_id = 1062005, name = "ENTER_REGION_62005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 阿如村内
	{ config_id = 1062006, name = "ENTER_REGION_62006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		regions = { 62001, 62002, 62003, 62004, 62005, 62006, 62007 },
		triggers = { "ENTER_REGION_62001", "ENTER_REGION_62002", "ENTER_REGION_62003", "ENTER_REGION_62004", "ENTER_REGION_62005", "ENTER_REGION_62006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================