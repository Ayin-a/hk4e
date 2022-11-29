-- 基础信息
local base_info = {
	group_id = 220119012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12014, monster_id = 25080201, pos = { x = 33.891, y = -10.841, z = 19.103 }, rot = { x = 0.000, y = 179.386, z = 0.000 }, level = 1, pose_id = 1004 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 12001, gadget_id = 70220070, pos = { x = 24.050, y = -15.870, z = 48.077 }, rot = { x = 0.000, y = 198.690, z = 0.000 }, level = 1 },
	{ config_id = 12002, gadget_id = 70220070, pos = { x = 26.267, y = -15.870, z = 48.041 }, rot = { x = 0.000, y = 165.429, z = 0.000 }, level = 1 },
	{ config_id = 12003, gadget_id = 70220070, pos = { x = 24.873, y = -15.870, z = 35.261 }, rot = { x = 0.000, y = 344.034, z = 0.000 }, level = 1 },
	{ config_id = 12004, gadget_id = 70220070, pos = { x = 27.090, y = -15.870, z = 35.279 }, rot = { x = 0.000, y = 17.294, z = 0.000 }, level = 1 },
	{ config_id = 12007, gadget_id = 70900393, pos = { x = 49.644, y = -10.708, z = 28.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 12008, gadget_id = 70900393, pos = { x = 49.797, y = -10.695, z = 22.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 12009, gadget_id = 70220071, pos = { x = 51.547, y = -11.190, z = 9.236 }, rot = { x = 0.000, y = 275.266, z = 0.000 }, level = 1 },
	{ config_id = 12010, gadget_id = 70220071, pos = { x = 51.349, y = -11.190, z = 7.016 }, rot = { x = 0.000, y = 275.926, z = 0.000 }, level = 1 },
	{ config_id = 12011, gadget_id = 70220071, pos = { x = 51.395, y = -11.190, z = 4.774 }, rot = { x = 0.000, y = 260.846, z = 0.000 }, level = 1 },
	{ config_id = 12012, gadget_id = 70220071, pos = { x = 26.197, y = -10.962, z = 14.167 }, rot = { x = 0.000, y = 98.647, z = 0.000 }, level = 1 },
	{ config_id = 12013, gadget_id = 70220071, pos = { x = 26.257, y = -10.962, z = 16.409 }, rot = { x = 0.000, y = 83.567, z = 0.000 }, level = 1 },
	{ config_id = 12015, gadget_id = 70220070, pos = { x = -6.001, y = -10.580, z = 10.170 }, rot = { x = 0.000, y = 197.680, z = 0.000 }, level = 1 },
	{ config_id = 12016, gadget_id = 70220070, pos = { x = -3.804, y = -10.573, z = 10.145 }, rot = { x = 0.000, y = 162.580, z = 0.000 }, level = 1 },
	{ config_id = 12017, gadget_id = 70900393, pos = { x = -30.699, y = -10.293, z = -17.211 }, rot = { x = 0.000, y = 93.156, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 12018, gadget_id = 70900393, pos = { x = -30.678, y = -10.317, z = -10.645 }, rot = { x = 0.000, y = 93.156, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 12019, gadget_id = 70220070, pos = { x = -25.136, y = -10.761, z = -15.893 }, rot = { x = 0.000, y = 101.685, z = 0.000 }, level = 1 },
	{ config_id = 12020, gadget_id = 70220070, pos = { x = -24.913, y = -10.744, z = -13.696 }, rot = { x = 0.000, y = 90.489, z = 0.000 }, level = 1 },
	{ config_id = 12021, gadget_id = 70220070, pos = { x = -24.903, y = -10.761, z = -11.454 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	{ config_id = 12022, gadget_id = 70220070, pos = { x = 34.728, y = 0.461, z = -44.011 }, rot = { x = 0.000, y = 282.159, z = 0.000 }, level = 1 },
	{ config_id = 12023, gadget_id = 70220070, pos = { x = 34.669, y = 0.440, z = -46.240 }, rot = { x = 0.000, y = 262.311, z = 0.000 }, level = 1 },
	{ config_id = 12024, gadget_id = 70211101, pos = { x = 57.809, y = 0.166, z = 12.660 }, rot = { x = 0.000, y = 177.807, z = 0.000 }, level = 1, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true },
	{ config_id = 12025, gadget_id = 70211101, pos = { x = -2.294, y = -0.057, z = 10.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true },
	{ config_id = 12026, gadget_id = 70211101, pos = { x = 42.868, y = 0.440, z = -46.219 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true },
	{ config_id = 12027, gadget_id = 70211011, pos = { x = 57.719, y = 9.359, z = -24.321 }, rot = { x = 0.000, y = 270.069, z = 0.000 }, level = 1, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true },
	{ config_id = 12028, gadget_id = 70900393, pos = { x = 11.544, y = -0.971, z = -9.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 12029, gadget_id = 70900393, pos = { x = 11.731, y = -0.984, z = -17.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 12030, gadget_id = 70211001, pos = { x = -23.414, y = 1.580, z = -0.429 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true }
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
		{ config_id = 12005, gadget_id = 70900393, pos = { x = 32.644, y = -15.875, z = 42.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
		{ config_id = 12006, gadget_id = 70900393, pos = { x = 32.524, y = -15.870, z = 33.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
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
		monsters = { 12014 },
		gadgets = { 12001, 12002, 12003, 12004, 12007, 12008, 12009, 12010, 12011, 12012, 12013, 12015, 12016, 12017, 12018, 12019, 12020, 12021, 12022, 12023, 12024, 12025, 12026, 12027, 12028, 12029, 12030 },
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