-- 基础信息
local base_info = {
	group_id = 133303117
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 117001, monster_id = 21030401, pos = { x = -2015.932, y = 489.103, z = 3594.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 117002, monster_id = 21030401, pos = { x = -2020.545, y = 490.656, z = 3595.047 }, rot = { x = 0.000, y = 21.716, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 117003, monster_id = 21030401, pos = { x = -2024.257, y = 491.975, z = 3598.851 }, rot = { x = 0.000, y = 71.353, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 117004, monster_id = 21030601, pos = { x = -2003.282, y = 488.427, z = 3605.273 }, rot = { x = 0.000, y = 245.980, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 117005, monster_id = 21030601, pos = { x = -2004.157, y = 489.259, z = 3612.107 }, rot = { x = 0.000, y = 226.766, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 117006, monster_id = 21030601, pos = { x = -2008.272, y = 489.545, z = 3615.207 }, rot = { x = 0.000, y = 198.333, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 117007, monster_id = 21020301, pos = { x = -2021.190, y = 490.749, z = 3605.782 }, rot = { x = 0.000, y = 100.608, z = 0.000 }, level = 30, drop_id = 1000100, isOneoff = true, area_id = 23 },
	{ config_id = 117008, monster_id = 21030401, pos = { x = -2020.558, y = 490.480, z = 3601.159 }, rot = { x = 0.000, y = 56.160, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	{ config_id = 117009, monster_id = 21011601, pos = { x = -2012.601, y = 489.422, z = 3612.056 }, rot = { x = 0.000, y = 184.264, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	{ config_id = 117010, monster_id = 21011001, pos = { x = -2005.425, y = 488.760, z = 3607.987 }, rot = { x = 0.000, y = 249.172, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	{ config_id = 117011, monster_id = 21020701, pos = { x = -2016.276, y = 489.613, z = 3610.603 }, rot = { x = 0.000, y = 147.063, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	{ config_id = 117012, monster_id = 21030401, pos = { x = -2019.303, y = 490.145, z = 3605.995 }, rot = { x = 0.000, y = 123.486, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	{ config_id = 117013, monster_id = 21020301, pos = { x = -2020.042, y = 490.474, z = 3609.799 }, rot = { x = 0.000, y = 135.446, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 }
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
		monsters = { 117001, 117002, 117003, 117005, 117006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 117007, 117008, 117009, 117010, 117011, 117012, 117013 },
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