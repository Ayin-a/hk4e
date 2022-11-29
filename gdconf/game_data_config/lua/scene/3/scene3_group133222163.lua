-- 基础信息
local base_info = {
	group_id = 133222163
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 163001, gadget_id = 70330105, pos = { x = -5197.997, y = 195.984, z = -4265.947 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
		{ config_id = 163002, gadget_id = 70330105, pos = { x = -5198.026, y = 208.066, z = -4347.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
		{ config_id = 163003, gadget_id = 70330064, pos = { x = -5149.763, y = 168.879, z = -4322.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, interact_id = 35, area_id = 14 },
		{ config_id = 163004, gadget_id = 70330064, pos = { x = -5253.792, y = 169.861, z = -4324.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, interact_id = 35, area_id = 14 },
		{ config_id = 163005, gadget_id = 70330105, pos = { x = -5261.598, y = 168.459, z = -4324.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true },
		{ config_id = 163006, gadget_id = 70330105, pos = { x = -5167.955, y = 235.491, z = -4345.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 }
	}
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================