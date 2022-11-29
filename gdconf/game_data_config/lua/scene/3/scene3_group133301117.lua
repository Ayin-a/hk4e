-- 基础信息
local base_info = {
	group_id = 133301117
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 117001, monster_id = 22010101, pos = { x = -919.902, y = 210.577, z = 3823.087 }, rot = { x = 0.000, y = 58.300, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, isElite = true, pose_id = 9013, area_id = 23 },
	{ config_id = 117002, monster_id = 21030101, pos = { x = -917.991, y = 211.317, z = 3828.441 }, rot = { x = 0.000, y = 121.880, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 117003, monster_id = 21010201, pos = { x = -913.185, y = 209.758, z = 3824.336 }, rot = { x = 0.000, y = 235.500, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 117004, monster_id = 21010201, pos = { x = -914.921, y = 208.791, z = 3820.499 }, rot = { x = 0.000, y = 303.239, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 117005, monster_id = 21010401, pos = { x = -914.874, y = 210.776, z = 3827.400 }, rot = { x = 0.000, y = 219.015, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 117006, gadget_id = 70300107, pos = { x = -916.918, y = 209.854, z = 3824.063 }, rot = { x = 0.000, y = 323.700, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 117007, gadget_id = 70220013, pos = { x = -923.398, y = 212.357, z = 3825.968 }, rot = { x = 16.658, y = 69.780, z = 343.796 }, level = 33, area_id = 23 },
	{ config_id = 117008, gadget_id = 70220013, pos = { x = -921.568, y = 211.814, z = 3826.904 }, rot = { x = 342.236, y = 333.469, z = 346.252 }, level = 33, area_id = 23 }
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
		monsters = { 117001, 117002, 117003, 117004, 117005 },
		gadgets = { 117006, 117007, 117008 },
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