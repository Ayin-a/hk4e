-- 基础信息
local base_info = {
	group_id = 133310191
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 191001, monster_id = 25210101, pos = { x = -2842.822, y = 309.617, z = 4152.494 }, rot = { x = 0.000, y = 238.902, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9002, area_id = 28 },
	{ config_id = 191002, monster_id = 25210102, pos = { x = -2832.581, y = 310.141, z = 4143.557 }, rot = { x = 0.000, y = 138.030, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9001, area_id = 28 },
	{ config_id = 191003, monster_id = 25210101, pos = { x = -2814.384, y = 312.619, z = 4148.036 }, rot = { x = 0.000, y = 339.011, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9505, area_id = 28 },
	{ config_id = 191009, monster_id = 28060501, pos = { x = -2829.774, y = 310.112, z = 4141.201 }, rot = { x = 0.000, y = 312.451, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 2, area_id = 28 },
	{ config_id = 191015, monster_id = 28020503, pos = { x = -2815.134, y = 312.619, z = 4149.538 }, rot = { x = 0.000, y = 151.807, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 13, area_id = 28 },
	{ config_id = 191016, monster_id = 28020502, pos = { x = -2843.458, y = 309.560, z = 4152.954 }, rot = { x = 0.000, y = 230.924, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 12, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 191004, gadget_id = 70220048, pos = { x = -2818.792, y = 310.877, z = 4145.008 }, rot = { x = 0.000, y = 340.921, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 191005, gadget_id = 70220048, pos = { x = -2819.525, y = 310.457, z = 4142.292 }, rot = { x = 0.000, y = 2.515, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 191006, gadget_id = 70220051, pos = { x = -2820.057, y = 310.569, z = 4144.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 191007, gadget_id = 70220050, pos = { x = -2837.659, y = 309.592, z = 4155.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 191008, gadget_id = 70210101, pos = { x = -2837.232, y = 310.027, z = 4153.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 28 },
	{ config_id = 191010, gadget_id = 70310009, pos = { x = -2833.116, y = 309.574, z = 4155.986 }, rot = { x = 4.905, y = 34.270, z = 2.758 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 191011, gadget_id = 70500000, pos = { x = -2836.094, y = 310.007, z = 4152.410 }, rot = { x = 0.000, y = 255.919, z = 0.000 }, level = 32, point_type = 9104, area_id = 28 },
	{ config_id = 191012, gadget_id = 70500000, pos = { x = -2836.574, y = 309.952, z = 4152.469 }, rot = { x = 0.000, y = 324.092, z = 0.000 }, level = 32, point_type = 9104, area_id = 28 },
	{ config_id = 191013, gadget_id = 70330396, pos = { x = -2826.276, y = 308.311, z = 4167.157 }, rot = { x = 5.127, y = 359.802, z = 359.075 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 191014, gadget_id = 70330396, pos = { x = -2814.837, y = 309.982, z = 4163.107 }, rot = { x = 3.220, y = 0.739, z = 25.846 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 191017, gadget_id = 70211150, pos = { x = -2827.481, y = 308.808, z = 4159.959 }, rot = { x = 354.762, y = 60.289, z = 352.330 }, level = 26, chest_drop_id = 21910096, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 }
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
		monsters = { 191001, 191002, 191003, 191009, 191015, 191016 },
		gadgets = { 191004, 191005, 191006, 191007, 191008, 191010, 191011, 191012, 191013, 191014, 191017 },
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