-- 基础信息
local base_info = {
	group_id = 133301547
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 547001, monster_id = 21011001, pos = { x = -393.424, y = 225.315, z = 3204.265 }, rot = { x = 0.000, y = 224.075, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, area_id = 22 },
	{ config_id = 547002, monster_id = 21011001, pos = { x = -407.914, y = 241.247, z = 3252.735 }, rot = { x = 0.000, y = 150.489, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 22 },
	{ config_id = 547003, monster_id = 21011001, pos = { x = -409.493, y = 233.921, z = 3239.048 }, rot = { x = 0.000, y = 351.595, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 22 },
	{ config_id = 547004, monster_id = 21010201, pos = { x = -419.460, y = 238.018, z = 3253.878 }, rot = { x = 0.000, y = 226.323, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 22 },
	{ config_id = 547005, monster_id = 21011001, pos = { x = -405.647, y = 226.202, z = 3214.174 }, rot = { x = 0.000, y = 144.921, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 547006, gadget_id = 70310001, pos = { x = -418.666, y = 235.304, z = 3244.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 547008, gadget_id = 70310001, pos = { x = -403.874, y = 241.830, z = 3252.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 547009, gadget_id = 70310001, pos = { x = -414.222, y = 243.511, z = 3261.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 22 }
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
		{ config_id = 547007, gadget_id = 70310001, pos = { x = -395.748, y = 222.333, z = 3203.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 22 },
		{ config_id = 547010, gadget_id = 70310001, pos = { x = -407.370, y = 226.664, z = 3215.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 22 }
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
		monsters = { 547001, 547002, 547003, 547004, 547005 },
		gadgets = { 547006, 547008, 547009 },
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