-- 基础信息
local base_info = {
	group_id = 133222129
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 129002, monster_id = 20060301, pos = { x = -4995.504, y = 200.145, z = -4648.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 129003, monster_id = 20060301, pos = { x = -4994.337, y = 200.825, z = -4656.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 129005, monster_id = 20060101, pos = { x = -5003.280, y = 199.744, z = -4654.229 }, rot = { x = 0.000, y = 60.138, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 129007, monster_id = 20060101, pos = { x = -4969.989, y = 203.487, z = -4638.652 }, rot = { x = 0.000, y = 193.268, z = 0.000 }, level = 30, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 14 },
	{ config_id = 129018, monster_id = 21010201, pos = { x = -4970.396, y = 201.845, z = -4646.100 }, rot = { x = 0.000, y = 69.128, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9003, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 129006, gadget_id = 70300087, pos = { x = -4969.897, y = 202.940, z = -4638.264 }, rot = { x = 0.000, y = 334.362, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 129009, gadget_id = 70220013, pos = { x = -4976.231, y = 202.015, z = -4639.120 }, rot = { x = 357.364, y = 359.910, z = 3.913 }, level = 30, area_id = 14 },
	{ config_id = 129010, gadget_id = 70220014, pos = { x = -4964.840, y = 202.426, z = -4642.118 }, rot = { x = 0.880, y = 0.484, z = 1.797 }, level = 30, area_id = 14 },
	{ config_id = 129012, gadget_id = 70220014, pos = { x = -4975.375, y = 202.756, z = -4634.643 }, rot = { x = 356.011, y = 359.959, z = 1.172 }, level = 30, area_id = 14 },
	{ config_id = 129013, gadget_id = 70220014, pos = { x = -4974.865, y = 202.648, z = -4635.990 }, rot = { x = 354.057, y = 359.962, z = 0.729 }, level = 30, area_id = 14 },
	{ config_id = 129015, gadget_id = 70220014, pos = { x = -4963.761, y = 202.408, z = -4640.306 }, rot = { x = 2.652, y = 0.206, z = 8.881 }, level = 30, area_id = 14 },
	{ config_id = 129016, gadget_id = 70220014, pos = { x = -4973.458, y = 202.907, z = -4633.456 }, rot = { x = 354.577, y = 0.149, z = 356.865 }, level = 30, area_id = 14 },
	{ config_id = 129019, gadget_id = 70310009, pos = { x = -4968.480, y = 201.996, z = -4645.378 }, rot = { x = 0.000, y = 67.669, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 129020, gadget_id = 70211001, pos = { x = -4968.641, y = 202.889, z = -4635.357 }, rot = { x = 0.000, y = 197.246, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
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
		{ config_id = 129001, monster_id = 21010101, pos = { x = -4984.197, y = 199.858, z = -4671.833 }, rot = { x = 0.000, y = 232.570, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 14 },
		{ config_id = 129004, monster_id = 21010101, pos = { x = -4972.246, y = 201.159, z = -4653.099 }, rot = { x = 0.000, y = 60.138, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 14 },
		{ config_id = 129008, monster_id = 21010101, pos = { x = -4968.048, y = 202.942, z = -4639.353 }, rot = { x = 0.000, y = 287.653, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, area_id = 14 }
	},
	gadgets = {
		{ config_id = 129011, gadget_id = 70220014, pos = { x = -4969.658, y = 202.976, z = -4633.167 }, rot = { x = 358.360, y = 0.185, z = 0.544 }, level = 30, area_id = 14 },
		{ config_id = 129014, gadget_id = 70220014, pos = { x = -4972.423, y = 202.960, z = -4632.098 }, rot = { x = 349.330, y = 359.630, z = 352.199 }, level = 30, area_id = 14 },
		{ config_id = 129017, gadget_id = 70220014, pos = { x = -4964.729, y = 202.943, z = -4637.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
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
		monsters = { 129002, 129003, 129005, 129007, 129018 },
		gadgets = { 129006, 129009, 129010, 129012, 129013, 129015, 129016, 129019, 129020 },
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