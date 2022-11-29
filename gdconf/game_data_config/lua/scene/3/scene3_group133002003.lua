-- 基础信息
local base_info = {
	group_id = 133002003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 28040104, pos = { x = 1823.381, y = 233.200, z = -902.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1050127, ban_excel_drop = true, area_id = 3 },
	{ config_id = 3002, monster_id = 28040104, pos = { x = 1825.587, y = 233.200, z = -908.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1050127, ban_excel_drop = true, area_id = 3 },
	{ config_id = 3003, monster_id = 28040104, pos = { x = 1819.956, y = 233.200, z = -907.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1050127, ban_excel_drop = true, area_id = 3 },
	{ config_id = 3004, monster_id = 28040104, pos = { x = 1821.342, y = 233.200, z = -910.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1050127, ban_excel_drop = true, area_id = 3 },
	{ config_id = 3005, monster_id = 28040104, pos = { x = 1815.738, y = 233.200, z = -908.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1050127, ban_excel_drop = true, area_id = 3 },
	{ config_id = 3006, monster_id = 28040104, pos = { x = 1818.372, y = 233.200, z = -916.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1050127, ban_excel_drop = true, area_id = 3 },
	{ config_id = 3007, monster_id = 28040104, pos = { x = 1823.449, y = 233.200, z = -911.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1050127, ban_excel_drop = true, area_id = 3 },
	{ config_id = 3008, monster_id = 28040104, pos = { x = 1821.708, y = 233.200, z = -907.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1050127, ban_excel_drop = true, area_id = 3 }
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
		monsters = { 3001, 3002, 3003, 3004, 3005, 3006, 3007, 3008 },
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