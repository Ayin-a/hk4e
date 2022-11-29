-- 基础信息
local base_info = {
	group_id = 133301034
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
	{ config_id = 34003, npc_id = 20738, pos = { x = -1090.063, y = 220.527, z = 2291.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 }
}

-- 装置
gadgets = {
	{ config_id = 34001, gadget_id = 70310485, pos = { x = -1088.493, y = 220.534, z = 2290.207 }, rot = { x = 0.000, y = 74.785, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 34002, gadget_id = 70360040, pos = { x = -1090.025, y = 220.765, z = 2291.920 }, rot = { x = 345.283, y = 126.226, z = 241.959 }, level = 27, area_id = 21 },
	{ config_id = 34005, gadget_id = 70500000, pos = { x = -1085.408, y = 218.230, z = 2288.818 }, rot = { x = 0.000, y = 354.368, z = 24.840 }, level = 27, point_type = 3011, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 34006, gadget_id = 70500000, pos = { x = -1080.021, y = 216.068, z = 2282.348 }, rot = { x = 2.804, y = 41.249, z = 314.549 }, level = 27, point_type = 3011, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 34007, gadget_id = 70500000, pos = { x = -1080.060, y = 215.878, z = 2275.060 }, rot = { x = 290.684, y = 72.651, z = 0.000 }, level = 27, point_type = 3011, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 34008, gadget_id = 70500000, pos = { x = -1077.479, y = 216.061, z = 2267.639 }, rot = { x = 81.019, y = 214.104, z = 179.999 }, level = 27, point_type = 3011, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 34009, gadget_id = 70500000, pos = { x = -1070.112, y = 214.590, z = 2261.655 }, rot = { x = 327.825, y = 62.426, z = 18.713 }, level = 27, point_type = 3011, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 34010, gadget_id = 70500000, pos = { x = -1066.392, y = 214.540, z = 2254.958 }, rot = { x = 87.574, y = 283.320, z = 180.009 }, level = 27, point_type = 3011, isOneoff = true, persistent = true, area_id = 24 },
	{ config_id = 34011, gadget_id = 70500000, pos = { x = -1059.354, y = 215.213, z = 2249.284 }, rot = { x = 286.567, y = 201.866, z = 185.806 }, level = 27, point_type = 3011, isOneoff = true, persistent = true, area_id = 24 },
	{ config_id = 34012, gadget_id = 70500000, pos = { x = -1053.530, y = 215.377, z = 2243.487 }, rot = { x = 72.160, y = 240.609, z = 232.870 }, level = 27, point_type = 3011, isOneoff = true, persistent = true, area_id = 24 },
	{ config_id = 34013, gadget_id = 70290498, pos = { x = -1052.166, y = 216.215, z = 2246.734 }, rot = { x = 0.000, y = 181.043, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "ISDEAD", value = 0, no_refresh = true }
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
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 34001, 34002, 34005, 34006, 34007, 34008, 34009, 34010, 34011, 34012 },
		regions = { },
		triggers = { },
		npcs = { 34003 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 34001, 34002, 34005, 34006, 34007, 34008, 34009, 34010, 34011, 34012, 34013 },
		regions = { },
		triggers = { },
		npcs = { 34003 },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 34001, 34005, 34006, 34007, 34008, 34009, 34010, 34011, 34012 },
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