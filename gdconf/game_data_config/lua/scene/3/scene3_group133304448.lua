-- 基础信息
local base_info = {
	group_id = 133304448
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
	{ config_id = 448001, gadget_id = 70230112, pos = { x = -1444.322, y = 239.912, z = 2985.589 }, rot = { x = 323.867, y = 1.278, z = 41.159 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 448002, gadget_id = 70230112, pos = { x = -1444.546, y = 239.341, z = 2984.313 }, rot = { x = 3.089, y = 235.395, z = 145.007 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 448003, gadget_id = 70230112, pos = { x = -1443.649, y = 238.729, z = 2985.092 }, rot = { x = 79.566, y = 66.720, z = 32.836 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 448004, gadget_id = 70230112, pos = { x = -1425.272, y = 234.873, z = 2956.397 }, rot = { x = 15.158, y = 253.567, z = 1.163 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 448005, gadget_id = 70230112, pos = { x = -1423.995, y = 235.201, z = 2956.948 }, rot = { x = 334.227, y = 73.805, z = 178.754 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 448006, gadget_id = 70230112, pos = { x = -1424.544, y = 234.129, z = 2957.072 }, rot = { x = 65.875, y = 70.756, z = 177.253 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 448007, gadget_id = 70230112, pos = { x = -1424.726, y = 235.893, z = 2956.142 }, rot = { x = 297.692, y = 251.123, z = 2.416 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 448008, gadget_id = 70230112, pos = { x = -1452.900, y = 235.949, z = 2945.613 }, rot = { x = 0.000, y = 251.875, z = 2.307 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 448009, gadget_id = 70230112, pos = { x = -1451.227, y = 235.405, z = 2945.597 }, rot = { x = 27.213, y = 113.025, z = 186.340 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 448010, gadget_id = 70230112, pos = { x = -1475.748, y = 234.865, z = 2960.150 }, rot = { x = 8.135, y = 34.816, z = 354.786 }, level = 30, state = GadgetState.GearStart, area_id = 21 }
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
		gadgets = { 448001, 448002, 448003, 448004, 448005, 448006, 448007, 448008, 448009, 448010 },
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