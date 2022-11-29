-- 基础信息
local base_info = {
	group_id = 133302362
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
	{ config_id = 362001, gadget_id = 70290002, pos = { x = -903.740, y = 197.164, z = 2224.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 362002, gadget_id = 70500000, pos = { x = -904.811, y = 198.782, z = 2225.094 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 3001, owner = 362001, area_id = 24 },
	{ config_id = 362003, gadget_id = 70500000, pos = { x = -902.870, y = 199.792, z = 2223.368 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 3001, owner = 362001, area_id = 24 },
	{ config_id = 362004, gadget_id = 70500000, pos = { x = -903.697, y = 200.072, z = 2225.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3001, owner = 362001, area_id = 24 },
	{ config_id = 362005, gadget_id = 70290002, pos = { x = -879.391, y = 191.497, z = 2210.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 362006, gadget_id = 70500000, pos = { x = -880.462, y = 193.115, z = 2211.088 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 3011, owner = 362005, area_id = 24 },
	{ config_id = 362007, gadget_id = 70500000, pos = { x = -878.521, y = 194.125, z = 2209.363 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 3011, owner = 362005, area_id = 24 },
	{ config_id = 362008, gadget_id = 70500000, pos = { x = -879.348, y = 194.405, z = 2211.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3011, owner = 362005, area_id = 24 },
	{ config_id = 362012, gadget_id = 70290002, pos = { x = -911.576, y = 194.227, z = 2162.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 362013, gadget_id = 70500000, pos = { x = -912.647, y = 195.845, z = 2163.209 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 3001, owner = 362012, area_id = 24 },
	{ config_id = 362014, gadget_id = 70500000, pos = { x = -910.706, y = 196.854, z = 2161.484 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 3001, owner = 362012, area_id = 24 },
	{ config_id = 362015, gadget_id = 70500000, pos = { x = -911.533, y = 197.135, z = 2163.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3001, owner = 362012, area_id = 24 },
	{ config_id = 362016, gadget_id = 70290002, pos = { x = -890.420, y = 193.997, z = 2134.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 362017, gadget_id = 70500000, pos = { x = -891.491, y = 195.615, z = 2134.765 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 3001, owner = 362016, area_id = 24 },
	{ config_id = 362018, gadget_id = 70500000, pos = { x = -889.550, y = 196.625, z = 2133.040 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 3001, owner = 362016, area_id = 24 },
	{ config_id = 362019, gadget_id = 70500000, pos = { x = -890.377, y = 196.905, z = 2135.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3001, owner = 362016, area_id = 24 },
	{ config_id = 362020, gadget_id = 70500000, pos = { x = -885.783, y = 191.594, z = 2137.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2006, area_id = 24 },
	{ config_id = 362021, gadget_id = 70500000, pos = { x = -886.211, y = 191.556, z = 2138.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2006, area_id = 24 },
	{ config_id = 362022, gadget_id = 70540037, pos = { x = -942.410, y = 206.453, z = 2141.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 362023, gadget_id = 70500000, pos = { x = -942.023, y = 206.829, z = 2141.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 362022, area_id = 24 },
	{ config_id = 362024, gadget_id = 70500000, pos = { x = -942.579, y = 207.174, z = 2141.988 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 362022, area_id = 24 },
	{ config_id = 362025, gadget_id = 70540037, pos = { x = -958.136, y = 211.954, z = 2184.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 362026, gadget_id = 70500000, pos = { x = -957.750, y = 212.330, z = 2184.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 362025, area_id = 24 },
	{ config_id = 362027, gadget_id = 70500000, pos = { x = -958.305, y = 212.676, z = 2185.174 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 362025, area_id = 24 },
	{ config_id = 362028, gadget_id = 70540037, pos = { x = -859.083, y = 182.786, z = 2184.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 362029, gadget_id = 70500000, pos = { x = -858.696, y = 183.161, z = 2184.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 362028, area_id = 24 },
	{ config_id = 362030, gadget_id = 70500000, pos = { x = -859.252, y = 183.507, z = 2185.273 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 362028, area_id = 24 },
	{ config_id = 362031, gadget_id = 70540037, pos = { x = -978.908, y = 222.878, z = 2126.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 362032, gadget_id = 70500000, pos = { x = -978.522, y = 223.253, z = 2126.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 362031, area_id = 24 },
	{ config_id = 362033, gadget_id = 70500000, pos = { x = -979.077, y = 223.599, z = 2126.743 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 362031, area_id = 24 },
	{ config_id = 362034, gadget_id = 70500000, pos = { x = -901.814, y = 191.560, z = 2162.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2002, area_id = 24 },
	{ config_id = 362035, gadget_id = 70500000, pos = { x = -903.096, y = 190.531, z = 2175.768 }, rot = { x = 348.059, y = 2.024, z = 340.827 }, level = 27, point_type = 2002, area_id = 24 },
	{ config_id = 362036, gadget_id = 70500000, pos = { x = -876.109, y = 186.988, z = 2178.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2002, area_id = 24 },
	{ config_id = 362037, gadget_id = 70500000, pos = { x = -877.084, y = 186.825, z = 2180.210 }, rot = { x = 0.000, y = 285.103, z = 0.000 }, level = 27, point_type = 2002, area_id = 24 },
	{ config_id = 362038, gadget_id = 70500000, pos = { x = -911.548, y = 194.504, z = 2163.316 }, rot = { x = 0.657, y = 359.899, z = 342.450 }, level = 27, point_type = 2002, area_id = 24 }
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
	monsters = {
		{ config_id = 362009, monster_id = 28060602, pos = { x = -886.946, y = 193.035, z = 2134.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 2, area_id = 24 },
		{ config_id = 362010, monster_id = 28060601, pos = { x = -883.808, y = 191.849, z = 2135.254 }, rot = { x = 0.000, y = 278.685, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 3, area_id = 24 },
		{ config_id = 362011, monster_id = 28060603, pos = { x = -958.722, y = 212.107, z = 2181.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 24 }
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
		monsters = { },
		gadgets = { 362001, 362002, 362003, 362004, 362005, 362006, 362007, 362008, 362012, 362013, 362014, 362015, 362016, 362017, 362018, 362019, 362020, 362021, 362022, 362023, 362024, 362025, 362026, 362027, 362028, 362029, 362030, 362031, 362032, 362033, 362034, 362035, 362036, 362037, 362038 },
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