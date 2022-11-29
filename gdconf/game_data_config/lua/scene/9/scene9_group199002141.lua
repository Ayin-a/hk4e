-- 基础信息
local base_info = {
	group_id = 199002141
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
	{ config_id = 141001, gadget_id = 70360360, pos = { x = 576.620, y = 127.000, z = -80.397 }, rot = { x = 0.000, y = 280.564, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 141002, gadget_id = 70360360, pos = { x = 567.606, y = 131.000, z = -74.387 }, rot = { x = 0.000, y = 280.564, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 141004, gadget_id = 70211101, pos = { x = 511.245, y = 180.582, z = -100.230 }, rot = { x = 0.000, y = 268.282, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	{ config_id = 141005, gadget_id = 70360359, pos = { x = 559.541, y = 135.000, z = -78.244 }, rot = { x = 0.000, y = 280.564, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 141006, gadget_id = 70360359, pos = { x = 508.049, y = 170.000, z = -80.406 }, rot = { x = 0.000, y = 280.564, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 141007, gadget_id = 70360360, pos = { x = 549.764, y = 135.000, z = -78.127 }, rot = { x = 0.000, y = 280.564, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 141008, gadget_id = 70360360, pos = { x = 524.529, y = 162.000, z = -73.216 }, rot = { x = 0.000, y = 280.564, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 141009, gadget_id = 70360360, pos = { x = 540.457, y = 139.000, z = -79.756 }, rot = { x = 0.000, y = 280.564, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 141010, gadget_id = 70360359, pos = { x = 548.007, y = 147.000, z = -94.057 }, rot = { x = 0.000, y = 280.564, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 141011, gadget_id = 70360359, pos = { x = 543.786, y = 158.000, z = -85.875 }, rot = { x = 0.000, y = 280.564, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 141012, gadget_id = 70360360, pos = { x = 539.838, y = 158.000, z = -78.113 }, rot = { x = 0.000, y = 280.564, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 141013, gadget_id = 70360359, pos = { x = 532.507, y = 162.000, z = -74.626 }, rot = { x = 0.000, y = 280.564, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 141014, gadget_id = 70360360, pos = { x = 516.728, y = 166.000, z = -73.839 }, rot = { x = 0.000, y = 280.564, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 141015, gadget_id = 70360360, pos = { x = 501.787, y = 170.000, z = -84.868 }, rot = { x = 0.000, y = 280.564, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 141016, gadget_id = 70360360, pos = { x = 499.956, y = 174.000, z = -93.041 }, rot = { x = 0.000, y = 280.564, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 141017, gadget_id = 70360360, pos = { x = 576.620, y = 127.000, z = -80.397 }, rot = { x = 0.000, y = 280.564, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 141019, gadget_id = 70360359, pos = { x = 501.778, y = 178.000, z = -99.709 }, rot = { x = 0.000, y = 280.564, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 141025, gadget_id = 70360360, pos = { x = 543.187, y = 143.000, z = -87.557 }, rot = { x = 0.000, y = 280.564, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
	{ config_id = 141024, shape = RegionShape.CUBIC, size = { x = 135.000, y = 73.880, z = 77.300 }, pos = { x = 555.808, y = 151.107, z = -87.711 }, area_id = 402 }
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
		{ config_id = 141003, gadget_id = 70310302, pos = { x = 568.482, y = 118.000, z = -59.993 }, rot = { x = 0.000, y = 280.564, z = 0.000 }, level = 20, area_id = 402 }
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
		gadgets = { 141001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 141002, 141005, 141007, 141009, 141025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 141010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 141008, 141011, 141012, 141013, 141014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 141006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 141015, 141016, 141019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 落水判定,
		monsters = { },
		gadgets = { },
		regions = { 141024 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = EndSuite,
		monsters = { },
		gadgets = { 141004, 141017 },
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