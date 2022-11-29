-- 基础信息
local base_info = {
	group_id = 133312063
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
	{ config_id = 63001, gadget_id = 70330396, pos = { x = -3194.790, y = 28.960, z = 4281.220 }, rot = { x = 1.844, y = 343.917, z = 358.902 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 63002, gadget_id = 70330396, pos = { x = -3180.533, y = 24.588, z = 4262.384 }, rot = { x = 1.844, y = 343.917, z = 358.902 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 63003, gadget_id = 70330396, pos = { x = -3199.000, y = 29.120, z = 4316.810 }, rot = { x = 1.844, y = 343.917, z = 358.902 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 63004, gadget_id = 70330396, pos = { x = -3146.123, y = 12.054, z = 4296.723 }, rot = { x = 1.844, y = 343.917, z = 358.902 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 63005, gadget_id = 70330396, pos = { x = -3165.610, y = 14.770, z = 4278.750 }, rot = { x = 1.844, y = 343.917, z = 358.902 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 63006, gadget_id = 70330396, pos = { x = -3087.154, y = 259.009, z = 4837.080 }, rot = { x = 0.000, y = 126.661, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 63007, gadget_id = 70330396, pos = { x = -3170.820, y = 252.597, z = 4827.086 }, rot = { x = 0.434, y = 94.521, z = 0.919 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 63008, gadget_id = 70330396, pos = { x = -3199.207, y = 259.287, z = 4815.345 }, rot = { x = 3.522, y = 180.788, z = 0.956 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 63009, gadget_id = 70330396, pos = { x = -3166.860, y = 256.370, z = 4773.240 }, rot = { x = 3.522, y = 180.788, z = 0.956 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 63010, gadget_id = 70330396, pos = { x = -3181.767, y = 255.539, z = 4781.597 }, rot = { x = 3.522, y = 180.788, z = 0.956 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 63011, gadget_id = 70330396, pos = { x = -3108.930, y = 288.830, z = 4724.490 }, rot = { x = 3.522, y = 180.788, z = 0.956 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 63012, gadget_id = 70330396, pos = { x = -3106.341, y = 260.537, z = 4882.500 }, rot = { x = 0.434, y = 164.772, z = 0.919 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 63013, gadget_id = 70330396, pos = { x = -3164.738, y = 272.533, z = 4741.002 }, rot = { x = 3.522, y = 180.788, z = 0.956 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 63014, gadget_id = 70330395, pos = { x = -3131.266, y = 259.526, z = 4841.047 }, rot = { x = 359.560, y = 282.652, z = 5.896 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 63015, gadget_id = 70330395, pos = { x = -3108.165, y = 261.146, z = 4854.816 }, rot = { x = 5.318, y = 162.389, z = 357.410 }, level = 32, state = GadgetState.GearStart, area_id = 28 }
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
		gadgets = { 63001, 63002, 63003, 63004, 63005, 63006, 63007, 63008, 63009, 63010, 63011, 63012, 63013, 63014, 63015 },
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