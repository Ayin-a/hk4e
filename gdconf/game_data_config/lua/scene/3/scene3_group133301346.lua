-- 基础信息
local base_info = {
	group_id = 133301346
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 346009, monster_id = 28061401, pos = { x = -572.122, y = 173.706, z = 3465.193 }, rot = { x = 0.000, y = 353.407, z = 0.000 }, level = 33, drop_tag = "驮兽丘丘人", disableWander = true, pose_id = 4, area_id = 22 },
	{ config_id = 346010, monster_id = 21011001, pos = { x = -572.146, y = 173.070, z = 3468.292 }, rot = { x = 0.000, y = 168.331, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 22 },
	{ config_id = 346011, monster_id = 21010501, pos = { x = -566.811, y = 173.363, z = 3478.343 }, rot = { x = 0.000, y = 184.004, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 22 },
	{ config_id = 346012, monster_id = 21010901, pos = { x = -569.505, y = 169.649, z = 3480.444 }, rot = { x = 0.000, y = 228.363, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 22 }
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
		{ config_id = 346001, monster_id = 28061401, pos = { x = -508.834, y = 225.085, z = 3186.547 }, rot = { x = 0.000, y = 329.533, z = 0.000 }, level = 33, drop_tag = "驮兽丘丘人", disableWander = true, pose_id = 4, area_id = 22 },
		{ config_id = 346002, monster_id = 21010101, pos = { x = -512.850, y = 226.056, z = 3187.270 }, rot = { x = 0.000, y = 346.263, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 22 },
		{ config_id = 346003, monster_id = 21010101, pos = { x = -507.570, y = 225.370, z = 3190.478 }, rot = { x = 0.000, y = 289.154, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 22 },
		{ config_id = 346004, monster_id = 21010101, pos = { x = -511.579, y = 226.115, z = 3190.434 }, rot = { x = 0.000, y = 331.196, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9010, area_id = 22 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 346009, 346010, 346011, 346012 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
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