-- 基础信息
local base_info = {
	group_id = 111101169
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 169001, monster_id = 20011101, pos = { x = 2613.437, y = 227.569, z = -1106.644 }, rot = { x = 0.000, y = 155.326, z = 0.000 }, level = 1, drop_tag = "大史莱姆" },
	{ config_id = 169002, monster_id = 20011101, pos = { x = 2623.595, y = 227.824, z = -1105.985 }, rot = { x = 47.558, y = 180.000, z = 180.000 }, level = 1, drop_tag = "大史莱姆" },
	{ config_id = 169003, monster_id = 20011301, pos = { x = 2612.028, y = 227.515, z = -1109.751 }, rot = { x = 0.000, y = 118.138, z = 0.000 }, level = 1, drop_tag = "大史莱姆" },
	{ config_id = 169004, monster_id = 20011301, pos = { x = 2622.902, y = 227.604, z = -1107.469 }, rot = { x = 2.719, y = 197.722, z = 0.868 }, level = 1, drop_tag = "大史莱姆" },
	{ config_id = 169005, monster_id = 21010901, pos = { x = 2607.891, y = 227.654, z = -1106.748 }, rot = { x = 0.000, y = 126.128, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 169006, monster_id = 21010901, pos = { x = 2630.570, y = 228.704, z = -1105.964 }, rot = { x = 0.000, y = 209.645, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 169007, monster_id = 21010901, pos = { x = 2619.267, y = 227.118, z = -1103.136 }, rot = { x = 0.000, y = 148.981, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 169008, monster_id = 21010501, pos = { x = 2607.836, y = 227.657, z = -1106.830 }, rot = { x = 0.000, y = 150.954, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 169009, monster_id = 21010501, pos = { x = 2619.067, y = 227.120, z = -1103.294 }, rot = { x = 0.000, y = 162.481, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 169010, monster_id = 21010501, pos = { x = 2630.580, y = 228.703, z = -1105.999 }, rot = { x = 0.000, y = 221.331, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 169001, 169002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 169003, 169004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 169005, 169006, 169007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 169008, 169009, 169010 },
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