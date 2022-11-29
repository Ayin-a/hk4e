-- 基础信息
local base_info = {
	group_id = 133222334
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 334008, monster_id = 21010101, pos = { x = -4982.760, y = 200.041, z = -4255.141 }, rot = { x = 0.000, y = 144.148, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 10, area_id = 14 },
	{ config_id = 334009, monster_id = 21010101, pos = { x = -4983.212, y = 200.021, z = -4258.763 }, rot = { x = 0.000, y = 23.611, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 10, area_id = 14 },
	{ config_id = 334010, monster_id = 21010101, pos = { x = -4984.039, y = 200.000, z = -4214.821 }, rot = { x = 0.000, y = 142.691, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, climate_area_id = 10, area_id = 14 },
	{ config_id = 334011, monster_id = 21010101, pos = { x = -4982.146, y = 200.070, z = -4218.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 334001, gadget_id = 70220014, pos = { x = -4982.658, y = 199.607, z = -4256.527 }, rot = { x = 338.257, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 334002, gadget_id = 70220014, pos = { x = -4982.083, y = 199.545, z = -4258.244 }, rot = { x = 344.458, y = 0.000, z = 324.655 }, level = 30, area_id = 14 },
	{ config_id = 334003, gadget_id = 70220026, pos = { x = -4981.369, y = 199.506, z = -4255.887 }, rot = { x = 326.105, y = 0.000, z = 339.218 }, level = 30, area_id = 14 },
	{ config_id = 334007, gadget_id = 70220014, pos = { x = -4982.514, y = 199.451, z = -4216.908 }, rot = { x = 354.372, y = 10.484, z = 27.921 }, level = 30, area_id = 14 }
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
		{ config_id = 334012, gadget_id = 70210105, pos = { x = -4979.026, y = 200.000, z = -4257.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 334013, gadget_id = 70210105, pos = { x = -4974.000, y = 200.000, z = -4225.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 334014, gadget_id = 70210105, pos = { x = -4918.813, y = 200.000, z = -4246.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 334015, gadget_id = 70210105, pos = { x = -4923.319, y = 200.000, z = -4238.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 334016, gadget_id = 70210105, pos = { x = -4919.882, y = 200.000, z = -4242.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 334017, gadget_id = 70210105, pos = { x = -4928.538, y = 200.000, z = -4246.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
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
		monsters = { 334008, 334009, 334010, 334011 },
		gadgets = { 334001, 334002, 334003, 334007 },
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