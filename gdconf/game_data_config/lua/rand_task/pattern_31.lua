-- 基础信息
local base_info = {
	group_id = 139999031
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 31001, monster_id = 26090201, pos = { x = -0.034, y = 0.612, z = -2.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 3 },
	{ config_id = 31002, monster_id = 26090701, pos = { x = -1.492, y = 0.595, z = 2.278 }, rot = { x = 0.000, y = 142.900, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 3 },
	{ config_id = 31003, monster_id = 26090201, pos = { x = 2.546, y = 0.645, z = 1.694 }, rot = { x = 0.000, y = 150.336, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 3 },
	{ config_id = 31004, monster_id = 26090901, pos = { x = -2.057, y = 0.581, z = -1.484 }, rot = { x = 0.000, y = 323.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 3 },
	{ config_id = 31005, monster_id = 26090901, pos = { x = 2.547, y = 0.822, z = -1.589 }, rot = { x = 0.000, y = 229.359, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 3 },
	{ config_id = 31006, monster_id = 26090901, pos = { x = -0.012, y = 0.573, z = 2.729 }, rot = { x = 0.000, y = 100.885, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 3 },
	{ config_id = 31007, monster_id = 26090701, pos = { x = 3.350, y = 0.717, z = -0.149 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 3 },
	{ config_id = 31008, monster_id = 26090701, pos = { x = -1.280, y = 0.573, z = -2.201 }, rot = { x = 0.000, y = 291.531, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 3 },
	{ config_id = 31009, monster_id = 26090401, pos = { x = -1.464, y = 0.585, z = 3.091 }, rot = { x = 0.000, y = 65.997, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 3 }
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
		monsters = { 31001, 31002, 31003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 31004, 31005, 31006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 31007, 31008, 31009 },
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