-- 基础信息
local base_info = {
	group_id = 133004112
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 320, monster_id = 28020102, pos = { x = 2319.548, y = 255.299, z = -443.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 321, monster_id = 28020102, pos = { x = 2318.652, y = 281.031, z = -286.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 322, monster_id = 21010101, pos = { x = 2286.354, y = 257.161, z = -367.912 }, rot = { x = 0.000, y = 244.790, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 3 },
	{ config_id = 323, monster_id = 21010101, pos = { x = 2288.750, y = 257.012, z = -369.552 }, rot = { x = 0.000, y = 201.606, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 3 },
	{ config_id = 341, monster_id = 20011201, pos = { x = 2412.895, y = 299.232, z = -249.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 342, monster_id = 20011201, pos = { x = 2414.740, y = 299.206, z = -246.775 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 343, monster_id = 20011201, pos = { x = 2412.086, y = 298.825, z = -246.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 362, monster_id = 28020201, pos = { x = 2387.503, y = 295.510, z = -312.532 }, rot = { x = 0.000, y = 87.702, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 598, gadget_id = 70211101, pos = { x = 2392.706, y = 307.093, z = -191.265 }, rot = { x = 0.000, y = 177.014, z = 0.000 }, level = 16, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 599, gadget_id = 70500000, pos = { x = 2431.518, y = 297.539, z = -202.737 }, rot = { x = 0.000, y = 85.274, z = 0.000 }, level = 13, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 3 },
	{ config_id = 827, gadget_id = 70211101, pos = { x = 2350.150, y = 280.604, z = -386.082 }, rot = { x = 359.757, y = 119.045, z = 0.231 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
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
		monsters = { 320, 321, 322, 323, 341, 342, 343, 362 },
		gadgets = { 598, 599, 827 },
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