-- 基础信息
local base_info = {
	group_id = 133212505
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
	{ config_id = 505001, gadget_id = 70500000, pos = { x = -4017.741, y = 209.747, z = -2504.077 }, rot = { x = 0.000, y = 277.018, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 13 },
	{ config_id = 505002, gadget_id = 70500000, pos = { x = -4023.298, y = 209.647, z = -2498.258 }, rot = { x = 347.670, y = 357.216, z = 25.361 }, level = 1, point_type = 1008, persistent = true, area_id = 13 },
	{ config_id = 505003, gadget_id = 70500000, pos = { x = -4027.018, y = 210.955, z = -2490.688 }, rot = { x = 33.521, y = 216.731, z = 357.537 }, level = 1, point_type = 1005, persistent = true, area_id = 13 },
	{ config_id = 505004, gadget_id = 70500000, pos = { x = -4019.094, y = 212.173, z = -2498.685 }, rot = { x = 17.923, y = 313.257, z = 48.406 }, level = 1, point_type = 1008, persistent = true, area_id = 13 },
	{ config_id = 505005, gadget_id = 70360001, pos = { x = -4027.425, y = 210.494, z = -2491.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 13 }
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
		gadgets = { 505001, 505002, 505003, 505004, 505005 },
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