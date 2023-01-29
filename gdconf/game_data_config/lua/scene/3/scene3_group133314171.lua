-- 基础信息
local base_info = {
	group_id = 133314171
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 171001, monster_id = 26090601, pos = { x = -968.418, y = 40.394, z = 4672.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 103, area_id = 32 },
	{ config_id = 171002, monster_id = 26090601, pos = { x = -970.559, y = 41.963, z = 4667.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 103, area_id = 32 },
	{ config_id = 171003, monster_id = 26090601, pos = { x = -977.432, y = 42.680, z = 4667.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 103, area_id = 32 },
	{ config_id = 171004, monster_id = 26090601, pos = { x = -979.075, y = 40.905, z = 4672.604 }, rot = { x = 0.000, y = 45.402, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 103, area_id = 32 },
	{ config_id = 171006, monster_id = 26090601, pos = { x = -973.993, y = 40.156, z = 4674.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 103, area_id = 32 },
	{ config_id = 171007, monster_id = 26120401, pos = { x = -973.994, y = 41.402, z = 4670.799 }, rot = { x = 0.000, y = 9.584, z = 0.000 }, level = 32, drop_tag = "大蕈兽", disableWander = true, pose_id = 102, area_id = 32 }
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
		monsters = { 171001, 171002, 171003, 171004, 171006, 171007 },
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