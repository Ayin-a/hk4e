-- 基础信息
local base_info = {
	group_id = 220102005
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
	{ config_id = 5001, gadget_id = 70360021, pos = { x = -76.271, y = 5.850, z = 32.178 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 35, state = GadgetState.GearStart, route_id = 14 },
	{ config_id = 5002, gadget_id = 70360021, pos = { x = -79.117, y = 5.850, z = 29.652 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 35, state = GadgetState.GearStart, route_id = 15 },
	{ config_id = 5003, gadget_id = 70360021, pos = { x = -71.047, y = 5.850, z = 13.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, state = GadgetState.GearStart },
	{ config_id = 5004, gadget_id = 70360021, pos = { x = -84.013, y = 9.296, z = 14.845 }, rot = { x = 15.000, y = 90.000, z = 0.000 }, level = 35, state = GadgetState.GearStart, route_id = 16 },
	{ config_id = 5005, gadget_id = 70360021, pos = { x = -75.481, y = 5.850, z = 24.267 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 35, state = GadgetState.GearStart },
	{ config_id = 5006, gadget_id = 70220013, pos = { x = -94.364, y = 6.225, z = 35.678 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1 },
	{ config_id = 5007, gadget_id = 70220013, pos = { x = -96.367, y = 6.218, z = 36.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5008, gadget_id = 70220026, pos = { x = -92.971, y = 6.231, z = 35.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5009, gadget_id = 70220013, pos = { x = -61.789, y = 4.357, z = 10.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5010, gadget_id = 70220013, pos = { x = -63.096, y = 4.343, z = 8.973 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 5011, gadget_id = 70220013, pos = { x = -85.202, y = 4.334, z = 10.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5012, gadget_id = 70211101, pos = { x = -60.666, y = 4.331, z = 8.730 }, rot = { x = 0.000, y = 305.563, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	{ config_id = 5013, gadget_id = 70220026, pos = { x = -84.212, y = 4.338, z = 8.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5014, gadget_id = 70220014, pos = { x = -66.059, y = 4.348, z = 35.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5015, gadget_id = 70360021, pos = { x = -76.279, y = 7.584, z = 26.838 }, rot = { x = 15.000, y = 270.000, z = 0.000 }, level = 35, state = GadgetState.GearStart },
	{ config_id = 5016, gadget_id = 70360021, pos = { x = -84.013, y = 9.296, z = 15.845 }, rot = { x = 15.000, y = 90.000, z = 0.000 }, level = 35, state = GadgetState.GearStart, route_id = 17 },
	{ config_id = 5017, gadget_id = 70220014, pos = { x = -66.693, y = 4.769, z = 35.638 }, rot = { x = 0.000, y = 30.000, z = 90.000 }, level = 1 },
	{ config_id = 5018, gadget_id = 70220026, pos = { x = -60.902, y = 4.372, z = 12.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 5001, 5002, 5003, 5004, 5005, 5006, 5007, 5008, 5009, 5010, 5011, 5012, 5013, 5014, 5015, 5016, 5017, 5018 },
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