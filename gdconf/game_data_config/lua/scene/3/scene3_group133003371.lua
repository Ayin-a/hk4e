-- 基础信息
local base_info = {
	group_id = 133003371
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
	{ config_id = 3692, gadget_id = 70310001, pos = { x = 2741.090, y = 260.420, z = -1378.450 }, rot = { x = 0.000, y = 319.851, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 3693, gadget_id = 70310001, pos = { x = 2830.231, y = 270.858, z = -1452.151 }, rot = { x = 0.000, y = 9.549, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 3694, gadget_id = 70310001, pos = { x = 2820.390, y = 271.030, z = -1443.021 }, rot = { x = 0.000, y = 309.280, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 3695, gadget_id = 70310001, pos = { x = 2738.758, y = 270.568, z = -1435.968 }, rot = { x = 0.000, y = 14.380, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 3696, gadget_id = 70310001, pos = { x = 2493.940, y = 263.398, z = -1555.808 }, rot = { x = 0.000, y = 101.601, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 3697, gadget_id = 70310001, pos = { x = 2319.339, y = 231.432, z = -1221.471 }, rot = { x = 0.000, y = 358.531, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 3698, gadget_id = 70310006, pos = { x = 2169.900, y = 207.669, z = -1090.180 }, rot = { x = 0.000, y = 149.346, z = 0.000 }, level = 2, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 3699, gadget_id = 70310001, pos = { x = 2420.472, y = 205.981, z = -1255.681 }, rot = { x = 0.000, y = 276.281, z = 0.000 }, level = 2, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 3700, gadget_id = 70310001, pos = { x = 2221.352, y = 217.458, z = -1521.447 }, rot = { x = 0.000, y = 227.381, z = 0.000 }, level = 5, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 3701, gadget_id = 70310001, pos = { x = 2494.744, y = 263.398, z = -1561.634 }, rot = { x = 0.000, y = 319.851, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 1 }
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
	rand_suite = true
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
		gadgets = { 3692, 3693, 3694, 3695, 3696, 3697, 3698, 3699, 3700, 3701 },
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