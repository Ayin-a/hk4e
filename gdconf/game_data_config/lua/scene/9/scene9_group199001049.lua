-- 基础信息
local base_info = {
	group_id = 199001049
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 49002, monster_id = 21030101, pos = { x = 744.280, y = 201.688, z = 207.823 }, rot = { x = 0.000, y = 159.221, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 402 },
	{ config_id = 49003, monster_id = 21010101, pos = { x = 748.378, y = 193.333, z = 221.051 }, rot = { x = 0.000, y = 218.147, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 402 },
	{ config_id = 49004, monster_id = 21010101, pos = { x = 749.990, y = 202.033, z = 204.131 }, rot = { x = 0.000, y = 267.878, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9015, area_id = 402 },
	{ config_id = 49005, monster_id = 21010401, pos = { x = 736.951, y = 201.471, z = 203.924 }, rot = { x = 0.000, y = 232.327, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 49006, gadget_id = 70300089, pos = { x = 744.612, y = 202.395, z = 206.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 49007, gadget_id = 70300088, pos = { x = 736.406, y = 201.612, z = 209.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 49008, gadget_id = 70300088, pos = { x = 735.739, y = 201.414, z = 208.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 49009, gadget_id = 70220065, pos = { x = 742.989, y = 193.095, z = 222.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 49010, gadget_id = 70220065, pos = { x = 754.558, y = 193.292, z = 216.789 }, rot = { x = 0.000, y = 38.255, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 49011, gadget_id = 70220065, pos = { x = 744.467, y = 201.598, z = 211.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 49012, gadget_id = 70220066, pos = { x = 745.960, y = 201.502, z = 211.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 49013, gadget_id = 70220066, pos = { x = 744.557, y = 203.217, z = 211.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 49014, gadget_id = 70220066, pos = { x = 744.355, y = 193.110, z = 222.710 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 }
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
	monsters = {
		{ config_id = 49001, monster_id = 21010101, pos = { x = 732.608, y = 179.435, z = 202.560 }, rot = { x = 0.000, y = 103.562, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 402 }
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
		monsters = { 49002, 49003, 49004, 49005 },
		gadgets = { 49006, 49007, 49008, 49009, 49010, 49011, 49012, 49013, 49014 },
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