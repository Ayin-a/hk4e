-- 基础信息
local base_info = {
	group_id = 199002090
}

-- DEFS_MISCS
local defs = {
	stages = 
	{
		--key为第几段，value1为这一段的起点suite，value2为这一段的主体suite
		--这些suite里不要放台子以外的gadget, 不要有InitSuite
		[1] = { 2, 3 },
		[2] = { 4, 5 },
		[3] = { 6, 7 },
	},
	--判断玩家掉落region的在哪个suite里
	--这个suite会在踩了第一个起点后加载，在失败和成功时移除
	region_suite = 8,
	--玩法完成时，goto哪个suite
	end_suite = 9,

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
	{ config_id = 90001, gadget_id = 70360359, pos = { x = 207.325, y = 124.943, z = -742.763 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 90002, gadget_id = 70360359, pos = { x = 205.627, y = 124.943, z = -748.331 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 90004, gadget_id = 70211101, pos = { x = 323.400, y = 120.035, z = -738.845 }, rot = { x = 0.000, y = 264.272, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	{ config_id = 90005, gadget_id = 70360359, pos = { x = 213.160, y = 129.443, z = -759.181 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 90006, gadget_id = 70360359, pos = { x = 255.490, y = 133.265, z = -762.496 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 90007, gadget_id = 70360359, pos = { x = 224.718, y = 133.943, z = -761.587 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 90008, gadget_id = 70360360, pos = { x = 218.709, y = 129.443, z = -763.294 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 90009, gadget_id = 70360360, pos = { x = 208.547, y = 124.943, z = -754.812 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 90010, gadget_id = 70360359, pos = { x = 229.053, y = 133.943, z = -758.154 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 90011, gadget_id = 70360359, pos = { x = 246.250, y = 137.825, z = -764.757 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 90012, gadget_id = 70360360, pos = { x = 235.769, y = 133.943, z = -756.647 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 90013, gadget_id = 70360359, pos = { x = 246.417, y = 136.943, z = -759.177 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 90014, gadget_id = 70360359, pos = { x = 249.994, y = 137.825, z = -755.079 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 90015, gadget_id = 70360360, pos = { x = 261.360, y = 133.265, z = -766.086 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 90016, gadget_id = 70360360, pos = { x = 266.713, y = 137.765, z = -761.273 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 90017, gadget_id = 70360360, pos = { x = 273.753, y = 142.265, z = -763.419 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 90018, gadget_id = 70360360, pos = { x = 272.137, y = 146.765, z = -756.172 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 90019, gadget_id = 70360359, pos = { x = 278.084, y = 151.265, z = -755.219 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 90020, gadget_id = 70360360, pos = { x = 282.452, y = 146.723, z = -746.177 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 90021, gadget_id = 70360359, pos = { x = 278.119, y = 151.223, z = -740.261 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 90022, gadget_id = 70360359, pos = { x = 294.328, y = 151.647, z = -734.624 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 90023, gadget_id = 70360360, pos = { x = 288.082, y = 147.147, z = -734.286 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 90025, gadget_id = 70360359, pos = { x = 207.325, y = 124.943, z = -742.763 }, rot = { x = 0.000, y = 24.063, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 }
}

-- 区域
regions = {
	{ config_id = 90024, shape = RegionShape.CUBIC, size = { x = 135.000, y = 73.880, z = 77.300 }, pos = { x = 247.033, y = 156.673, z = -749.116 }, area_id = 401 }
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
		{ config_id = 90003, gadget_id = 70310302, pos = { x = 232.200, y = 118.000, z = -745.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 90026, gadget_id = 70310302, pos = { x = 277.600, y = 118.000, z = -747.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 }
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
	end_suite = 9,
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
		-- description = 留空,
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
		gadgets = { 90001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 90002, 90005, 90007, 90008, 90009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 90010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 90011, 90012, 90013, 90014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 90006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 90015, 90016, 90017, 90018, 90019, 90020, 90021, 90022, 90023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 落水判定,
		monsters = { },
		gadgets = { },
		regions = { 90024 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = EndSuite,
		monsters = { },
		gadgets = { 90004, 90025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
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

require "V2_8/CloudPlatform"