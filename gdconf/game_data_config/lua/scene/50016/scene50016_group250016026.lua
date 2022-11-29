-- 基础信息
local base_info = {
	group_id = 250016026
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 138, monster_id = 21010101, pos = { x = -274.058, y = -11.000, z = -291.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 139, monster_id = 21010101, pos = { x = -277.966, y = -11.000, z = -291.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 402 },
	{ config_id = 140, monster_id = 21010101, pos = { x = -281.721, y = -11.000, z = -291.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9002 },
	{ config_id = 141, monster_id = 21010101, pos = { x = -285.294, y = -11.000, z = -291.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 142, monster_id = 21010101, pos = { x = -289.278, y = -11.000, z = -291.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9010 },
	{ config_id = 143, monster_id = 21010101, pos = { x = -292.700, y = -11.000, z = -291.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9015 },
	{ config_id = 144, monster_id = 21010101, pos = { x = -296.095, y = -11.000, z = -291.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9011 },
	{ config_id = 145, monster_id = 21010101, pos = { x = -299.138, y = -11.000, z = -291.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9016 },
	{ config_id = 146, monster_id = 21010101, pos = { x = -302.497, y = -11.000, z = -291.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 },
	{ config_id = 147, monster_id = 21010101, pos = { x = -305.865, y = -11.000, z = -291.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9013 },
	{ config_id = 148, monster_id = 21010101, pos = { x = -309.102, y = -11.000, z = -291.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9014 }
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
	suite = 2,
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
		monsters = { 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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