-- 基础信息
local base_info = {
	group_id = 133106617
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 617008, monster_id = 28030402, pos = { x = -714.314, y = 110.347, z = 1894.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 617009, monster_id = 28030402, pos = { x = -715.187, y = 110.560, z = 1895.823 }, rot = { x = 0.000, y = 100.053, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 617010, monster_id = 28030402, pos = { x = -703.767, y = 101.090, z = 1910.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 617011, monster_id = 28030402, pos = { x = -704.212, y = 101.212, z = 1911.727 }, rot = { x = 0.000, y = 110.767, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 617019, monster_id = 21010401, pos = { x = -717.700, y = 137.988, z = 1972.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", pose_id = 402, area_id = 19 },
	{ config_id = 617027, monster_id = 28030101, pos = { x = -736.162, y = 144.919, z = 1936.591 }, rot = { x = 0.000, y = 176.406, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 617028, monster_id = 28030101, pos = { x = -775.142, y = 142.015, z = 1900.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 617001, gadget_id = 70217014, pos = { x = -793.975, y = 112.820, z = 1837.523 }, rot = { x = 9.685, y = 278.002, z = 356.366 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 617002, gadget_id = 70217014, pos = { x = -686.578, y = 107.636, z = 1942.597 }, rot = { x = 3.343, y = 3.636, z = 3.789 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 617003, gadget_id = 70217014, pos = { x = -755.899, y = 100.797, z = 1881.599 }, rot = { x = 3.534, y = 359.726, z = 351.119 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 617004, gadget_id = 70217014, pos = { x = -656.255, y = 102.566, z = 1831.153 }, rot = { x = 356.085, y = 79.650, z = 3.434 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 617005, gadget_id = 70210101, pos = { x = -687.891, y = 154.788, z = 1978.028 }, rot = { x = 0.000, y = 27.740, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 19 },
	{ config_id = 617006, gadget_id = 70210101, pos = { x = -679.037, y = 154.506, z = 1983.283 }, rot = { x = 0.000, y = 27.740, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 19 },
	{ config_id = 617007, gadget_id = 70290200, pos = { x = -718.437, y = 122.360, z = 2002.463 }, rot = { x = 355.479, y = 197.505, z = 20.727 }, level = 36, area_id = 19 },
	{ config_id = 617012, gadget_id = 70500000, pos = { x = -675.048, y = 156.123, z = 2009.450 }, rot = { x = 358.266, y = 152.993, z = 343.294 }, level = 36, point_type = 2004, area_id = 19 },
	{ config_id = 617021, gadget_id = 70210101, pos = { x = -699.405, y = 108.045, z = 1932.045 }, rot = { x = 0.000, y = 346.317, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 617022, gadget_id = 70210101, pos = { x = -697.170, y = 116.854, z = 1988.238 }, rot = { x = 0.000, y = 218.918, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", persistent = true, area_id = 19 },
	{ config_id = 617023, gadget_id = 70210101, pos = { x = -697.584, y = 116.754, z = 1989.565 }, rot = { x = 0.000, y = 218.918, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", persistent = true, area_id = 19 },
	{ config_id = 617024, gadget_id = 70210101, pos = { x = -697.618, y = 116.712, z = 1987.195 }, rot = { x = 0.000, y = 218.918, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", persistent = true, area_id = 19 },
	{ config_id = 617025, gadget_id = 70210101, pos = { x = -716.177, y = 141.600, z = 1943.837 }, rot = { x = 0.000, y = 330.838, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 617026, gadget_id = 70210101, pos = { x = -732.985, y = 145.717, z = 1936.166 }, rot = { x = 0.000, y = 244.820, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文璃月", persistent = true, area_id = 19 },
	{ config_id = 617029, gadget_id = 70210101, pos = { x = -773.727, y = 143.198, z = 1895.161 }, rot = { x = 0.000, y = 243.740, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬璃月", persistent = true, area_id = 19 },
	{ config_id = 617030, gadget_id = 70210101, pos = { x = -774.628, y = 143.382, z = 1893.666 }, rot = { x = 0.000, y = 243.740, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬璃月", persistent = true, area_id = 19 }
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
		{ config_id = 617020, gadget_id = 70210101, pos = { x = -722.340, y = 135.678, z = 1957.461 }, rot = { x = 0.000, y = 340.013, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 19 }
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
		monsters = { 617008, 617009, 617010, 617011, 617019, 617027, 617028 },
		gadgets = { 617001, 617002, 617003, 617004, 617005, 617006, 617007, 617012, 617021, 617022, 617023, 617024, 617025, 617026, 617029, 617030 },
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