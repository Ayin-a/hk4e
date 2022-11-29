-- 基础信息
local base_info = {
	group_id = 230001002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 67, monster_id = 21010701, pos = { x = 29.217, y = 1.517, z = -87.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 68, monster_id = 21010701, pos = { x = 24.500, y = 1.517, z = -87.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 69, monster_id = 21010701, pos = { x = 29.117, y = -2.364, z = -85.941 }, rot = { x = 0.000, y = 193.390, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2, gadget_id = 70220003, pos = { x = 30.190, y = 1.516, z = -86.883 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 3, gadget_id = 70220003, pos = { x = 24.860, y = 1.516, z = -86.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4, gadget_id = 70220003, pos = { x = 27.175, y = 1.516, z = -81.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5, gadget_id = 70220003, pos = { x = 27.005, y = 1.516, z = -92.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6, gadget_id = 70211001, pos = { x = 35.529, y = 3.016, z = -86.433 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 85, gadget_id = 70220003, pos = { x = 24.542, y = 1.517, z = -80.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 86, gadget_id = 70220003, pos = { x = 30.129, y = 1.516, z = -86.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 87, gadget_id = 70220003, pos = { x = 24.480, y = 1.517, z = -92.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 88, gadget_id = 70220003, pos = { x = 30.020, y = 1.516, z = -98.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 89, gadget_id = 70220003, pos = { x = 29.987, y = 1.516, z = -76.452 }, rot = { x = 0.000, y = 12.900, z = 0.000 }, level = 1 },
	{ config_id = 90, gadget_id = 70220003, pos = { x = 23.764, y = 1.516, z = -73.233 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 91, gadget_id = 70220003, pos = { x = 25.855, y = 1.516, z = -75.210 }, rot = { x = 0.000, y = 5.060, z = 0.000 }, level = 1 },
	{ config_id = 92, gadget_id = 70211001, pos = { x = 29.905, y = 1.516, z = -72.994 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 93, gadget_id = 70220004, pos = { x = 29.839, y = 1.516, z = -78.177 }, rot = { x = 0.000, y = 191.074, z = 0.000 }, level = 1 },
	{ config_id = 94, gadget_id = 70220004, pos = { x = 26.729, y = 1.516, z = -80.240 }, rot = { x = 0.000, y = 221.390, z = 0.000 }, level = 1 },
	{ config_id = 95, gadget_id = 70220004, pos = { x = 23.680, y = 1.517, z = -82.574 }, rot = { x = 0.000, y = 49.537, z = 0.000 }, level = 1 },
	{ config_id = 96, gadget_id = 70220004, pos = { x = 26.419, y = 1.516, z = -86.000 }, rot = { x = 0.000, y = 8.521, z = 0.000 }, level = 1 },
	{ config_id = 97, gadget_id = 70220004, pos = { x = 30.445, y = 1.516, z = -84.873 }, rot = { x = 0.000, y = 103.022, z = 0.000 }, level = 1 },
	{ config_id = 98, gadget_id = 70220004, pos = { x = 30.384, y = 1.516, z = -91.477 }, rot = { x = 0.000, y = 269.970, z = 0.000 }, level = 1 },
	{ config_id = 99, gadget_id = 70220004, pos = { x = 26.796, y = 1.516, z = -92.525 }, rot = { x = 0.000, y = 201.015, z = 0.000 }, level = 1 },
	{ config_id = 100, gadget_id = 70220004, pos = { x = 23.104, y = 1.517, z = -92.585 }, rot = { x = 0.000, y = 207.185, z = 0.000 }, level = 1 },
	{ config_id = 101, gadget_id = 70220004, pos = { x = 23.472, y = 1.517, z = -97.963 }, rot = { x = 0.000, y = 316.780, z = 0.000 }, level = 1 },
	{ config_id = 102, gadget_id = 70220004, pos = { x = 27.877, y = 1.517, z = -98.663 }, rot = { x = 0.000, y = 19.160, z = 0.000 }, level = 1 },
	{ config_id = 103, gadget_id = 70220004, pos = { x = 30.996, y = 1.516, z = -99.064 }, rot = { x = 0.000, y = 310.704, z = 0.000 }, level = 1 },
	{ config_id = 104, gadget_id = 70220004, pos = { x = 25.107, y = 1.516, z = -75.729 }, rot = { x = 0.000, y = 255.798, z = 0.000 }, level = 1 }
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
	rand_suite = true
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
		gadgets = { 2, 3, 4, 5, 6 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 6, 85, 86, 87, 88, 89, 90, 91, 92 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 67, 68, 69 },
		gadgets = { 6, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104 },
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