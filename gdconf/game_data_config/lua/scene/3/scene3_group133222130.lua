-- 基础信息
local base_info = {
	group_id = 133222130
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
	{ config_id = 130002, gadget_id = 70220014, pos = { x = -4879.766, y = 206.140, z = -4705.751 }, rot = { x = 0.000, y = 357.084, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 130015, gadget_id = 70220013, pos = { x = -4879.378, y = 206.047, z = -4710.823 }, rot = { x = 352.819, y = 319.487, z = 5.519 }, level = 30, area_id = 14 },
	{ config_id = 130018, gadget_id = 70220049, pos = { x = -4801.523, y = 206.833, z = -4715.191 }, rot = { x = 0.000, y = 136.338, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 130019, gadget_id = 70710246, pos = { x = -4885.686, y = 206.887, z = -4705.313 }, rot = { x = 68.997, y = 131.475, z = 73.242 }, level = 30, area_id = 14 },
	{ config_id = 130020, gadget_id = 70710247, pos = { x = -4885.771, y = 206.141, z = -4706.473 }, rot = { x = 0.000, y = 9.265, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 130022, gadget_id = 70220013, pos = { x = -4917.966, y = 212.208, z = -4685.311 }, rot = { x = 10.949, y = 322.088, z = 10.869 }, level = 30, area_id = 14 },
	{ config_id = 130023, gadget_id = 70220013, pos = { x = -4915.824, y = 212.779, z = -4686.414 }, rot = { x = 9.430, y = 279.477, z = 3.104 }, level = 30, area_id = 14 },
	{ config_id = 130024, gadget_id = 70220026, pos = { x = -4914.297, y = 213.009, z = -4687.369 }, rot = { x = 1.963, y = 339.093, z = 12.460 }, level = 30, area_id = 14 },
	{ config_id = 130026, gadget_id = 70220013, pos = { x = -4915.519, y = 214.418, z = -4681.645 }, rot = { x = 0.245, y = 327.828, z = 0.371 }, level = 30, area_id = 14 }
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
		{ config_id = 130001, gadget_id = 70330097, pos = { x = -4887.498, y = 206.095, z = -4689.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 130003, gadget_id = 70330064, pos = { x = -4905.584, y = 200.489, z = -4800.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, interact_id = 35, area_id = 14 },
		{ config_id = 130004, gadget_id = 70330093, pos = { x = -4954.538, y = 215.107, z = -4810.037 }, rot = { x = 359.679, y = 18.181, z = 357.149 }, level = 30, area_id = 14 },
		{ config_id = 130005, gadget_id = 70330093, pos = { x = -4956.642, y = 215.035, z = -4818.110 }, rot = { x = 359.679, y = 18.181, z = 357.149 }, level = 30, area_id = 14 },
		{ config_id = 130006, gadget_id = 70900380, pos = { x = -4961.618, y = 207.814, z = -4837.884 }, rot = { x = 0.000, y = 10.234, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 130007, gadget_id = 70900380, pos = { x = -4959.890, y = 213.504, z = -4830.757 }, rot = { x = 0.000, y = 10.234, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 130010, gadget_id = 70330093, pos = { x = -4952.392, y = 215.171, z = -4802.294 }, rot = { x = 359.679, y = 18.181, z = 357.149 }, level = 30, area_id = 14 },
		{ config_id = 130011, gadget_id = 70330093, pos = { x = -4950.431, y = 215.237, z = -4794.841 }, rot = { x = 359.679, y = 18.181, z = 357.149 }, level = 30, area_id = 14 },
		{ config_id = 130012, gadget_id = 70330093, pos = { x = -4948.618, y = 215.318, z = -4787.008 }, rot = { x = 359.679, y = 18.181, z = 357.149 }, level = 30, area_id = 14 },
		{ config_id = 130014, gadget_id = 70220014, pos = { x = -4880.853, y = 206.107, z = -4707.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 130016, gadget_id = 70220013, pos = { x = -4879.937, y = 206.197, z = -4706.286 }, rot = { x = 359.985, y = 330.732, z = 0.146 }, level = 30, area_id = 14 },
		{ config_id = 130017, gadget_id = 70220013, pos = { x = -4879.719, y = 206.141, z = -4706.010 }, rot = { x = 0.000, y = 279.800, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 130021, gadget_id = 70710246, pos = { x = -4885.216, y = 206.143, z = -4706.332 }, rot = { x = 0.006, y = 206.625, z = 359.857 }, level = 30, area_id = 14 },
		{ config_id = 130025, gadget_id = 70220013, pos = { x = -4910.511, y = 214.532, z = -4674.835 }, rot = { x = 0.000, y = 279.493, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 130027, gadget_id = 70220013, pos = { x = -4913.923, y = 213.069, z = -4687.839 }, rot = { x = 5.650, y = 321.663, z = 11.293 }, level = 30, area_id = 14 }
	},
	triggers = {
		{ config_id = 1130008, name = "GADGET_STATE_CHANGE_130008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_130008", action = "action_EVENT_GADGET_STATE_CHANGE_130008", trigger_count = 0 },
		{ config_id = 1130009, name = "GADGET_STATE_CHANGE_130009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_130009", action = "action_EVENT_GADGET_STATE_CHANGE_130009", trigger_count = 0 },
		{ config_id = 1130013, name = "GROUP_LOAD_130013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_130013" }
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
		gadgets = { 130002, 130015, 130018, 130019, 130020, 130022, 130023, 130024, 130026 },
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

require "V2_0/ElectricCore"