-- 基础信息
local base_info = {
	group_id = 133106587
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 587005, monster_id = 28020102, pos = { x = -190.995, y = 300.125, z = 1604.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 19 },
	{ config_id = 587006, monster_id = 25010201, pos = { x = -200.990, y = 299.625, z = 1609.842 }, rot = { x = 0.000, y = 246.302, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9101, area_id = 19 },
	{ config_id = 587007, monster_id = 25010301, pos = { x = -200.560, y = 299.022, z = 1611.686 }, rot = { x = 0.000, y = 211.004, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9002, area_id = 19 },
	{ config_id = 587010, monster_id = 28020102, pos = { x = -242.625, y = 343.900, z = 1580.605 }, rot = { x = 0.000, y = 27.344, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 19 },
	{ config_id = 587011, monster_id = 28020102, pos = { x = -243.180, y = 343.644, z = 1581.816 }, rot = { x = 0.000, y = 63.795, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 19 },
	{ config_id = 587012, monster_id = 28030402, pos = { x = -173.044, y = 301.402, z = 1565.914 }, rot = { x = 0.000, y = 246.295, z = 0.000 }, level = 36, drop_tag = "鸟类", pose_id = 901, area_id = 19 },
	{ config_id = 587013, monster_id = 28030402, pos = { x = -175.563, y = 301.300, z = 1564.487 }, rot = { x = 0.000, y = 77.862, z = 0.000 }, level = 36, drop_tag = "鸟类", pose_id = 901, area_id = 19 },
	{ config_id = 587014, monster_id = 28030402, pos = { x = -172.818, y = 301.346, z = 1563.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 587018, monster_id = 28020102, pos = { x = -251.321, y = 343.303, z = 1575.404 }, rot = { x = 0.000, y = 63.795, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 19 },
	{ config_id = 587019, monster_id = 25030301, pos = { x = -259.037, y = 298.212, z = 1422.944 }, rot = { x = 0.000, y = 39.862, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9005, area_id = 19 },
	{ config_id = 587031, monster_id = 28030101, pos = { x = -389.074, y = 339.441, z = 1339.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 587032, monster_id = 28030101, pos = { x = -152.587, y = 280.229, z = 1400.858 }, rot = { x = 0.000, y = 310.402, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 587033, monster_id = 28030101, pos = { x = -156.201, y = 279.946, z = 1398.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 587034, monster_id = 28030101, pos = { x = -391.951, y = 339.528, z = 1339.988 }, rot = { x = 0.000, y = 35.988, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 587035, monster_id = 28030402, pos = { x = -371.084, y = 342.599, z = 1346.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 587036, monster_id = 28030402, pos = { x = -373.859, y = 342.335, z = 1350.986 }, rot = { x = 0.000, y = 96.737, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 587037, monster_id = 28030402, pos = { x = -372.377, y = 342.464, z = 1348.721 }, rot = { x = 0.000, y = 85.526, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 587044, monster_id = 28030402, pos = { x = -330.551, y = 315.930, z = 1555.879 }, rot = { x = 0.000, y = 311.657, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 587045, monster_id = 28030402, pos = { x = -333.413, y = 315.669, z = 1553.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 587046, monster_id = 28030402, pos = { x = -322.615, y = 314.454, z = 1642.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 587047, monster_id = 28030402, pos = { x = -321.215, y = 314.347, z = 1645.823 }, rot = { x = 0.000, y = 214.153, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 587001, gadget_id = 70217014, pos = { x = -81.683, y = 285.773, z = 1503.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 587009, gadget_id = 70210101, pos = { x = -191.351, y = 300.995, z = 1615.777 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 19 },
	{ config_id = 587020, gadget_id = 70220025, pos = { x = -259.053, y = 298.115, z = 1422.794 }, rot = { x = 87.641, y = 248.752, z = 35.162 }, level = 36, area_id = 19 },
	{ config_id = 587021, gadget_id = 70210101, pos = { x = -257.862, y = 298.392, z = 1422.715 }, rot = { x = 0.000, y = 85.947, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 587022, gadget_id = 70210101, pos = { x = -256.266, y = 297.974, z = 1424.761 }, rot = { x = 0.000, y = 85.947, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 587023, gadget_id = 70217014, pos = { x = -210.771, y = 285.359, z = 1434.941 }, rot = { x = 0.000, y = 195.242, z = 0.000 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 587024, gadget_id = 70330021, pos = { x = -167.105, y = 279.479, z = 1407.160 }, rot = { x = 331.205, y = 150.946, z = 10.060 }, level = 36, area_id = 19 },
	{ config_id = 587025, gadget_id = 70330021, pos = { x = -164.696, y = 280.172, z = 1406.673 }, rot = { x = 0.000, y = 88.133, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 587026, gadget_id = 70330021, pos = { x = -186.019, y = 278.380, z = 1419.630 }, rot = { x = 358.565, y = 36.738, z = 358.929 }, level = 36, area_id = 19 },
	{ config_id = 587027, gadget_id = 70330021, pos = { x = -156.430, y = 278.279, z = 1414.746 }, rot = { x = 0.000, y = 336.242, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 587028, gadget_id = 70330021, pos = { x = -158.361, y = 278.279, z = 1417.284 }, rot = { x = 0.000, y = 157.922, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 587030, gadget_id = 70217014, pos = { x = -376.864, y = 346.678, z = 1373.689 }, rot = { x = 342.087, y = 296.618, z = 345.973 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
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
		monsters = { 587005, 587006, 587007, 587010, 587011, 587012, 587013, 587014, 587018, 587019, 587031, 587032, 587033, 587034, 587035, 587036, 587037, 587044, 587045, 587046, 587047 },
		gadgets = { 587001, 587009, 587020, 587021, 587022, 587023, 587024, 587025, 587026, 587027, 587028, 587030 },
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