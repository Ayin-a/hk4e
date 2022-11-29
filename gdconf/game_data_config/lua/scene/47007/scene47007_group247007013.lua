-- 基础信息
local base_info = {
	group_id = 247007013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 13021, monster_id = 21020201, pos = { x = 157.729, y = -0.582, z = 395.590 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, pose_id = 401 },
	{ config_id = 13022, monster_id = 21030601, pos = { x = 163.732, y = -0.582, z = 403.506 }, rot = { x = 0.000, y = 235.000, z = 0.000 }, level = 1, pose_id = 9012 },
	{ config_id = 13023, monster_id = 21010201, pos = { x = 164.745, y = -0.582, z = 397.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 9002 },
	{ config_id = 13024, monster_id = 21010101, pos = { x = 152.222, y = -0.582, z = 402.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 9015 },
	{ config_id = 13025, monster_id = 21010501, pos = { x = 160.059, y = -0.582, z = 404.449 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 13003, gadget_id = 70220013, pos = { x = 151.492, y = -0.582, z = 406.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13004, gadget_id = 70220013, pos = { x = 153.166, y = -0.582, z = 407.483 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13005, gadget_id = 70220026, pos = { x = 151.215, y = -0.582, z = 404.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13006, gadget_id = 70220026, pos = { x = 155.043, y = -0.582, z = 407.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13007, gadget_id = 70220014, pos = { x = 168.466, y = -0.582, z = 394.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13008, gadget_id = 70220014, pos = { x = 168.886, y = -0.582, z = 393.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13009, gadget_id = 70220014, pos = { x = 169.702, y = -0.582, z = 394.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13010, gadget_id = 70310004, pos = { x = 159.841, y = -0.582, z = 400.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13011, gadget_id = 70310001, pos = { x = 168.212, y = -0.582, z = 407.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 13012, gadget_id = 70310001, pos = { x = 151.482, y = -0.582, z = 391.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 13013, gadget_id = 70220025, pos = { x = 157.023, y = -0.513, z = 395.961 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13014, gadget_id = 70220025, pos = { x = 158.377, y = -0.513, z = 394.978 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13015, gadget_id = 70220025, pos = { x = 157.191, y = -0.513, z = 397.606 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13016, gadget_id = 70220025, pos = { x = 154.321, y = -0.513, z = 405.566 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13017, gadget_id = 70220025, pos = { x = 152.687, y = -0.513, z = 404.651 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13018, gadget_id = 70220025, pos = { x = 163.951, y = -0.513, z = 396.840 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13019, gadget_id = 70220025, pos = { x = 164.965, y = -0.513, z = 398.375 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13020, gadget_id = 70220025, pos = { x = 165.587, y = -0.513, z = 397.096 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13026, gadget_id = 70220025, pos = { x = 157.014, y = -0.534, z = 395.796 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13027, gadget_id = 70220025, pos = { x = 158.368, y = -0.534, z = 394.812 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13028, gadget_id = 70220025, pos = { x = 157.181, y = -0.534, z = 397.441 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13029, gadget_id = 70220025, pos = { x = 164.011, y = -0.545, z = 396.907 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13030, gadget_id = 70220025, pos = { x = 165.025, y = -0.545, z = 398.442 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13031, gadget_id = 70220025, pos = { x = 165.647, y = -0.545, z = 397.163 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13032, gadget_id = 70220025, pos = { x = 154.432, y = -0.550, z = 405.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13033, gadget_id = 70220025, pos = { x = 152.798, y = -0.550, z = 404.725 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 13034, gadget_id = 70310125, pos = { x = 159.986, y = 0.206, z = 419.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13035, gadget_id = 70310125, pos = { x = 140.131, y = 0.175, z = 399.980 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 13036, gadget_id = 70310125, pos = { x = 160.011, y = 0.206, z = 380.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 13037, gadget_id = 70310125, pos = { x = 179.847, y = 0.206, z = 400.019 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 13001, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = 160.039, y = -0.582, z = 399.985 } }
}

-- 触发器
triggers = {
	{ config_id = 1013001, name = "ENTER_REGION_13001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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