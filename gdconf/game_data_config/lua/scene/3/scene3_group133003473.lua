-- 基础信息
local base_info = {
	group_id = 133003473
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1620, monster_id = 21020201, pos = { x = 2370.062, y = 253.622, z = -1371.086 }, rot = { x = 0.000, y = 270.333, z = 0.000 }, level = 5, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 1 },
	{ config_id = 1621, monster_id = 21010601, pos = { x = 2366.662, y = 252.141, z = -1374.743 }, rot = { x = 0.000, y = 344.267, z = 0.000 }, level = 5, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 1622, monster_id = 21010601, pos = { x = 2363.596, y = 251.344, z = -1372.810 }, rot = { x = 0.000, y = 64.728, z = 0.000 }, level = 5, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 1623, monster_id = 21010601, pos = { x = 2365.070, y = 252.064, z = -1369.530 }, rot = { x = 0.000, y = 168.921, z = 0.000 }, level = 5, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 1624, monster_id = 21010601, pos = { x = 2374.629, y = 254.772, z = -1357.521 }, rot = { x = 0.000, y = 335.841, z = 0.000 }, level = 5, drop_tag = "丘丘人", disableWander = true, pose_id = 32, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4248, gadget_id = 70220013, pos = { x = 2372.649, y = 254.362, z = -1370.631 }, rot = { x = 0.000, y = 182.040, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4249, gadget_id = 70220013, pos = { x = 2366.365, y = 251.596, z = -1377.251 }, rot = { x = 0.000, y = 273.057, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4250, gadget_id = 70310006, pos = { x = 2366.596, y = 252.435, z = -1372.349 }, rot = { x = 0.000, y = 204.687, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4251, gadget_id = 70220014, pos = { x = 2373.309, y = 254.411, z = -1358.403 }, rot = { x = 0.000, y = 335.968, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4252, gadget_id = 70220014, pos = { x = 2372.334, y = 254.297, z = -1368.874 }, rot = { x = 0.000, y = 91.379, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4253, gadget_id = 70220014, pos = { x = 2364.916, y = 251.355, z = -1376.605 }, rot = { x = 0.000, y = 157.248, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4254, gadget_id = 70220014, pos = { x = 2362.044, y = 250.450, z = -1375.050 }, rot = { x = 0.000, y = 219.811, z = 0.000 }, level = 5, area_id = 1 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1620, 1621, 1622, 1623, 1624 },
		gadgets = { 4248, 4249, 4250, 4251, 4252, 4253, 4254 },
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