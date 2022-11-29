-- 基础信息
local base_info = {
	group_id = 302001015
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15004, monster_id = 20011001, pos = { x = 421.930, y = 200.350, z = -151.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 15005, monster_id = 20011001, pos = { x = 423.047, y = 200.448, z = -150.319 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 15010, monster_id = 21010201, pos = { x = 433.917, y = 200.669, z = -270.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9016, area_id = 9 },
	{ config_id = 15011, monster_id = 21010401, pos = { x = 435.012, y = 200.630, z = -269.631 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9016, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 15001, gadget_id = 70500000, pos = { x = 531.076, y = 236.489, z = -92.164 }, rot = { x = 0.000, y = 283.058, z = 0.000 }, level = 1, point_type = 9127, area_id = 9 },
	{ config_id = 15003, gadget_id = 70500000, pos = { x = 421.913, y = 200.350, z = -150.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 9 },
	{ config_id = 15007, gadget_id = 70500000, pos = { x = 278.206, y = 200.113, z = -78.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 9 },
	{ config_id = 15008, gadget_id = 70500000, pos = { x = 426.501, y = 215.069, z = -8.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 9 },
	{ config_id = 15009, gadget_id = 70500000, pos = { x = 433.875, y = 200.676, z = -269.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 9 },
	{ config_id = 15012, gadget_id = 70500000, pos = { x = 456.981, y = 214.392, z = -434.915 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 9 },
	{ config_id = 15013, gadget_id = 70500000, pos = { x = 535.004, y = 201.453, z = -619.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 9 },
	{ config_id = 15014, gadget_id = 70500000, pos = { x = 652.562, y = 200.732, z = 89.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 9 },
	{ config_id = 15015, gadget_id = 70500000, pos = { x = 524.464, y = 199.159, z = 162.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 9 },
	{ config_id = 15016, gadget_id = 70500000, pos = { x = 716.971, y = 207.151, z = 188.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 9 },
	{ config_id = 15018, gadget_id = 70500000, pos = { x = 625.994, y = 290.246, z = -168.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 9 },
	{ config_id = 15021, gadget_id = 70500000, pos = { x = 370.144, y = 208.858, z = -199.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 9 },
	{ config_id = 15022, gadget_id = 70500000, pos = { x = 475.892, y = 205.704, z = -328.934 }, rot = { x = 0.000, y = 0.000, z = 330.000 }, level = 1, point_type = 9127, area_id = 9 },
	{ config_id = 15026, gadget_id = 70500000, pos = { x = 552.547, y = 200.233, z = -548.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 9 },
	{ config_id = 15027, gadget_id = 70500000, pos = { x = 619.234, y = 317.249, z = -324.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 9 },
	{ config_id = 15028, gadget_id = 70500000, pos = { x = 636.234, y = 258.029, z = -390.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 9 },
	{ config_id = 15030, gadget_id = 70500000, pos = { x = 611.531, y = 218.572, z = -485.440 }, rot = { x = 0.000, y = 0.000, z = 30.000 }, level = 1, point_type = 9127, area_id = 9 }
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
		monsters = { 15004, 15005, 15010, 15011 },
		gadgets = { 15001, 15003, 15007, 15008, 15009, 15012, 15013, 15014, 15015, 15016, 15018, 15021, 15022, 15026, 15027, 15028, 15030 },
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