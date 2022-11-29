-- 基础信息
local base_info = {
	group_id = 199003103
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 103001, monster_id = 21010101, pos = { x = -685.594, y = 149.238, z = -159.231 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 403 },
	{ config_id = 103002, monster_id = 20010301, pos = { x = -684.312, y = 149.098, z = -158.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 403 },
	{ config_id = 103003, monster_id = 20010101, pos = { x = -682.897, y = 128.935, z = -199.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, pose_id = 201, area_id = 403 },
	{ config_id = 103004, monster_id = 20010101, pos = { x = -686.762, y = 130.297, z = -198.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, pose_id = 201, area_id = 403 },
	{ config_id = 103005, monster_id = 20010101, pos = { x = -685.452, y = 128.284, z = -203.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, pose_id = 201, area_id = 403 },
	{ config_id = 103006, monster_id = 20011001, pos = { x = -746.493, y = 120.000, z = -194.639 }, rot = { x = 0.000, y = 241.872, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 403 },
	{ config_id = 103007, monster_id = 21010401, pos = { x = -755.912, y = 120.449, z = -200.638 }, rot = { x = 0.000, y = 73.381, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012, area_id = 403 },
	{ config_id = 103008, monster_id = 20011101, pos = { x = -743.017, y = 120.000, z = -196.757 }, rot = { x = 0.000, y = 247.377, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 403 },
	{ config_id = 103009, monster_id = 21010101, pos = { x = -741.168, y = 130.899, z = -243.378 }, rot = { x = 0.000, y = 6.860, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 403 },
	{ config_id = 103010, monster_id = 21030401, pos = { x = -739.781, y = 120.128, z = -97.740 }, rot = { x = 0.000, y = 241.033, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 403 },
	{ config_id = 103011, monster_id = 21010201, pos = { x = -740.092, y = 120.288, z = -94.942 }, rot = { x = 0.000, y = 239.462, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9014, area_id = 403 },
	{ config_id = 103012, monster_id = 21010201, pos = { x = -737.595, y = 120.145, z = -99.711 }, rot = { x = 0.000, y = 269.332, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9014, area_id = 403 }
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
	monsters = {
		{ config_id = 103013, monster_id = 21010501, pos = { x = -741.471, y = 120.351, z = -92.666 }, rot = { x = 0.000, y = 260.809, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 403 },
		{ config_id = 103014, monster_id = 21011001, pos = { x = -736.200, y = 120.101, z = -102.308 }, rot = { x = 0.000, y = 257.924, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9002, area_id = 403 },
		{ config_id = 103015, monster_id = 20010901, pos = { x = -652.709, y = 120.000, z = -70.356 }, rot = { x = 0.000, y = 247.377, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 403 },
		{ config_id = 103016, monster_id = 20011301, pos = { x = -658.385, y = 121.137, z = -69.917 }, rot = { x = 0.000, y = 83.134, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 403 }
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
		monsters = { 103001, 103002, 103003, 103004, 103005, 103006, 103007, 103008, 103009, 103010, 103011, 103012 },
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