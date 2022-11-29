-- 基础信息
local base_info = {
	group_id = 133222197
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
	{ config_id = 197001, gadget_id = 70360001, pos = { x = -4412.508, y = 160.924, z = -3825.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 14 },
	{ config_id = 197002, gadget_id = 70500000, pos = { x = -4423.126, y = 162.653, z = -3825.236 }, rot = { x = 57.956, y = 267.611, z = 317.044 }, level = 1, point_type = 1008, persistent = true, area_id = 14 },
	{ config_id = 197004, gadget_id = 70500000, pos = { x = -4419.922, y = 162.205, z = -3826.868 }, rot = { x = 18.615, y = 357.025, z = 352.299 }, level = 1, point_type = 1008, persistent = true, area_id = 14 }
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
		gadgets = { 197001, 197002, 197004 },
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