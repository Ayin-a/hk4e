-- 基础信息
local base_info = {
	group_id = 133222198
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
	{ config_id = 198001, gadget_id = 70360001, pos = { x = -4309.002, y = 205.927, z = -3868.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 14 },
	{ config_id = 198002, gadget_id = 70500000, pos = { x = -4308.406, y = 205.063, z = -3858.500 }, rot = { x = 0.000, y = 345.363, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 14 },
	{ config_id = 198004, gadget_id = 70500000, pos = { x = -4310.332, y = 203.200, z = -3867.618 }, rot = { x = 5.026, y = 345.035, z = 352.543 }, level = 1, point_type = 1008, persistent = true, area_id = 14 }
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
		gadgets = { 198001, 198002, 198004 },
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