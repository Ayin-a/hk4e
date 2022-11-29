-- 基础信息
local base_info = {
	group_id = 133221008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 28020403, pos = { x = -3118.895, y = 250.832, z = -4418.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 2, area_id = 11 },
	{ config_id = 8002, monster_id = 28020402, pos = { x = -3150.267, y = 252.418, z = -4493.570 }, rot = { x = 0.000, y = 15.279, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 3, area_id = 11 },
	{ config_id = 8004, monster_id = 28020403, pos = { x = -3019.841, y = 212.498, z = -4297.950 }, rot = { x = 0.000, y = 15.279, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 1, area_id = 11 },
	{ config_id = 8005, monster_id = 28020403, pos = { x = -3061.976, y = 212.099, z = -4290.951 }, rot = { x = 0.000, y = 72.917, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 3, area_id = 11 },
	{ config_id = 8006, monster_id = 28020401, pos = { x = -3060.265, y = 212.039, z = -4290.896 }, rot = { x = 0.000, y = 302.860, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 2, area_id = 11 },
	{ config_id = 8007, monster_id = 28020402, pos = { x = -3073.440, y = 245.053, z = -4386.869 }, rot = { x = 0.000, y = 323.376, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 1, area_id = 11 }
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
		{ config_id = 8003, monster_id = 28020402, pos = { x = -3023.278, y = 220.307, z = -4355.469 }, rot = { x = 0.000, y = 15.279, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 3, area_id = 11 }
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
		monsters = { 8002, 8004, 8005, 8006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 8001, 8002, 8005, 8007 },
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