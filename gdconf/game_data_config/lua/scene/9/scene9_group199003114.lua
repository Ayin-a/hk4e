-- 基础信息
local base_info = {
	group_id = 199003114
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
	{ config_id = 114001, gadget_id = 70360359, pos = { x = -257.566, y = 124.757, z = 571.606 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	{ config_id = 114002, gadget_id = 70360359, pos = { x = -256.610, y = 125.367, z = 565.501 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 114004, gadget_id = 70211101, pos = { x = -236.884, y = 131.161, z = 475.570 }, rot = { x = 0.000, y = 253.226, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 },
	{ config_id = 114005, gadget_id = 70360359, pos = { x = -253.878, y = 128.221, z = 554.953 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 114006, gadget_id = 70360359, pos = { x = -250.852, y = 133.996, z = 507.122 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 114007, gadget_id = 70360359, pos = { x = -247.413, y = 132.721, z = 543.815 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 114008, gadget_id = 70360360, pos = { x = -250.107, y = 128.221, z = 549.778 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 114009, gadget_id = 70360360, pos = { x = -259.317, y = 123.721, z = 558.746 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 114010, gadget_id = 70360359, pos = { x = -250.009, y = 132.721, z = 538.575 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 114011, gadget_id = 70360359, pos = { x = -259.607, y = 138.496, z = 520.094 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 114012, gadget_id = 70360360, pos = { x = -249.713, y = 132.721, z = 531.560 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 114013, gadget_id = 70360360, pos = { x = -252.562, y = 133.996, z = 518.257 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 114014, gadget_id = 70360359, pos = { x = -245.808, y = 138.496, z = 516.870 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 114015, gadget_id = 70360360, pos = { x = -247.104, y = 133.996, z = 501.511 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 114017, gadget_id = 70360359, pos = { x = -257.566, y = 124.757, z = 571.606 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 114018, gadget_id = 70360360, pos = { x = -248.194, y = 138.496, z = 493.443 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 114019, gadget_id = 70360359, pos = { x = -254.202, y = 142.996, z = 490.444 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 114020, gadget_id = 70360360, pos = { x = -251.769, y = 147.496, z = 471.979 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 114021, gadget_id = 70360359, pos = { x = -246.604, y = 151.996, z = 471.365 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 114022, gadget_id = 70360359, pos = { x = -256.417, y = 147.496, z = 477.050 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 114023, gadget_id = 70360360, pos = { x = -257.090, y = 142.996, z = 484.067 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
	{ config_id = 114024, shape = RegionShape.CUBIC, size = { x = 110.000, y = 73.880, z = 130.000 }, pos = { x = -257.090, y = 156.487, z = 518.096 }, area_id = 403 }
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
		{ config_id = 114003, gadget_id = 70310302, pos = { x = -247.300, y = 118.000, z = 538.000 }, rot = { x = 0.000, y = 104.295, z = 0.000 }, level = 20, area_id = 403 }
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
		gadgets = { 114001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 114002, 114005, 114007, 114008, 114009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 114010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 114011, 114012, 114013, 114014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 114006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 114015, 114018, 114019, 114020, 114021, 114022, 114023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 落水判定,
		monsters = { },
		gadgets = { },
		regions = { 114024 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = EndSuite,
		monsters = { },
		gadgets = { 114004, 114017 },
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