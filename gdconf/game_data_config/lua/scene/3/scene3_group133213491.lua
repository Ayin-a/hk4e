-- 基础信息
local base_info = {
	group_id = 133213491
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
	{ config_id = 491001, gadget_id = 70500000, pos = { x = -3937.288, y = 202.482, z = -3309.454 }, rot = { x = 0.000, y = 224.402, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 12 },
	{ config_id = 491002, gadget_id = 70500000, pos = { x = -3943.215, y = 201.679, z = -3308.350 }, rot = { x = 0.000, y = 282.141, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 12 },
	{ config_id = 491003, gadget_id = 70500000, pos = { x = -3941.139, y = 202.635, z = -3305.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 12 },
	{ config_id = 491004, gadget_id = 70500000, pos = { x = -3940.577, y = 202.107, z = -3307.640 }, rot = { x = 0.000, y = 312.739, z = 18.081 }, level = 1, point_type = 1008, persistent = true, area_id = 12 },
	{ config_id = 491005, gadget_id = 70360001, pos = { x = -3941.156, y = 203.468, z = -3305.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 }
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
		gadgets = { 491001, 491002, 491003, 491004, 491005 },
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