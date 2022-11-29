-- 基础信息
local base_info = {
	group_id = 133302364
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 364001, monster_id = 25210303, pos = { x = -100.763, y = 257.282, z = 2885.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, area_id = 20 },
	{ config_id = 364005, monster_id = 25210403, pos = { x = -67.202, y = 262.753, z = 2910.887 }, rot = { x = 0.000, y = 302.004, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9504, area_id = 20 },
	{ config_id = 364009, monster_id = 25210503, pos = { x = -73.240, y = 257.300, z = 2881.694 }, rot = { x = 0.000, y = 113.546, z = 0.000 }, level = 27, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9502, area_id = 20 },
	{ config_id = 364010, monster_id = 25210101, pos = { x = -59.968, y = 257.365, z = 2913.334 }, rot = { x = 0.000, y = 283.910, z = 0.000 }, level = 27, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9505, area_id = 20 },
	{ config_id = 364011, monster_id = 25210401, pos = { x = -91.419, y = 251.010, z = 2913.364 }, rot = { x = 0.000, y = 270.998, z = 0.000 }, level = 27, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9001, area_id = 20 },
	{ config_id = 364012, monster_id = 25210401, pos = { x = -94.448, y = 251.008, z = 2907.320 }, rot = { x = 0.000, y = 320.744, z = 0.000 }, level = 27, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9001, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 364002, gadget_id = 70220005, pos = { x = -67.185, y = 257.253, z = 2901.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 364013, gadget_id = 70310479, pos = { x = -89.641, y = 251.688, z = 2896.123 }, rot = { x = 0.000, y = 334.090, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 364014, gadget_id = 70310479, pos = { x = -93.028, y = 251.684, z = 2897.193 }, rot = { x = 0.000, y = 330.071, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 364015, gadget_id = 70310479, pos = { x = -68.956, y = 257.231, z = 2894.642 }, rot = { x = 0.000, y = 246.514, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 364016, gadget_id = 70310479, pos = { x = -101.902, y = 257.282, z = 2885.901 }, rot = { x = 0.000, y = 330.071, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 364018, gadget_id = 70220005, pos = { x = -68.868, y = 251.733, z = 2912.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 364019, gadget_id = 70220005, pos = { x = -68.584, y = 251.739, z = 2913.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 364020, gadget_id = 70220005, pos = { x = -66.330, y = 251.892, z = 2893.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 364021, gadget_id = 70220005, pos = { x = -79.823, y = 251.892, z = 2889.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 364022, gadget_id = 70220005, pos = { x = -78.633, y = 251.892, z = 2890.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 364023, gadget_id = 70220005, pos = { x = -94.735, y = 251.893, z = 2884.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 364024, gadget_id = 70220005, pos = { x = -95.613, y = 251.893, z = 2884.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 364025, gadget_id = 70220005, pos = { x = -93.893, y = 251.893, z = 2884.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 364032, gadget_id = 70220048, pos = { x = -91.060, y = 251.892, z = 2882.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 364033, gadget_id = 70220048, pos = { x = -97.824, y = 251.655, z = 2888.879 }, rot = { x = 0.000, y = 22.826, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 364034, gadget_id = 70220048, pos = { x = -66.529, y = 251.892, z = 2894.003 }, rot = { x = 0.000, y = 49.034, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 364035, gadget_id = 70220048, pos = { x = -90.372, y = 257.282, z = 2882.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 364036, gadget_id = 70220048, pos = { x = -59.021, y = 262.753, z = 2914.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	-- 引导钥匙的火盆可替换其他火源
	{ config_id = 364038, gadget_id = 70310479, pos = { x = -73.680, y = 257.221, z = 2896.419 }, rot = { x = 0.000, y = 61.520, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 364039, gadget_id = 70220048, pos = { x = -68.343, y = 257.258, z = 2899.632 }, rot = { x = 0.423, y = 34.725, z = 359.390 }, level = 27, area_id = 20 }
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
		{ config_id = 364003, monster_id = 25210301, pos = { x = -88.236, y = 251.160, z = 2908.991 }, rot = { x = 0.000, y = 113.546, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9007, area_id = 20 },
		{ config_id = 364004, monster_id = 25210501, pos = { x = -73.598, y = 251.893, z = 2902.538 }, rot = { x = 0.000, y = 304.769, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9504, area_id = 20 },
		{ config_id = 364007, monster_id = 25210303, pos = { x = -89.792, y = 251.160, z = 2903.669 }, rot = { x = 0.000, y = 113.546, z = 0.000 }, level = 27, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9007, area_id = 20 }
	},
	triggers = {
		{ config_id = 1364006, name = "GROUP_LOAD_364006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_364006", action = "action_EVENT_GROUP_LOAD_364006" }
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
		monsters = { 364001, 364005, 364009, 364010, 364011, 364012 },
		gadgets = { 364002, 364013, 364014, 364015, 364016, 364018, 364019, 364020, 364021, 364022, 364023, 364024, 364025, 364032, 364033, 364034, 364035, 364036, 364038, 364039 },
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