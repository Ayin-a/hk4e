-- 基础信息
local base_info = {
	group_id = 133222196
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
	{ config_id = 196001, gadget_id = 70360001, pos = { x = -4981.484, y = 202.252, z = -4340.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 14 },
	{ config_id = 196002, gadget_id = 70500000, pos = { x = -4984.591, y = 203.345, z = -4337.030 }, rot = { x = 355.167, y = 13.078, z = 311.463 }, level = 1, point_type = 1008, persistent = true, area_id = 14 },
	{ config_id = 196004, gadget_id = 70500000, pos = { x = -4978.078, y = 202.113, z = -4344.436 }, rot = { x = 37.570, y = 38.514, z = 341.748 }, level = 1, point_type = 1008, persistent = true, area_id = 14 }
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
		gadgets = { 196001, 196002, 196004 },
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