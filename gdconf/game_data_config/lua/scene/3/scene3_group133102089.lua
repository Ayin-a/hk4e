-- 基础信息
local base_info = {
	group_id = 133102089
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
	{ config_id = 89002, gadget_id = 70290001, pos = { x = 1666.705, y = 212.484, z = 692.610 }, rot = { x = 0.000, y = 63.298, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 89003, gadget_id = 70500000, pos = { x = 1667.070, y = 213.053, z = 692.775 }, rot = { x = 0.000, y = 63.298, z = 0.000 }, level = 18, point_type = 3002, isOneoff = true, owner = 89002, area_id = 5 },
	{ config_id = 89004, gadget_id = 70500000, pos = { x = 1666.322, y = 213.339, z = 692.491 }, rot = { x = 0.000, y = 63.298, z = 0.000 }, level = 18, point_type = 3002, isOneoff = true, owner = 89002, area_id = 5 },
	{ config_id = 89005, gadget_id = 70500000, pos = { x = 1666.733, y = 213.751, z = 692.325 }, rot = { x = 0.000, y = 63.298, z = 0.000 }, level = 18, point_type = 3002, isOneoff = true, owner = 89002, area_id = 5 },
	{ config_id = 89010, gadget_id = 70290001, pos = { x = 1668.606, y = 214.292, z = 699.227 }, rot = { x = 0.000, y = 50.148, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 89011, gadget_id = 70500000, pos = { x = 1668.925, y = 214.861, z = 699.471 }, rot = { x = 0.000, y = 50.147, z = 0.000 }, level = 18, point_type = 3002, isOneoff = true, owner = 89010, area_id = 5 },
	{ config_id = 89012, gadget_id = 70500000, pos = { x = 1668.261, y = 215.147, z = 699.023 }, rot = { x = 0.000, y = 50.147, z = 0.000 }, level = 18, point_type = 3002, isOneoff = true, owner = 89010, area_id = 5 },
	{ config_id = 89013, gadget_id = 70500000, pos = { x = 1668.699, y = 215.559, z = 698.955 }, rot = { x = 0.000, y = 50.147, z = 0.000 }, level = 18, point_type = 3002, isOneoff = true, owner = 89010, area_id = 5 },
	{ config_id = 89014, gadget_id = 70290001, pos = { x = 1660.929, y = 211.733, z = 681.751 }, rot = { x = 0.000, y = 8.178, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 89015, gadget_id = 70500000, pos = { x = 1661.003, y = 212.302, z = 682.146 }, rot = { x = 0.000, y = 8.178, z = 0.000 }, level = 18, point_type = 3002, isOneoff = true, owner = 89014, area_id = 5 },
	{ config_id = 89016, gadget_id = 70500000, pos = { x = 1660.809, y = 212.588, z = 681.368 }, rot = { x = 0.000, y = 8.178, z = 0.000 }, level = 18, point_type = 3002, isOneoff = true, owner = 89014, area_id = 5 },
	{ config_id = 89017, gadget_id = 70500000, pos = { x = 1661.180, y = 213.000, z = 681.611 }, rot = { x = 0.000, y = 8.178, z = 0.000 }, level = 18, point_type = 3002, isOneoff = true, owner = 89014, area_id = 5 }
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
		{ config_id = 89007, gadget_id = 70500000, pos = { x = 1667.070, y = 213.053, z = 692.775 }, rot = { x = 0.000, y = 63.298, z = 0.000 }, level = 18, point_type = 3002, isOneoff = true, area_id = 5 },
		{ config_id = 89008, gadget_id = 70500000, pos = { x = 1666.322, y = 213.339, z = 692.491 }, rot = { x = 0.000, y = 63.298, z = 0.000 }, level = 18, point_type = 3002, isOneoff = true, area_id = 5 },
		{ config_id = 89009, gadget_id = 70500000, pos = { x = 1666.733, y = 213.751, z = 692.325 }, rot = { x = 0.000, y = 63.298, z = 0.000 }, level = 18, point_type = 3002, isOneoff = true, area_id = 5 },
		{ config_id = 89019, gadget_id = 70500000, pos = { x = 1668.925, y = 214.861, z = 699.471 }, rot = { x = 0.000, y = 50.147, z = 0.000 }, level = 18, point_type = 3002, isOneoff = true, area_id = 5 },
		{ config_id = 89020, gadget_id = 70500000, pos = { x = 1668.261, y = 215.147, z = 699.023 }, rot = { x = 0.000, y = 50.147, z = 0.000 }, level = 18, point_type = 3002, isOneoff = true, area_id = 5 },
		{ config_id = 89021, gadget_id = 70500000, pos = { x = 1668.699, y = 215.559, z = 698.955 }, rot = { x = 0.000, y = 50.147, z = 0.000 }, level = 18, point_type = 3002, isOneoff = true, area_id = 5 },
		{ config_id = 89023, gadget_id = 70500000, pos = { x = 1661.003, y = 212.302, z = 682.146 }, rot = { x = 0.000, y = 8.178, z = 0.000 }, level = 18, point_type = 3002, isOneoff = true, area_id = 5 },
		{ config_id = 89024, gadget_id = 70500000, pos = { x = 1660.809, y = 212.588, z = 681.368 }, rot = { x = 0.000, y = 8.178, z = 0.000 }, level = 18, point_type = 3002, isOneoff = true, area_id = 5 },
		{ config_id = 89025, gadget_id = 70500000, pos = { x = 1661.180, y = 213.000, z = 681.611 }, rot = { x = 0.000, y = 8.178, z = 0.000 }, level = 18, point_type = 3002, isOneoff = true, area_id = 5 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 89002, 89003, 89004, 89005, 89010, 89011, 89012, 89013, 89014, 89015, 89016, 89017 },
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