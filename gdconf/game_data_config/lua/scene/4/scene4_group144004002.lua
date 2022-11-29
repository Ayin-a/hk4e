-- 基础信息
local base_info = {
	group_id = 144004002
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
		{ config_id = 2001, gadget_id = 70900008, pos = { x = -344.921, y = 201.676, z = -620.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
		{ config_id = 2002, gadget_id = 70900008, pos = { x = 459.649, y = 206.007, z = -429.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
		{ config_id = 2003, gadget_id = 70900008, pos = { x = 739.169, y = 202.141, z = 207.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
		{ config_id = 2004, gadget_id = 70900008, pos = { x = 226.326, y = 202.874, z = 334.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
		{ config_id = 2005, gadget_id = 70900008, pos = { x = -646.917, y = 202.337, z = -2.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
		{ config_id = 2006, gadget_id = 70900008, pos = { x = -291.650, y = 121.060, z = -633.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
		{ config_id = 2007, gadget_id = 70900008, pos = { x = 378.700, y = 119.730, z = 379.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
		{ config_id = 2008, gadget_id = 70900008, pos = { x = 176.850, y = 119.640, z = 203.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
		{ config_id = 2009, gadget_id = 70900008, pos = { x = -631.780, y = 120.320, z = -114.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
		{ config_id = 2010, gadget_id = 70900008, pos = { x = -273.790, y = 119.330, z = -622.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
		{ config_id = 2011, gadget_id = 70900008, pos = { x = 110.110, y = 118.990, z = -728.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
		{ config_id = 2012, gadget_id = 70900008, pos = { x = 364.970, y = 120.080, z = -471.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
		{ config_id = 2013, gadget_id = 70900008, pos = { x = 584.804, y = 119.280, z = -354.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
		{ config_id = 2014, gadget_id = 70900008, pos = { x = 536.690, y = 119.870, z = -39.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
		{ config_id = 2015, gadget_id = 70900008, pos = { x = 662.726, y = 118.830, z = 216.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
		{ config_id = 2016, gadget_id = 70900008, pos = { x = -276.650, y = 120.190, z = 394.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
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
		-- description = 海岛上升前,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 海岛上升后,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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