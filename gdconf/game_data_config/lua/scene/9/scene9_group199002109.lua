-- 基础信息
local base_info = {
	group_id = 199002109
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 109001, monster_id = 21010201, pos = { x = 445.340, y = 120.454, z = -338.062 }, rot = { x = 0.000, y = 191.775, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 401 },
	{ config_id = 109002, monster_id = 21010401, pos = { x = 441.875, y = 120.060, z = -336.240 }, rot = { x = 0.000, y = 166.373, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 401 },
	{ config_id = 109003, monster_id = 21010401, pos = { x = 445.142, y = 120.233, z = -333.008 }, rot = { x = 0.000, y = 193.999, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 401 },
	{ config_id = 109004, monster_id = 21020201, pos = { x = 445.723, y = 120.430, z = -334.717 }, rot = { x = 0.000, y = 187.540, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 401 }
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
		{ config_id = 109005, monster_id = 21010101, pos = { x = 462.910, y = 121.627, z = -370.958 }, rot = { x = 0.000, y = 1.576, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 401 },
		{ config_id = 109006, monster_id = 21010101, pos = { x = 520.356, y = 120.436, z = -405.855 }, rot = { x = 0.000, y = 331.396, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 401 }
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
		monsters = { 109001, 109002, 109003, 109004 },
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