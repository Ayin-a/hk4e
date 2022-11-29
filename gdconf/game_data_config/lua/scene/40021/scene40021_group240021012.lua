-- 基础信息
local base_info = {
	group_id = 240021012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12001, monster_id = 20011001, pos = { x = -0.137, y = 0.002, z = -14.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 12002, monster_id = 20011001, pos = { x = -5.071, y = 0.002, z = -12.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 12003, monster_id = 20011101, pos = { x = 4.494, y = 0.002, z = -12.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 6106 } },
	{ config_id = 12004, monster_id = 20011001, pos = { x = 8.870, y = 0.002, z = -9.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 12005, monster_id = 20011001, pos = { x = -8.969, y = 0.002, z = -9.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 12006, monster_id = 20011001, pos = { x = 11.501, y = 0.002, z = -5.558 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 12007, monster_id = 20011101, pos = { x = 11.619, y = 0.002, z = -0.086 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 6106 } },
	{ config_id = 12008, monster_id = 20011001, pos = { x = 9.892, y = 0.002, z = 4.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 12009, monster_id = 20011001, pos = { x = 7.133, y = 0.002, z = 8.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 12010, monster_id = 20011001, pos = { x = 3.318, y = 0.002, z = 11.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 12011, monster_id = 20011001, pos = { x = -0.412, y = 0.002, z = 13.336 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 12012, monster_id = 20011001, pos = { x = -5.346, y = 0.002, z = 11.480 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 12013, monster_id = 20011101, pos = { x = -10.150, y = 0.002, z = 8.002 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 6106 } },
	{ config_id = 12014, monster_id = 20011001, pos = { x = -12.895, y = 0.002, z = 2.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 12015, monster_id = 20011001, pos = { x = -12.290, y = 0.002, z = -4.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 12016, gadget_id = 70900205, pos = { x = -3.972, y = -3.917, z = -0.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		monsters = { },
		gadgets = { 12016 },
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