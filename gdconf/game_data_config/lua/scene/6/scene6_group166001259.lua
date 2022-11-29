-- 基础信息
local base_info = {
	group_id = 166001259
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 259001, monster_id = 25060101, pos = { x = 1133.370, y = 961.199, z = 514.094 }, rot = { x = 0.000, y = 15.209, z = 0.000 }, level = 36, drop_tag = "盗宝团", area_id = 300 },
	{ config_id = 259007, monster_id = 25060101, pos = { x = 1170.333, y = 962.149, z = 543.808 }, rot = { x = 0.000, y = 58.959, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9101, area_id = 300 },
	{ config_id = 259017, monster_id = 25010401, pos = { x = 1099.276, y = 959.332, z = 582.774 }, rot = { x = 0.000, y = 310.025, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 2, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 259002, gadget_id = 70210101, pos = { x = 1149.057, y = 970.317, z = 494.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 300 },
	{ config_id = 259003, gadget_id = 70210101, pos = { x = 1163.591, y = 971.773, z = 494.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文璃月", persistent = true, area_id = 300 },
	{ config_id = 259004, gadget_id = 70290347, pos = { x = 1116.489, y = 959.391, z = 574.055 }, rot = { x = 358.696, y = 188.084, z = 355.378 }, level = 32, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 259005, gadget_id = 70290308, pos = { x = 1174.724, y = 962.404, z = 541.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 259006, gadget_id = 70290308, pos = { x = 1175.131, y = 962.260, z = 540.020 }, rot = { x = 6.737, y = 193.920, z = 359.966 }, level = 32, area_id = 300 },
	{ config_id = 259008, gadget_id = 70220048, pos = { x = 1102.672, y = 959.260, z = 578.805 }, rot = { x = 0.000, y = 27.073, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 259009, gadget_id = 70220048, pos = { x = 1106.416, y = 959.275, z = 582.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 259010, gadget_id = 70220048, pos = { x = 1105.688, y = 959.290, z = 584.550 }, rot = { x = 0.000, y = 31.691, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 259011, gadget_id = 70220051, pos = { x = 1105.044, y = 959.283, z = 583.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 259013, gadget_id = 70290308, pos = { x = 1081.205, y = 956.867, z = 613.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 259014, gadget_id = 70290347, pos = { x = 1146.985, y = 969.596, z = 496.010 }, rot = { x = 356.685, y = 188.178, z = 359.274 }, level = 36, persistent = true, interact_id = 87, area_id = 300 }
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
		{ config_id = 259012, gadget_id = 70217014, pos = { x = 1105.285, y = 955.275, z = 580.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
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
		monsters = { 259001, 259007, 259017 },
		gadgets = { 259002, 259003, 259004, 259005, 259006, 259008, 259009, 259010, 259011, 259013, 259014 },
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