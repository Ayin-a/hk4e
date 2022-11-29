-- 基础信息
local base_info = {
	group_id = 133001092
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 436, monster_id = 21010201, pos = { x = 1613.447, y = 246.109, z = -1586.243 }, rot = { x = 0.000, y = 51.084, z = 0.000 }, level = 15, drop_tag = "丘丘人", pose_id = 9002, area_id = 2 },
	{ config_id = 437, monster_id = 21010301, pos = { x = 1608.578, y = 249.196, z = -1607.012 }, rot = { x = 0.000, y = 91.112, z = 0.000 }, level = 15, drop_tag = "丘丘人", pose_id = 9003, area_id = 2 },
	{ config_id = 438, monster_id = 21010201, pos = { x = 1605.719, y = 246.063, z = -1600.384 }, rot = { x = 0.000, y = 131.112, z = 0.000 }, level = 15, drop_tag = "丘丘人", pose_id = 9003, area_id = 2 },
	{ config_id = 92002, monster_id = 21010501, pos = { x = 1617.883, y = 246.118, z = -1586.932 }, rot = { x = 0.000, y = 329.808, z = 0.000 }, level = 15, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 2 },
	{ config_id = 92003, monster_id = 21010301, pos = { x = 1619.412, y = 246.109, z = -1582.209 }, rot = { x = 0.000, y = 63.865, z = 0.000 }, level = 15, drop_tag = "丘丘人", pose_id = 9011, area_id = 2 },
	{ config_id = 92004, monster_id = 21010301, pos = { x = 1615.458, y = 249.196, z = -1602.784 }, rot = { x = 0.000, y = 154.813, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 9012, area_id = 2 },
	{ config_id = 92005, monster_id = 21010301, pos = { x = 1608.578, y = 249.196, z = -1607.012 }, rot = { x = 0.000, y = 91.112, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 9012, area_id = 2 },
	{ config_id = 92006, monster_id = 21010201, pos = { x = 1612.140, y = 249.196, z = -1602.857 }, rot = { x = 0.000, y = 154.248, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 9012, area_id = 2 },
	{ config_id = 92008, monster_id = 21020201, pos = { x = 1603.097, y = 246.342, z = -1603.369 }, rot = { x = 0.000, y = 51.315, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 2 },
	{ config_id = 92009, monster_id = 21010501, pos = { x = 1606.182, y = 246.424, z = -1613.562 }, rot = { x = 0.000, y = 63.865, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 9003, area_id = 2 },
	{ config_id = 92010, monster_id = 21010701, pos = { x = 1606.572, y = 246.443, z = -1625.459 }, rot = { x = 0.000, y = 15.826, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 2 },
	{ config_id = 92011, monster_id = 21010101, pos = { x = 1606.237, y = 246.360, z = -1630.505 }, rot = { x = 0.000, y = 238.035, z = 0.000 }, level = 19, drop_tag = "丘丘人", pose_id = 9010, area_id = 2 },
	{ config_id = 92012, monster_id = 21010101, pos = { x = 1601.101, y = 246.739, z = -1627.841 }, rot = { x = 0.000, y = 176.110, z = 0.000 }, level = 19, drop_tag = "丘丘人", pose_id = 9016, area_id = 2 }
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
		monsters = { 436, 437, 438, 92002, 92003, 92010, 92011, 92012 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 92004, 92005, 92006, 92008, 92009 },
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