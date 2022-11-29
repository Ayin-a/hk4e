-- 基础信息
local base_info = {
	group_id = 133105806
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 806001, monster_id = 28020201, pos = { x = 637.825, y = 275.390, z = -203.741 }, rot = { x = 0.000, y = 266.117, z = 0.000 }, level = 25, drop_tag = "走兽", area_id = 9 },
	{ config_id = 806002, monster_id = 28020201, pos = { x = 985.081, y = 250.708, z = -126.889 }, rot = { x = 0.000, y = 186.180, z = 0.000 }, level = 25, drop_tag = "走兽", area_id = 9 },
	{ config_id = 806003, monster_id = 28020201, pos = { x = 823.221, y = 263.841, z = -189.745 }, rot = { x = 0.000, y = 102.637, z = 0.000 }, level = 25, drop_tag = "走兽", area_id = 9 },
	{ config_id = 806004, monster_id = 28020201, pos = { x = 648.405, y = 228.139, z = -569.099 }, rot = { x = 0.000, y = 99.514, z = 0.000 }, level = 25, drop_tag = "走兽", area_id = 9 },
	{ config_id = 806005, monster_id = 28020201, pos = { x = 897.426, y = 297.674, z = -397.023 }, rot = { x = 0.000, y = 168.057, z = 0.000 }, level = 25, drop_tag = "走兽", climate_area_id = 1, area_id = 10 },
	{ config_id = 806006, monster_id = 28020201, pos = { x = 812.153, y = 260.309, z = -338.473 }, rot = { x = 9.589, y = 84.537, z = 7.033 }, level = 25, drop_tag = "走兽", area_id = 9 },
	{ config_id = 806007, monster_id = 28020201, pos = { x = 956.300, y = 224.172, z = -32.422 }, rot = { x = 0.000, y = 253.191, z = 0.000 }, level = 25, drop_tag = "走兽", area_id = 9 },
	{ config_id = 806008, monster_id = 28020201, pos = { x = 816.401, y = 226.350, z = -96.335 }, rot = { x = 0.000, y = 48.938, z = 0.000 }, level = 25, drop_tag = "走兽", area_id = 9 },
	{ config_id = 806009, monster_id = 28020101, pos = { x = 1045.564, y = 264.998, z = -369.973 }, rot = { x = 0.000, y = 196.094, z = 0.000 }, level = 35, drop_tag = "走兽", climate_area_id = 1, area_id = 10 },
	{ config_id = 806011, monster_id = 28020201, pos = { x = 918.385, y = 260.649, z = -267.635 }, rot = { x = 0.000, y = 108.381, z = 0.000 }, level = 25, drop_tag = "走兽", area_id = 9 },
	{ config_id = 806013, monster_id = 28020201, pos = { x = 941.693, y = 270.646, z = -258.705 }, rot = { x = 0.000, y = 11.047, z = 0.000 }, level = 25, drop_tag = "走兽", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
		{ config_id = 806012, monster_id = 28040101, pos = { x = 748.446, y = 199.581, z = -11.864 }, rot = { x = 0.000, y = 282.782, z = 0.000 }, level = 19, drop_tag = "水族", area_id = 9 },
		{ config_id = 806014, monster_id = 28040101, pos = { x = 745.558, y = 199.581, z = -11.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "水族", area_id = 9 },
		{ config_id = 806015, monster_id = 28040101, pos = { x = 746.815, y = 199.581, z = -16.333 }, rot = { x = 0.000, y = 277.335, z = 0.000 }, level = 19, drop_tag = "水族", area_id = 9 },
		{ config_id = 806016, monster_id = 28040102, pos = { x = 748.629, y = 199.581, z = -15.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "水族", area_id = 9 },
		{ config_id = 806017, monster_id = 28040102, pos = { x = 761.515, y = 199.581, z = -19.026 }, rot = { x = 0.000, y = 55.421, z = 0.000 }, level = 19, drop_tag = "水族", area_id = 9 },
		{ config_id = 806018, monster_id = 28040102, pos = { x = 717.365, y = 199.581, z = -3.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "水族", area_id = 9 },
		{ config_id = 806019, monster_id = 28040102, pos = { x = 718.049, y = 199.581, z = -0.228 }, rot = { x = 0.000, y = 104.340, z = 0.000 }, level = 19, drop_tag = "水族", area_id = 9 },
		{ config_id = 806020, monster_id = 28040102, pos = { x = 721.589, y = 199.581, z = -2.045 }, rot = { x = 0.000, y = 296.740, z = 0.000 }, level = 19, drop_tag = "水族", area_id = 9 },
		{ config_id = 806021, monster_id = 28040102, pos = { x = 725.791, y = 200.000, z = 3.562 }, rot = { x = 0.000, y = 77.758, z = 0.000 }, level = 19, drop_tag = "水族", area_id = 9 },
		{ config_id = 806022, monster_id = 28040102, pos = { x = 739.577, y = 200.000, z = 5.999 }, rot = { x = 0.000, y = 47.724, z = 0.000 }, level = 19, drop_tag = "水族", area_id = 9 }
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
		monsters = { 806001, 806002, 806003, 806004, 806005, 806006, 806007, 806008, 806009, 806011, 806013 },
		gadgets = { },
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