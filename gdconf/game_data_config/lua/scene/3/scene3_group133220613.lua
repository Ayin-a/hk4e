-- 基础信息
local base_info = {
	group_id = 133220613
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 613001, monster_id = 28010104, pos = { x = -2226.810, y = 200.503, z = -4934.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 11 },
	{ config_id = 613002, monster_id = 28010104, pos = { x = -2223.861, y = 200.354, z = -4929.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 11 },
	{ config_id = 613003, monster_id = 28010104, pos = { x = -2224.120, y = 200.889, z = -4950.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 11 },
	{ config_id = 613004, monster_id = 28010104, pos = { x = -2226.121, y = 200.855, z = -4940.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 11 },
	{ config_id = 613005, monster_id = 28010104, pos = { x = -2218.733, y = 200.457, z = -4922.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 11 },
	{ config_id = 613006, monster_id = 28010102, pos = { x = -2192.656, y = 200.427, z = -4921.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 11 },
	{ config_id = 613007, monster_id = 28010102, pos = { x = -2195.436, y = 200.717, z = -4923.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 11 },
	{ config_id = 613008, monster_id = 28010102, pos = { x = -2197.615, y = 200.794, z = -4921.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 11 },
	{ config_id = 613009, monster_id = 28010102, pos = { x = -2191.339, y = 200.545, z = -4949.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 11 },
	{ config_id = 613010, monster_id = 28010102, pos = { x = -2191.083, y = 200.397, z = -4942.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 11 },
	{ config_id = 613011, monster_id = 28010102, pos = { x = -2186.492, y = 200.185, z = -4947.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 11 },
	{ config_id = 613012, monster_id = 28010101, pos = { x = -2197.965, y = 200.844, z = -4967.590 }, rot = { x = 0.000, y = 75.297, z = 0.000 }, level = 27, drop_tag = "采集动物", disableWander = true, area_id = 11 },
	{ config_id = 613013, monster_id = 28010103, pos = { x = -2200.170, y = 200.311, z = -4966.268 }, rot = { x = 3.604, y = 219.959, z = 356.141 }, level = 27, drop_tag = "采集动物", disableWander = true, area_id = 11 },
	{ config_id = 613014, monster_id = 28010103, pos = { x = -2222.175, y = 201.046, z = -4948.952 }, rot = { x = 0.000, y = 266.977, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 11 },
	{ config_id = 613015, monster_id = 28010105, pos = { x = -2197.815, y = 200.246, z = -4965.421 }, rot = { x = 10.717, y = 300.911, z = 6.353 }, level = 27, drop_tag = "采集动物", disableWander = true, area_id = 11 },
	{ config_id = 613016, monster_id = 28010103, pos = { x = -2219.138, y = 200.000, z = -4972.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 11 },
	{ config_id = 613017, monster_id = 28010105, pos = { x = -2210.608, y = 158.213, z = -4917.880 }, rot = { x = 11.908, y = 252.941, z = 356.377 }, level = 27, drop_tag = "采集动物", disableWander = true, area_id = 11 },
	{ config_id = 613018, monster_id = 28010103, pos = { x = -2211.570, y = 158.202, z = -4918.627 }, rot = { x = 356.262, y = 41.985, z = 3.729 }, level = 27, drop_tag = "采集动物", disableWander = true, area_id = 11 },
	{ config_id = 613020, monster_id = 28010101, pos = { x = -2218.788, y = 185.181, z = -4928.134 }, rot = { x = 15.111, y = 75.297, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 613019, gadget_id = 70211001, pos = { x = -2222.202, y = 155.229, z = -4922.815 }, rot = { x = 0.000, y = 179.131, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 613021, gadget_id = 70500000, pos = { x = -2230.392, y = 143.281, z = -4923.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2033, area_id = 11 },
	{ config_id = 613022, gadget_id = 70500000, pos = { x = -2247.968, y = 142.773, z = -4915.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2033, area_id = 11 },
	{ config_id = 613023, gadget_id = 70500000, pos = { x = -2244.779, y = 144.395, z = -4920.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2033, area_id = 11 }
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
		monsters = { 613001, 613002, 613003, 613004, 613005, 613006, 613007, 613008, 613009, 613010, 613011, 613012, 613013, 613014, 613015, 613016, 613017, 613018, 613020 },
		gadgets = { 613019, 613021, 613022, 613023 },
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