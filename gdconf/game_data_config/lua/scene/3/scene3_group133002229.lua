-- 基础信息
local base_info = {
	group_id = 133002229
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
	{ config_id = 1947, gadget_id = 70310006, pos = { x = 1693.397, y = 206.979, z = -395.777 }, rot = { x = 0.000, y = 10.965, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 1948, gadget_id = 70310006, pos = { x = 1718.196, y = 207.785, z = -494.013 }, rot = { x = 0.000, y = 10.965, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 1949, gadget_id = 70310006, pos = { x = 1712.709, y = 256.022, z = -658.774 }, rot = { x = 0.000, y = 10.965, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 1950, gadget_id = 70220014, pos = { x = 1711.339, y = 255.923, z = -655.252 }, rot = { x = 0.000, y = 137.515, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 1951, gadget_id = 70220014, pos = { x = 1710.632, y = 255.901, z = -656.039 }, rot = { x = 0.000, y = 137.515, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 1952, gadget_id = 70310006, pos = { x = 1704.241, y = 255.982, z = -741.908 }, rot = { x = 0.000, y = 10.965, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 1957, gadget_id = 70310006, pos = { x = 1879.421, y = 224.485, z = -412.188 }, rot = { x = 0.000, y = 10.965, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 1958, gadget_id = 70310006, pos = { x = 1975.853, y = 230.546, z = -452.037 }, rot = { x = 0.000, y = 10.965, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 1959, gadget_id = 70310006, pos = { x = 1924.248, y = 205.273, z = -771.167 }, rot = { x = 0.000, y = 10.965, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 1961, gadget_id = 70310006, pos = { x = 1957.108, y = 218.041, z = -942.871 }, rot = { x = 0.000, y = 10.965, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 1962, gadget_id = 70310006, pos = { x = 1912.660, y = 223.639, z = -928.877 }, rot = { x = 0.000, y = 10.965, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 1963, gadget_id = 70310006, pos = { x = 1854.801, y = 236.686, z = -883.752 }, rot = { x = 0.000, y = 10.965, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 1964, gadget_id = 70310006, pos = { x = 1631.665, y = 266.511, z = -757.926 }, rot = { x = 0.000, y = 10.965, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 3 }
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
		{ config_id = 1960, gadget_id = 70310006, pos = { x = 2009.571, y = 205.248, z = -835.310 }, rot = { x = 0.000, y = 10.965, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 3 }
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
		gadgets = { 1947, 1948, 1949, 1950, 1951, 1952, 1957, 1958, 1959, 1961, 1962, 1963, 1964 },
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