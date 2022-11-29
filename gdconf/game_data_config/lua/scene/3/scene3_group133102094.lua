-- 基础信息
local base_info = {
	group_id = 133102094
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
	{ config_id = 94001, gadget_id = 70710266, pos = { x = 1790.454, y = 304.905, z = 596.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5, is_enable_interact = false },
	{ config_id = 94002, gadget_id = 70710266, pos = { x = 1812.138, y = 290.617, z = 606.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5, is_enable_interact = false },
	{ config_id = 94003, gadget_id = 70710266, pos = { x = 1784.343, y = 287.525, z = 666.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5, is_enable_interact = false },
	{ config_id = 94004, gadget_id = 70710266, pos = { x = 1757.453, y = 296.476, z = 685.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5, is_enable_interact = false },
	{ config_id = 94005, gadget_id = 70710266, pos = { x = 1670.738, y = 296.210, z = 698.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5, is_enable_interact = false },
	{ config_id = 94006, gadget_id = 70710266, pos = { x = 1798.237, y = 323.836, z = 650.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5, is_enable_interact = false },
	{ config_id = 94007, gadget_id = 70710266, pos = { x = 1793.129, y = 321.651, z = 537.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5, is_enable_interact = false },
	{ config_id = 94008, gadget_id = 70710266, pos = { x = 1748.161, y = 267.227, z = 722.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5, is_enable_interact = false },
	{ config_id = 94009, gadget_id = 70710266, pos = { x = 1723.313, y = 293.442, z = 501.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5, is_enable_interact = false },
	{ config_id = 94010, gadget_id = 70710266, pos = { x = 1790.043, y = 279.603, z = 694.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5, is_enable_interact = false }
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
		gadgets = { 94001, 94002, 94003, 94004, 94005, 94006, 94007, 94008, 94009, 94010 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================