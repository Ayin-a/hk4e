-- 基础信息
local base_info = {
	group_id = 133304551
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 551001, gadget_id = 70230113, pos = { x = -1359.952, y = 195.115, z = 2917.438 }, rot = { x = 67.877, y = 167.045, z = 353.294 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 551002, gadget_id = 70230113, pos = { x = -1360.087, y = 194.829, z = 2916.753 }, rot = { x = 4.228, y = 163.197, z = 3.594 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 551003, gadget_id = 70230113, pos = { x = -1359.952, y = 195.115, z = 2917.438 }, rot = { x = 67.877, y = 167.045, z = 353.294 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 551004, gadget_id = 70230113, pos = { x = -1359.952, y = 195.115, z = 2917.438 }, rot = { x = 67.877, y = 167.045, z = 353.294 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 551005, gadget_id = 70230113, pos = { x = -1360.087, y = 194.829, z = 2916.753 }, rot = { x = 4.228, y = 163.197, z = 3.594 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 551006, gadget_id = 70230113, pos = { x = -1359.838, y = 195.066, z = 2916.163 }, rot = { x = 67.364, y = 176.217, z = 3.552 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 551007, gadget_id = 70360001, pos = { x = -1361.688, y = 191.874, z = 2917.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
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
	suite = 4,
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
		gadgets = { 551001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 551002, 551003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 551004, 551005, 551006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 551007 },
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