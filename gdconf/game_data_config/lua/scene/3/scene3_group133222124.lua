-- 基础信息
local base_info = {
	group_id = 133222124
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 124004, monster_id = 21011001, pos = { x = -4814.697, y = 210.221, z = -4767.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", area_id = 14 },
	{ config_id = 124005, monster_id = 21010901, pos = { x = -4818.960, y = 208.905, z = -4783.876 }, rot = { x = 0.000, y = 282.640, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", area_id = 14 },
	{ config_id = 124018, monster_id = 21020101, pos = { x = -4809.495, y = 207.714, z = -4798.665 }, rot = { x = 358.402, y = 313.590, z = 342.829 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 124002, gadget_id = 70220026, pos = { x = -4809.579, y = 211.957, z = -4779.273 }, rot = { x = 1.660, y = 17.603, z = 0.141 }, level = 30, area_id = 14 },
	{ config_id = 124006, gadget_id = 70310001, pos = { x = -4806.568, y = 212.138, z = -4731.135 }, rot = { x = 0.000, y = 346.209, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 124007, gadget_id = 70310001, pos = { x = -4810.507, y = 215.708, z = -4743.286 }, rot = { x = 0.000, y = 346.209, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 124008, gadget_id = 70310001, pos = { x = -4821.237, y = 212.293, z = -4748.727 }, rot = { x = 0.000, y = 346.209, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 124010, gadget_id = 70220013, pos = { x = -4809.001, y = 207.933, z = -4787.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 124011, gadget_id = 70220014, pos = { x = -4810.598, y = 207.931, z = -4786.991 }, rot = { x = 359.906, y = 0.000, z = 0.318 }, level = 30, area_id = 14 },
	{ config_id = 124020, gadget_id = 70310001, pos = { x = -4817.603, y = 209.520, z = -4781.071 }, rot = { x = 0.000, y = 19.018, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 124022, gadget_id = 70220026, pos = { x = -4821.569, y = 212.293, z = -4750.833 }, rot = { x = 0.372, y = 89.844, z = 1.624 }, level = 30, area_id = 14 },
	{ config_id = 124023, gadget_id = 70310001, pos = { x = -4819.132, y = 208.552, z = -4786.371 }, rot = { x = 0.000, y = 39.332, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 124025, gadget_id = 70310001, pos = { x = -4850.892, y = 204.818, z = -4753.385 }, rot = { x = 0.000, y = 30.050, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 124027, gadget_id = 70220026, pos = { x = -4846.905, y = 204.818, z = -4753.166 }, rot = { x = 1.638, y = 2.213, z = 359.695 }, level = 30, area_id = 14 },
	{ config_id = 124028, gadget_id = 70310004, pos = { x = -4811.385, y = 207.582, z = -4796.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 124029, gadget_id = 70310001, pos = { x = -4857.542, y = 206.240, z = -4776.451 }, rot = { x = 0.000, y = 30.050, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 14 }
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
		{ config_id = 124019, monster_id = 21011001, pos = { x = -4847.095, y = 204.818, z = -4753.157 }, rot = { x = 0.000, y = 113.659, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", area_id = 14 }
	},
	gadgets = {
		{ config_id = 124001, gadget_id = 70220014, pos = { x = -4809.011, y = 211.953, z = -4777.959 }, rot = { x = 5.335, y = 345.521, z = 354.045 }, level = 30, area_id = 14 },
		{ config_id = 124003, gadget_id = 70310001, pos = { x = -4795.499, y = 208.721, z = -4736.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
		{ config_id = 124009, gadget_id = 70220013, pos = { x = -4808.778, y = 207.933, z = -4787.560 }, rot = { x = 0.000, y = 311.552, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 124012, gadget_id = 70710246, pos = { x = -4811.507, y = 207.925, z = -4787.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 124013, gadget_id = 70710246, pos = { x = -4808.177, y = 207.933, z = -4791.672 }, rot = { x = 0.000, y = 106.584, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 124014, gadget_id = 70710246, pos = { x = -4808.840, y = 209.570, z = -4787.948 }, rot = { x = 355.314, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 124015, gadget_id = 70710247, pos = { x = -4812.011, y = 207.923, z = -4787.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 124016, gadget_id = 70710247, pos = { x = -4807.799, y = 207.933, z = -4788.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 124017, gadget_id = 70710247, pos = { x = -4807.953, y = 209.553, z = -4790.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 124021, gadget_id = 70220026, pos = { x = -4821.781, y = 212.293, z = -4751.296 }, rot = { x = 284.752, y = 16.559, z = 0.488 }, level = 30, area_id = 14 },
		{ config_id = 124024, gadget_id = 70310001, pos = { x = -4846.708, y = 204.818, z = -4755.587 }, rot = { x = 0.000, y = 5.489, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
		{ config_id = 124026, gadget_id = 70220026, pos = { x = -4846.824, y = 204.816, z = -4754.758 }, rot = { x = 1.661, y = 17.034, z = 0.124 }, level = 30, area_id = 14 }
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
		monsters = { 124004, 124005, 124018 },
		gadgets = { 124002, 124006, 124007, 124008, 124010, 124011, 124020, 124022, 124023, 124025, 124027, 124028, 124029 },
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