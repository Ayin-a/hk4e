-- 基础信息
local base_info = {
	group_id = 133008236
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 236002, monster_id = 21011301, pos = { x = 1136.500, y = 416.415, z = -723.809 }, rot = { x = 0.000, y = 329.352, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 236003, monster_id = 21011301, pos = { x = 1134.849, y = 416.617, z = -720.413 }, rot = { x = 0.000, y = 132.066, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, climate_area_id = 1, area_id = 10 },
	{ config_id = 236004, monster_id = 21011401, pos = { x = 1150.623, y = 401.970, z = -723.509 }, rot = { x = 0.000, y = 59.737, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9016, climate_area_id = 1, area_id = 10 },
	{ config_id = 236005, monster_id = 21011401, pos = { x = 1152.356, y = 400.863, z = -722.203 }, rot = { x = 0.000, y = 226.427, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9016, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 236001, gadget_id = 70211001, pos = { x = 1151.445, y = 400.938, z = -723.156 }, rot = { x = 0.000, y = 0.000, z = 6.759 }, level = 26, drop_tag = "雪山战斗低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
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
		monsters = { 236002, 236003, 236004, 236005 },
		gadgets = { 236001 },
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