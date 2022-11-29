-- 基础信息
local base_info = {
	group_id = 133104620
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
	{ config_id = 620001, gadget_id = 70310001, pos = { x = 351.636, y = 216.975, z = 265.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 620002, gadget_id = 70310001, pos = { x = 348.797, y = 217.016, z = 264.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 620003, gadget_id = 70310001, pos = { x = 373.141, y = 216.999, z = 186.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 620004, gadget_id = 70310001, pos = { x = 371.656, y = 216.919, z = 183.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 620005, gadget_id = 70310001, pos = { x = 295.726, y = 216.631, z = 111.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 620006, gadget_id = 70310001, pos = { x = 295.467, y = 216.733, z = 115.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 620007, gadget_id = 70310001, pos = { x = 282.503, y = 223.635, z = 228.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 620008, gadget_id = 70310001, pos = { x = 286.891, y = 223.635, z = 224.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 620009, gadget_id = 70310001, pos = { x = 306.282, y = 217.833, z = 165.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 620010, gadget_id = 70310001, pos = { x = 302.565, y = 217.872, z = 164.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 620011, gadget_id = 70310001, pos = { x = 184.951, y = 239.357, z = 96.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 620012, gadget_id = 70310001, pos = { x = 181.919, y = 239.592, z = 96.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 620013, gadget_id = 70310001, pos = { x = 177.678, y = 239.742, z = 81.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 620014, gadget_id = 70310001, pos = { x = 169.460, y = 239.379, z = 91.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 620015, gadget_id = 70310001, pos = { x = 168.872, y = 239.202, z = 105.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 7 }
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
		gadgets = { 620001, 620002, 620003, 620004, 620005, 620006, 620007, 620008, 620009, 620010, 620011, 620012, 620013, 620014, 620015 },
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