-- 基础信息
local base_info = {
	group_id = 133308501
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 501003, monster_id = 28060401, pos = { x = -2164.215, y = 46.145, z = 4234.604 }, rot = { x = 0.000, y = 7.246, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 501005, monster_id = 28060401, pos = { x = -2150.428, y = 43.993, z = 4257.272 }, rot = { x = 0.000, y = 249.989, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 26 }
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
		{ config_id = 501001, monster_id = 28060401, pos = { x = -2149.960, y = 42.821, z = 4251.735 }, rot = { x = 0.000, y = 279.856, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 26 },
		{ config_id = 501002, monster_id = 28060401, pos = { x = -2149.037, y = 42.476, z = 4245.072 }, rot = { x = 0.000, y = 305.674, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 26 },
		{ config_id = 501004, monster_id = 28060401, pos = { x = -2157.113, y = 44.838, z = 4238.336 }, rot = { x = 0.000, y = 323.027, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 26 }
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
		monsters = { 501003, 501005 },
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