-- 基础信息
local base_info = {
	group_id = 133217351
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
		{ config_id = 351001, gadget_id = 70330081, pos = { x = -4624.857, y = 201.387, z = -4818.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 14 },
		{ config_id = 351002, gadget_id = 70330081, pos = { x = -4624.857, y = 203.179, z = -4818.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 14 },
		{ config_id = 351003, gadget_id = 70330081, pos = { x = -4624.857, y = 205.054, z = -4818.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 14 },
		{ config_id = 351004, gadget_id = 70330084, pos = { x = -4624.857, y = 201.387, z = -4818.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 14 },
		{ config_id = 351005, gadget_id = 70330085, pos = { x = -4624.857, y = 207.134, z = -4818.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 14 },
		{ config_id = 351006, gadget_id = 70211101, pos = { x = -4623.043, y = 200.301, z = -4823.671 }, rot = { x = 358.067, y = 333.920, z = 352.032 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 351008, gadget_id = 70330084, pos = { x = -4622.617, y = 201.325, z = -4818.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 351009, gadget_id = 70330081, pos = { x = -4622.617, y = 201.325, z = -4818.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 14 },
		{ config_id = 351010, gadget_id = 70330084, pos = { x = -4627.383, y = 201.102, z = -4818.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 351011, gadget_id = 70330081, pos = { x = -4627.383, y = 201.102, z = -4818.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 14 },
		{ config_id = 351012, gadget_id = 70500000, pos = { x = -4620.060, y = 199.763, z = -4826.155 }, rot = { x = 0.000, y = 20.544, z = 0.000 }, level = 30, point_type = 2040, area_id = 14 },
		{ config_id = 351013, gadget_id = 70500000, pos = { x = -4615.533, y = 201.931, z = -4828.353 }, rot = { x = 0.000, y = 329.982, z = 0.000 }, level = 30, point_type = 2040, area_id = 14 },
		{ config_id = 351014, gadget_id = 70500000, pos = { x = -4638.556, y = 206.933, z = -4826.325 }, rot = { x = 0.000, y = 190.508, z = 0.000 }, level = 30, point_type = 2040, area_id = 14 },
		{ config_id = 351015, gadget_id = 70500000, pos = { x = -4635.066, y = 204.425, z = -4823.219 }, rot = { x = 0.000, y = 262.822, z = 0.000 }, level = 30, point_type = 2040, area_id = 14 },
		{ config_id = 351016, gadget_id = 70500000, pos = { x = -4623.462, y = 202.993, z = -4814.502 }, rot = { x = 0.000, y = 323.572, z = 0.000 }, level = 30, point_type = 2040, area_id = 14 },
		{ config_id = 351017, gadget_id = 70500000, pos = { x = -4625.831, y = 201.387, z = -4824.152 }, rot = { x = 0.000, y = 49.266, z = 0.000 }, level = 30, point_type = 2040, area_id = 14 }
	},
	triggers = {
		{ config_id = 1351007, name = "VARIABLE_CHANGE_351007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_351007", action = "" }
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
	},
	{
		-- suite_id = 2,
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