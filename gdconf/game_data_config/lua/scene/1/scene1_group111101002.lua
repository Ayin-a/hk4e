-- 基础信息
local base_info = {
	group_id = 111101002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 28020310, pos = { x = 2556.476, y = 213.266, z = -1280.403 }, rot = { x = 0.000, y = 111.363, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 1001 },
	{ config_id = 2002, monster_id = 28020311, pos = { x = 2567.364, y = 211.694, z = -1294.567 }, rot = { x = 0.000, y = 359.833, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 1001 },
	{ config_id = 2003, monster_id = 28030502, pos = { x = 2563.479, y = 211.480, z = -1298.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true },
	{ config_id = 2004, monster_id = 28020312, pos = { x = 2553.927, y = 211.611, z = -1297.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true },
	{ config_id = 2006, monster_id = 28030501, pos = { x = 2558.710, y = 211.480, z = -1304.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true },
	{ config_id = 2007, monster_id = 28020310, pos = { x = 2560.595, y = 213.542, z = -1279.152 }, rot = { x = 0.000, y = 166.423, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 1001 },
	{ config_id = 2008, monster_id = 28020310, pos = { x = 2568.062, y = 212.886, z = -1284.748 }, rot = { x = 0.000, y = 166.423, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 1001 },
	{ config_id = 2009, monster_id = 28020310, pos = { x = 2572.530, y = 213.313, z = -1280.998 }, rot = { x = 0.000, y = 111.363, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 1001 },
	{ config_id = 2010, monster_id = 28020310, pos = { x = 2555.966, y = 213.120, z = -1290.630 }, rot = { x = 0.000, y = 111.363, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 1001 }
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
		monsters = { 2001, 2002, 2003, 2004, 2006, 2007, 2008, 2009, 2010 },
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