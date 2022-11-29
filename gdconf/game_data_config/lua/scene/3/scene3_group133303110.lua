-- 基础信息
local base_info = {
	group_id = 133303110
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 110003, monster_id = 21011001, pos = { x = -1927.835, y = 426.492, z = 3613.783 }, rot = { x = 0.000, y = 198.883, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 23 },
	{ config_id = 110004, monster_id = 21011001, pos = { x = -1909.838, y = 409.599, z = 3636.021 }, rot = { x = 0.000, y = 67.930, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, area_id = 23 },
	{ config_id = 110006, monster_id = 21011001, pos = { x = -1921.031, y = 424.838, z = 3625.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 110007, gadget_id = 70310001, pos = { x = -1905.904, y = 414.721, z = 3603.980 }, rot = { x = 0.000, y = 26.212, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 110008, gadget_id = 70310001, pos = { x = -1899.192, y = 406.344, z = 3619.728 }, rot = { x = 0.000, y = 338.644, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 110009, gadget_id = 70310001, pos = { x = -1913.324, y = 409.471, z = 3627.670 }, rot = { x = 0.000, y = 76.761, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 }
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
		{ config_id = 110005, monster_id = 21011001, pos = { x = -1899.043, y = 409.558, z = 3597.107 }, rot = { x = 0.000, y = 342.671, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, area_id = 23 }
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
		monsters = { 110003, 110004, 110006 },
		gadgets = { 110007, 110008, 110009 },
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