-- 基础信息
local base_info = {
	group_id = 111101006
}

-- Trigger变量
local defs = {
	interactOptionID = 24,
	gadget_fireTorch = 6002,
	gadget_fireBase1 = 6001,
	gadget_fire1 = 6003,
	gadget_fireBase2 = 6005,
	gadget_fire2 = 6007,
	gadget_fireBase3 = 0,
	gadget_fire3 = 0,
	gadget_fireBase4 = 0,
	gadget_fire4 = 0
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
	{ config_id = 6001, gadget_id = 70330279, pos = { x = 2984.001, y = 267.937, z = -1319.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 6002, gadget_id = 70330278, pos = { x = 2976.506, y = 266.311, z = -1327.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	-- 1号火种
	{ config_id = 6003, gadget_id = 70330257, pos = { x = 2984.742, y = 268.365, z = -1315.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 110100127 },
	{ config_id = 6004, gadget_id = 70330256, pos = { x = 2972.360, y = 266.615, z = -1334.636 }, rot = { x = 0.000, y = 76.634, z = 0.000 }, level = 1 },
	{ config_id = 6005, gadget_id = 70330279, pos = { x = 2990.066, y = 267.372, z = -1329.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 2号火种
	{ config_id = 6007, gadget_id = 70330257, pos = { x = 2991.232, y = 267.372, z = -1328.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 110100129 }
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
		gadgets = { 6001, 6002, 6004, 6005 },
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

require "BlackBoxPlay/DesertEnergySpark"