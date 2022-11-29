-- 基础信息
local base_info = {
	group_id = 133104648
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 648001, monster_id = 21011201, pos = { x = 115.959, y = 205.708, z = 700.876 }, rot = { x = 0.000, y = 210.511, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 9 },
	{ config_id = 648002, monster_id = 21011201, pos = { x = 116.422, y = 205.689, z = 698.130 }, rot = { x = 0.000, y = 317.147, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 9 },
	{ config_id = 648003, monster_id = 21011001, pos = { x = 151.091, y = 202.861, z = 734.927 }, rot = { x = 0.000, y = 126.078, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 648004, monster_id = 21010501, pos = { x = 154.582, y = 203.248, z = 736.837 }, rot = { x = 0.000, y = 186.834, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 648005, monster_id = 21010101, pos = { x = 157.896, y = 201.622, z = 732.655 }, rot = { x = 0.000, y = 279.182, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 9 },
	{ config_id = 648006, monster_id = 21010101, pos = { x = 154.985, y = 201.622, z = 729.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 9 },
	{ config_id = 648007, monster_id = 21010101, pos = { x = 150.404, y = 201.622, z = 730.676 }, rot = { x = 0.000, y = 28.334, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 9 }
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
		monsters = { 648001, 648002, 648003, 648004, 648005, 648006, 648007 },
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