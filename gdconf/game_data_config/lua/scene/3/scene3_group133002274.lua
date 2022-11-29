-- 基础信息
local base_info = {
	group_id = 133002274
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
	{ config_id = 2284, gadget_id = 70210102, pos = { x = 1934.210, y = 223.930, z = -939.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 1000100, drop_count = 1, area_id = 3 },
	{ config_id = 2285, gadget_id = 70210102, pos = { x = 1946.223, y = 217.367, z = -935.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 1000100, drop_count = 1, area_id = 3 },
	{ config_id = 2286, gadget_id = 70210102, pos = { x = 1958.702, y = 215.500, z = -912.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 1000100, drop_count = 1, area_id = 3 },
	{ config_id = 2287, gadget_id = 70210102, pos = { x = 1945.375, y = 221.129, z = -906.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 1000100, drop_count = 1, area_id = 3 },
	{ config_id = 2288, gadget_id = 70210102, pos = { x = 1967.274, y = 211.240, z = -897.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 1000100, drop_count = 1, area_id = 3 },
	{ config_id = 2289, gadget_id = 70210102, pos = { x = 1945.963, y = 218.135, z = -920.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 1000100, drop_count = 1, area_id = 3 },
	{ config_id = 2290, gadget_id = 70210102, pos = { x = 1970.382, y = 211.681, z = -906.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 1000100, drop_count = 1, area_id = 3 },
	{ config_id = 2291, gadget_id = 70210102, pos = { x = 1942.968, y = 218.361, z = -900.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 1000100, drop_count = 1, area_id = 3 },
	{ config_id = 2292, gadget_id = 70210102, pos = { x = 1955.532, y = 213.661, z = -882.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 1000100, drop_count = 1, area_id = 3 },
	{ config_id = 2293, gadget_id = 70210102, pos = { x = 1948.752, y = 217.809, z = -938.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 1000100, drop_count = 1, area_id = 3 },
	{ config_id = 2294, gadget_id = 70210102, pos = { x = 1960.840, y = 218.114, z = -932.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 1000100, drop_count = 1, area_id = 3 },
	{ config_id = 2295, gadget_id = 70210102, pos = { x = 1946.113, y = 218.103, z = -921.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 1000100, drop_count = 1, area_id = 3 },
	{ config_id = 2296, gadget_id = 70210102, pos = { x = 1948.067, y = 217.593, z = -936.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 1000100, drop_count = 1, area_id = 3 },
	{ config_id = 2297, gadget_id = 70210102, pos = { x = 1914.611, y = 223.826, z = -936.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 1000100, drop_count = 1, area_id = 3 },
	{ config_id = 2298, gadget_id = 70210102, pos = { x = 1953.512, y = 218.311, z = -954.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 1000100, drop_count = 1, area_id = 3 }
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
		monsters = { },
		gadgets = { 2284, 2285, 2286, 2287, 2288 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 2289, 2290, 2291, 2292, 2293 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 2294, 2295, 2296, 2297, 2298 },
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