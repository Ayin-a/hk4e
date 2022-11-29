-- 基础信息
local base_info = {
	group_id = 133302589
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
	{ config_id = 589001, gadget_id = 70500000, pos = { x = -871.670, y = 209.021, z = 2603.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2002, area_id = 24 },
	{ config_id = 589002, gadget_id = 70500000, pos = { x = -874.923, y = 206.428, z = 2591.001 }, rot = { x = 0.000, y = 219.062, z = 0.000 }, level = 27, point_type = 2045, area_id = 24 },
	{ config_id = 589005, gadget_id = 70540037, pos = { x = -950.153, y = 213.540, z = 2473.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 589006, gadget_id = 70500000, pos = { x = -949.766, y = 213.915, z = 2473.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 589005, area_id = 24 },
	{ config_id = 589007, gadget_id = 70500000, pos = { x = -950.322, y = 214.261, z = 2474.107 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 589005, area_id = 24 },
	{ config_id = 589008, gadget_id = 70540037, pos = { x = -985.708, y = 228.382, z = 2533.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 589009, gadget_id = 70500000, pos = { x = -985.322, y = 228.758, z = 2533.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 589008, area_id = 24 },
	{ config_id = 589010, gadget_id = 70500000, pos = { x = -985.877, y = 229.103, z = 2534.112 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 589008, area_id = 24 },
	{ config_id = 589011, gadget_id = 70290001, pos = { x = -986.644, y = 229.637, z = 2410.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 589012, gadget_id = 70500000, pos = { x = -986.627, y = 230.206, z = 2410.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 589011, area_id = 24 },
	{ config_id = 589013, gadget_id = 70500000, pos = { x = -986.709, y = 230.492, z = 2409.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 589011, area_id = 24 },
	{ config_id = 589014, gadget_id = 70500000, pos = { x = -986.376, y = 230.904, z = 2410.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 589011, area_id = 24 },
	{ config_id = 589015, gadget_id = 70500000, pos = { x = -968.780, y = 219.440, z = 2453.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 1002, area_id = 24 },
	{ config_id = 589016, gadget_id = 70500000, pos = { x = -860.633, y = 199.512, z = 2580.253 }, rot = { x = 26.225, y = 143.390, z = 4.091 }, level = 27, point_type = 2045, area_id = 24 },
	{ config_id = 589017, gadget_id = 70500000, pos = { x = -845.513, y = 191.503, z = 2569.177 }, rot = { x = 19.567, y = 176.533, z = 9.730 }, level = 27, point_type = 2045, area_id = 24 },
	{ config_id = 589018, gadget_id = 70500000, pos = { x = -849.248, y = 190.560, z = 2562.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2002, area_id = 24 },
	{ config_id = 589019, gadget_id = 70500000, pos = { x = -854.912, y = 197.944, z = 2580.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2002, area_id = 24 },
	{ config_id = 589020, gadget_id = 70500000, pos = { x = -851.184, y = 198.700, z = 2586.821 }, rot = { x = 10.776, y = 124.380, z = 1.568 }, level = 27, point_type = 2052, area_id = 24 }
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
		{ config_id = 589003, monster_id = 28020313, pos = { x = -907.515, y = 207.620, z = 2583.077 }, rot = { x = 0.000, y = 260.143, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, area_id = 24 },
		{ config_id = 589004, monster_id = 28020301, pos = { x = -930.783, y = 208.828, z = 2579.906 }, rot = { x = 0.000, y = 85.005, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, area_id = 24 },
		{ config_id = 589021, monster_id = 28020314, pos = { x = -882.669, y = 207.017, z = 2594.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
		{ config_id = 589022, monster_id = 28020314, pos = { x = -886.409, y = 208.175, z = 2578.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
		{ config_id = 589023, monster_id = 28020314, pos = { x = -900.579, y = 206.349, z = 2592.956 }, rot = { x = 0.000, y = 76.417, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, area_id = 24 }
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
		gadgets = { 589001, 589002, 589005, 589006, 589007, 589008, 589009, 589010, 589011, 589012, 589013, 589014, 589015, 589016, 589017, 589018, 589019, 589020 },
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