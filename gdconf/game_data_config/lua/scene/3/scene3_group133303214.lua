-- 基础信息
local base_info = {
	group_id = 133303214
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 214001, monster_id = 20010401, pos = { x = -1566.744, y = 255.200, z = 3108.996 }, rot = { x = 0.000, y = 136.477, z = 0.000 }, level = 30, drop_tag = "大史莱姆", disableWander = true, area_id = 21 },
	{ config_id = 214002, monster_id = 20010301, pos = { x = -1561.156, y = 255.673, z = 3106.654 }, rot = { x = 0.000, y = 284.980, z = 0.000 }, level = 30, drop_tag = "史莱姆", disableWander = true, area_id = 21 },
	{ config_id = 214003, monster_id = 20010301, pos = { x = -1564.344, y = 255.878, z = 3103.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", disableWander = true, area_id = 21 },
	-- 08
	{ config_id = 214004, monster_id = 20010101, pos = { x = -1574.786, y = 260.766, z = 3089.999 }, rot = { x = 0.000, y = 66.280, z = 0.000 }, level = 30, drop_tag = "史莱姆", disableWander = true, pose_id = 201, area_id = 21 },
	-- 05
	{ config_id = 214005, monster_id = 20010101, pos = { x = -1554.423, y = 260.529, z = 3092.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", disableWander = true, pose_id = 201, area_id = 21 },
	-- 06
	{ config_id = 214006, monster_id = 20011201, pos = { x = -1583.860, y = 255.998, z = 3107.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", disableWander = true, area_id = 21 },
	-- 04
	{ config_id = 214007, monster_id = 20010201, pos = { x = -1566.492, y = 256.126, z = 3117.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "大史莱姆", disableWander = true, pose_id = 201, area_id = 21 }
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
		monsters = { 214001, 214002, 214003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 214007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 214005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 214006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 214004 },
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