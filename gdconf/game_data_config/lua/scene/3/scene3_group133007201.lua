-- 基础信息
local base_info = {
	group_id = 133007201
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 361, monster_id = 21020201, pos = { x = 2408.905, y = 223.033, z = 397.481 }, rot = { x = 0.000, y = 93.745, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, area_id = 4 },
	{ config_id = 362, monster_id = 21020101, pos = { x = 2408.726, y = 222.662, z = 404.662 }, rot = { x = 0.000, y = 93.533, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 869, gadget_id = 70220013, pos = { x = 2399.927, y = 222.545, z = 406.749 }, rot = { x = 0.000, y = 90.497, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 870, gadget_id = 70220013, pos = { x = 2398.109, y = 222.545, z = 406.737 }, rot = { x = 0.000, y = 90.497, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 871, gadget_id = 70220013, pos = { x = 2394.838, y = 222.545, z = 394.326 }, rot = { x = 0.000, y = 90.497, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 872, gadget_id = 70220013, pos = { x = 2393.595, y = 222.545, z = 392.610 }, rot = { x = 0.000, y = 90.497, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 873, gadget_id = 70220013, pos = { x = 2393.541, y = 222.545, z = 390.981 }, rot = { x = 0.000, y = 90.497, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 874, gadget_id = 70220013, pos = { x = 2392.996, y = 222.545, z = 388.011 }, rot = { x = 0.000, y = 90.497, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 875, gadget_id = 70220013, pos = { x = 2394.533, y = 222.545, z = 386.989 }, rot = { x = 0.000, y = 90.497, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 876, gadget_id = 70220013, pos = { x = 2391.725, y = 222.545, z = 390.220 }, rot = { x = 0.000, y = 90.497, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 877, gadget_id = 70211101, pos = { x = 2395.049, y = 222.545, z = 391.511 }, rot = { x = 0.000, y = 179.885, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 878, gadget_id = 70211101, pos = { x = 2394.739, y = 222.545, z = 388.567 }, rot = { x = 0.000, y = 2.051, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 879, gadget_id = 70220013, pos = { x = 2390.669, y = 222.545, z = 382.106 }, rot = { x = 0.000, y = 90.497, z = 0.000 }, level = 23, area_id = 4 }
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
		monsters = { 361, 362 },
		gadgets = { 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879 },
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