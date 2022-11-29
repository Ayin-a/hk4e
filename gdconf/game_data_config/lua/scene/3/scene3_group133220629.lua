-- 基础信息
local base_info = {
	group_id = 133220629
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
	{ config_id = 629001, gadget_id = 70500000, pos = { x = -2911.776, y = 203.701, z = -4210.312 }, rot = { x = 0.000, y = 320.277, z = 22.890 }, level = 1, point_type = 1005, persistent = true, area_id = 11 },
	{ config_id = 629002, gadget_id = 70500000, pos = { x = -2903.145, y = 203.633, z = -4212.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 11 },
	{ config_id = 629003, gadget_id = 70500000, pos = { x = -2905.895, y = 203.758, z = -4209.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 11 },
	{ config_id = 629004, gadget_id = 70500000, pos = { x = -2908.863, y = 204.359, z = -4211.564 }, rot = { x = 0.000, y = 262.431, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 11 },
	{ config_id = 629005, gadget_id = 70360001, pos = { x = -2902.972, y = 204.100, z = -4212.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 }
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
		gadgets = { 629001, 629002, 629003, 629004, 629005 },
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