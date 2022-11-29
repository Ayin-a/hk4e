-- 基础信息
local base_info = {
	group_id = 133210443
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
	{ config_id = 443001, gadget_id = 70500000, pos = { x = -3632.295, y = 191.887, z = -635.830 }, rot = { x = 351.843, y = 269.947, z = 16.498 }, level = 1, point_type = 1005, persistent = true, area_id = 17 },
	{ config_id = 443002, gadget_id = 70500000, pos = { x = -3632.827, y = 192.649, z = -632.337 }, rot = { x = 346.281, y = 288.067, z = 28.905 }, level = 1, point_type = 1008, persistent = true, area_id = 17 },
	{ config_id = 443003, gadget_id = 70500000, pos = { x = -3639.553, y = 192.627, z = -631.298 }, rot = { x = 347.869, y = 359.868, z = 1.240 }, level = 1, point_type = 1005, persistent = true, area_id = 17 },
	{ config_id = 443004, gadget_id = 70360001, pos = { x = -3635.587, y = 192.075, z = -634.901 }, rot = { x = 0.000, y = 230.013, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 443005, gadget_id = 70500000, pos = { x = -3627.067, y = 194.295, z = -631.515 }, rot = { x = 349.831, y = 89.486, z = 351.741 }, level = 1, point_type = 1008, persistent = true, area_id = 17 }
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
		gadgets = { 443001, 443002, 443003, 443004, 443005 },
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