-- 基础信息
local base_info = {
	group_id = 133222046
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
	{ config_id = 46001, gadget_id = 70500000, pos = { x = -4781.033, y = 510.678, z = -4268.726 }, rot = { x = 0.000, y = 148.949, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 46002, gadget_id = 70500000, pos = { x = -4481.882, y = 216.493, z = -4641.403 }, rot = { x = 0.000, y = 41.464, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 46003, gadget_id = 70500000, pos = { x = -4682.478, y = 559.135, z = -4159.703 }, rot = { x = 0.000, y = 152.200, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 46004, gadget_id = 70500000, pos = { x = -4569.948, y = 336.142, z = -4307.091 }, rot = { x = 0.000, y = 56.616, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 46005, gadget_id = 70500000, pos = { x = -4658.351, y = 196.614, z = -4248.108 }, rot = { x = 0.000, y = 87.326, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 46006, gadget_id = 70500000, pos = { x = -4814.289, y = 266.946, z = -4656.294 }, rot = { x = 0.000, y = 278.272, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 46007, gadget_id = 70500000, pos = { x = -4665.177, y = 448.704, z = -4228.111 }, rot = { x = 0.000, y = 59.927, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 46008, gadget_id = 70500000, pos = { x = -4906.053, y = 211.259, z = -3890.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 46010, gadget_id = 70500000, pos = { x = -4408.241, y = 205.036, z = -4556.548 }, rot = { x = 0.000, y = 100.625, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 46011, gadget_id = 70500000, pos = { x = -4574.040, y = 377.087, z = -4226.258 }, rot = { x = 0.000, y = 109.416, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 46012, gadget_id = 70500000, pos = { x = -4866.822, y = 207.446, z = -4777.237 }, rot = { x = 0.000, y = 277.856, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 46013, gadget_id = 70500000, pos = { x = -4809.350, y = 249.132, z = -4394.423 }, rot = { x = 0.000, y = 229.867, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 46014, gadget_id = 70500000, pos = { x = -4545.729, y = 244.266, z = -4507.342 }, rot = { x = 0.000, y = 103.050, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 }
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
		{ config_id = 46009, gadget_id = 70900387, pos = { x = -5081.524, y = 200.000, z = -3975.836 }, rot = { x = 6.770, y = 229.541, z = 354.259 }, level = 30, isOneoff = true, persistent = true, area_id = 14 }
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
		gadgets = { 46001, 46002, 46003, 46004, 46005, 46006, 46007, 46008, 46010, 46011, 46012, 46013, 46014 },
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