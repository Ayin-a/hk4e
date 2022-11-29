-- 基础信息
local base_info = {
	group_id = 133302273
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 273001, monster_id = 21010101, pos = { x = -445.180, y = 201.339, z = 2944.317 }, rot = { x = 0.000, y = 53.478, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 24 },
	{ config_id = 273002, monster_id = 21010101, pos = { x = -442.370, y = 201.545, z = 2950.620 }, rot = { x = 0.000, y = 118.670, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 24 },
	{ config_id = 273003, monster_id = 21010101, pos = { x = -510.658, y = 200.871, z = 3013.776 }, rot = { x = 0.000, y = 17.282, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 24 },
	{ config_id = 273004, monster_id = 21010101, pos = { x = -447.579, y = 200.874, z = 2949.244 }, rot = { x = 0.000, y = 92.289, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 24 },
	{ config_id = 273005, monster_id = 21010101, pos = { x = -504.587, y = 200.621, z = 3015.666 }, rot = { x = 0.000, y = 297.415, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 24 },
	{ config_id = 273006, monster_id = 21010101, pos = { x = -481.859, y = 200.068, z = 3046.735 }, rot = { x = 0.000, y = 264.608, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 24 },
	{ config_id = 273007, monster_id = 21030601, pos = { x = -507.950, y = 203.988, z = 3018.587 }, rot = { x = 0.000, y = 175.625, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 24 },
	{ config_id = 273008, monster_id = 21030601, pos = { x = -482.279, y = 201.032, z = 3040.792 }, rot = { x = 0.000, y = 2.371, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 24 },
	{ config_id = 273009, monster_id = 21030601, pos = { x = -439.297, y = 202.925, z = 2945.716 }, rot = { x = 0.000, y = 292.635, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 24 },
	{ config_id = 273010, monster_id = 21030601, pos = { x = -443.196, y = 202.972, z = 3009.731 }, rot = { x = 0.000, y = 292.635, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 24 },
	{ config_id = 273011, monster_id = 21010101, pos = { x = -447.313, y = 200.609, z = 3012.718 }, rot = { x = 0.000, y = 85.519, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 24 },
	{ config_id = 273012, monster_id = 21010101, pos = { x = -444.351, y = 200.475, z = 3015.655 }, rot = { x = 0.000, y = 152.654, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 24 },
	{ config_id = 273013, monster_id = 21011001, pos = { x = -501.106, y = 200.257, z = 3017.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", area_id = 24 },
	{ config_id = 273014, monster_id = 21011001, pos = { x = -453.464, y = 200.456, z = 3012.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", area_id = 24 },
	{ config_id = 273024, monster_id = 28061401, pos = { x = -414.493, y = 219.525, z = 2981.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "驮兽丘丘人", disableWander = true, pose_id = 3, area_id = 24 },
	{ config_id = 273025, monster_id = 28061401, pos = { x = -437.132, y = 209.941, z = 2966.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "驮兽丘丘人", disableWander = true, pose_id = 3, area_id = 24 },
	{ config_id = 273026, monster_id = 28061401, pos = { x = -435.222, y = 211.143, z = 2977.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "驮兽丘丘人", pose_id = 1, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 273015, gadget_id = 70220108, pos = { x = -445.360, y = 201.235, z = 2952.265 }, rot = { x = 352.976, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 273016, gadget_id = 70220108, pos = { x = -446.582, y = 200.948, z = 2950.905 }, rot = { x = 5.928, y = 0.000, z = 4.045 }, level = 27, area_id = 24 },
	{ config_id = 273017, gadget_id = 70220108, pos = { x = -446.519, y = 200.160, z = 3016.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 273018, gadget_id = 70220108, pos = { x = -482.822, y = 200.093, z = 3044.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 273019, gadget_id = 70220108, pos = { x = -504.282, y = 200.208, z = 3014.526 }, rot = { x = 354.168, y = 10.045, z = 347.169 }, level = 27, area_id = 24 },
	{ config_id = 273020, gadget_id = 70220108, pos = { x = -505.422, y = 200.138, z = 3013.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 273021, gadget_id = 70220108, pos = { x = -426.082, y = 215.610, z = 2977.604 }, rot = { x = 0.000, y = 0.000, z = 23.633 }, level = 27, area_id = 24 },
	{ config_id = 273022, gadget_id = 70220108, pos = { x = -426.582, y = 215.295, z = 2976.855 }, rot = { x = 0.000, y = 0.000, z = 25.540 }, level = 27, area_id = 24 },
	{ config_id = 273023, gadget_id = 70220108, pos = { x = -427.132, y = 215.043, z = 2977.643 }, rot = { x = 0.000, y = 0.000, z = 14.385 }, level = 27, area_id = 24 }
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
		monsters = { 273001, 273002, 273003, 273004, 273005, 273006, 273007, 273008, 273009, 273010, 273011, 273012, 273013, 273014, 273024, 273025, 273026 },
		gadgets = { 273015, 273016, 273017, 273018, 273019, 273020, 273021, 273022, 273023 },
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