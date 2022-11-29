-- 基础信息
local base_info = {
	group_id = 133308405
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 405001, monster_id = 22010101, pos = { x = -1675.344, y = 106.930, z = 5031.022 }, rot = { x = 0.000, y = 74.342, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, isElite = true, pose_id = 9013, area_id = 26 },
	{ config_id = 405002, monster_id = 21030101, pos = { x = -1673.433, y = 106.834, z = 5036.377 }, rot = { x = 0.000, y = 151.506, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 26 },
	{ config_id = 405003, monster_id = 21010201, pos = { x = -1668.628, y = 106.417, z = 5032.271 }, rot = { x = 0.000, y = 276.334, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 26 },
	{ config_id = 405004, monster_id = 21010201, pos = { x = -1670.364, y = 106.505, z = 5028.435 }, rot = { x = 0.000, y = 316.570, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 26 },
	{ config_id = 405005, monster_id = 21010401, pos = { x = -1670.316, y = 106.552, z = 5035.336 }, rot = { x = 0.000, y = 202.703, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 405006, gadget_id = 70300107, pos = { x = -1672.360, y = 106.691, z = 5031.999 }, rot = { x = 355.824, y = 304.909, z = 358.178 }, level = 33, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 405007, gadget_id = 70220013, pos = { x = -1678.840, y = 107.245, z = 5033.904 }, rot = { x = 2.899, y = 65.860, z = 357.723 }, level = 33, area_id = 26 },
	{ config_id = 405008, gadget_id = 70220013, pos = { x = -1677.010, y = 107.130, z = 5034.840 }, rot = { x = 356.704, y = 325.025, z = 356.854 }, level = 33, area_id = 26 }
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
		monsters = { 405001, 405002, 405003, 405004, 405005 },
		gadgets = { 405006, 405007, 405008 },
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