-- 基础信息
local base_info = {
	group_id = 133213523
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
	{ config_id = 523001, gadget_id = 70500000, pos = { x = -3311.977, y = 215.818, z = -3424.209 }, rot = { x = 0.000, y = 325.570, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 12 },
	{ config_id = 523002, gadget_id = 70500000, pos = { x = -3312.093, y = 215.913, z = -3425.677 }, rot = { x = 6.933, y = 139.959, z = 355.449 }, level = 1, point_type = 1008, persistent = true, area_id = 12 },
	{ config_id = 523003, gadget_id = 70500000, pos = { x = -3311.078, y = 215.174, z = -3417.027 }, rot = { x = 0.000, y = 263.956, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 12 },
	{ config_id = 523004, gadget_id = 70500000, pos = { x = -3316.512, y = 214.793, z = -3414.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 12 },
	{ config_id = 523005, gadget_id = 70360001, pos = { x = -3312.188, y = 216.683, z = -3425.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 在suite3内添加魔晶矿,
		monsters = { },
		gadgets = { 523001, 523002, 523003, 523004, 523005 },
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

require "V2_0/OreBlossomGroup"