-- 基础信息
local base_info = {
	group_id = 220139026
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 26001, monster_id = 21010401, pos = { x = 22.586, y = 84.906, z = 91.021 }, rot = { x = 0.000, y = 159.580, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 26002, monster_id = 21010401, pos = { x = 6.499, y = 84.905, z = 83.107 }, rot = { x = 0.000, y = 301.705, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003 },
	{ config_id = 26003, monster_id = 21010501, pos = { x = 33.332, y = 84.988, z = 83.496 }, rot = { x = 0.000, y = 307.563, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003 },
	{ config_id = 26004, monster_id = 21010501, pos = { x = 52.835, y = 84.905, z = 91.128 }, rot = { x = 0.000, y = 128.847, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32 },
	{ config_id = 26005, monster_id = 21020201, pos = { x = 63.028, y = 84.905, z = 86.308 }, rot = { x = 0.000, y = 97.503, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 26006, monster_id = 21010101, pos = { x = 62.621, y = 84.905, z = 84.011 }, rot = { x = 0.000, y = 70.864, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 26007, monster_id = 21010401, pos = { x = 40.958, y = 84.904, z = 82.928 }, rot = { x = 0.000, y = 63.726, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 402 }
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
		monsters = { 26001, 26002, 26003, 26004, 26005, 26006, 26007 },
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