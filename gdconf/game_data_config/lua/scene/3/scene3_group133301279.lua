-- 基础信息
local base_info = {
	group_id = 133301279
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 低视野，低广播
	{ config_id = 279022, monster_id = 25210303, pos = { x = -1056.833, y = 341.925, z = 3997.165 }, rot = { x = 0.000, y = 226.454, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, area_id = 23 },
	-- 低视野，低广播
	{ config_id = 279023, monster_id = 25210302, pos = { x = -1070.590, y = 342.020, z = 4013.710 }, rot = { x = 0.000, y = 301.607, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, area_id = 23 },
	{ config_id = 279026, monster_id = 25210201, pos = { x = -1051.262, y = 347.588, z = 4034.547 }, rot = { x = 0.000, y = 296.480, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, area_id = 23 },
	-- 低视野，低广播
	{ config_id = 279029, monster_id = 25210202, pos = { x = -1070.719, y = 337.679, z = 3971.880 }, rot = { x = 0.000, y = 320.362, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, pose_id = 9006, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 279001, gadget_id = 70310479, pos = { x = -1053.346, y = 347.830, z = 4018.664 }, rot = { x = 2.007, y = 357.018, z = 0.292 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 279003, gadget_id = 70310479, pos = { x = -1050.018, y = 347.830, z = 4022.441 }, rot = { x = 2.007, y = 357.018, z = 0.292 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 279020, gadget_id = 70220052, pos = { x = -1097.828, y = 346.473, z = 4000.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 279021, gadget_id = 70220052, pos = { x = -1095.347, y = 346.473, z = 4001.963 }, rot = { x = 0.000, y = 103.510, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 279031, gadget_id = 70310479, pos = { x = -1053.924, y = 342.131, z = 3998.196 }, rot = { x = 2.007, y = 357.018, z = 0.292 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 279032, gadget_id = 70310479, pos = { x = -1059.874, y = 341.822, z = 4003.118 }, rot = { x = 0.000, y = 357.018, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 279033, gadget_id = 70310479, pos = { x = -1089.205, y = 340.912, z = 3996.932 }, rot = { x = 0.787, y = 359.566, z = 0.591 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 279034, gadget_id = 70310479, pos = { x = -1093.602, y = 340.870, z = 4006.376 }, rot = { x = 358.881, y = 305.910, z = 359.844 }, level = 30, state = GadgetState.GearStart, area_id = 23 }
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
	monsters = {
		{ config_id = 279002, monster_id = 25210302, pos = { x = -1060.323, y = 341.930, z = 3999.991 }, rot = { x = 0.000, y = 198.975, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, area_id = 23 },
		{ config_id = 279005, monster_id = 25210503, pos = { x = -1037.948, y = 352.677, z = 4020.912 }, rot = { x = 0.000, y = 35.117, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, pose_id = 9502, area_id = 23 },
		{ config_id = 279019, monster_id = 25210203, pos = { x = -1090.939, y = 346.472, z = 3996.583 }, rot = { x = 0.000, y = 113.812, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, pose_id = 9001, area_id = 23 },
		{ config_id = 279024, monster_id = 25210301, pos = { x = -1075.705, y = 338.816, z = 3982.578 }, rot = { x = 0.000, y = 124.635, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, area_id = 23 },
		{ config_id = 279028, monster_id = 25210501, pos = { x = -1088.107, y = 341.005, z = 3980.066 }, rot = { x = 0.000, y = 75.897, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, pose_id = 9503, area_id = 23 },
		{ config_id = 279030, monster_id = 25210203, pos = { x = -1075.016, y = 327.378, z = 3953.745 }, rot = { x = 0.000, y = 230.855, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, pose_id = 9503, area_id = 23 }
	},
	triggers = {
		{ config_id = 1279004, name = "GROUP_LOAD_279004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_279004", action = "action_EVENT_GROUP_LOAD_279004" }
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
		monsters = { 279022, 279023, 279026, 279029 },
		gadgets = { 279001, 279003, 279020, 279021, 279031, 279032, 279033, 279034 },
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