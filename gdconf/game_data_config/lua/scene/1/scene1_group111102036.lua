-- 基础信息
local base_info = {
	group_id = 111102036
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
	--防跳水板子config_id
        	board_id = 36004,
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
	{ config_id = 36001, gadget_id = 70360359, pos = { x = 1752.061, y = 200.026, z = -1619.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36003, gadget_id = 70360359, pos = { x = 1752.642, y = 200.636, z = -1626.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36004, gadget_id = 70310302, pos = { x = 1771.396, y = 193.086, z = -1606.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36005, gadget_id = 70211101, pos = { x = 1833.755, y = 229.810, z = -1573.657 }, rot = { x = 0.000, y = 240.209, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 36006, gadget_id = 70360359, pos = { x = 1766.444, y = 203.241, z = -1632.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36007, gadget_id = 70360359, pos = { x = 1806.898, y = 210.167, z = -1617.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36008, gadget_id = 70360359, pos = { x = 1776.359, y = 208.464, z = -1628.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36009, gadget_id = 70360360, pos = { x = 1774.212, y = 204.601, z = -1636.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36018, gadget_id = 70360360, pos = { x = 1759.173, y = 198.990, z = -1633.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36021, gadget_id = 70360359, pos = { x = 1778.945, y = 208.602, z = -1620.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36022, gadget_id = 70360359, pos = { x = 1800.141, y = 214.176, z = -1625.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36023, gadget_id = 70360360, pos = { x = 1787.292, y = 208.523, z = -1616.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36024, gadget_id = 70360359, pos = { x = 1796.959, y = 212.809, z = -1617.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36025, gadget_id = 70360359, pos = { x = 1799.823, y = 214.177, z = -1609.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36040, gadget_id = 70360360, pos = { x = 1814.862, y = 211.942, z = -1617.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36041, gadget_id = 70360360, pos = { x = 1815.480, y = 215.497, z = -1611.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36042, gadget_id = 70360360, pos = { x = 1821.440, y = 219.830, z = -1610.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36043, gadget_id = 70360360, pos = { x = 1817.843, y = 223.565, z = -1604.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36044, gadget_id = 70360359, pos = { x = 1823.573, y = 227.845, z = -1601.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36045, gadget_id = 70360360, pos = { x = 1823.601, y = 224.980, z = -1591.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36046, gadget_id = 70360359, pos = { x = 1817.086, y = 228.551, z = -1587.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36047, gadget_id = 70360359, pos = { x = 1833.756, y = 229.831, z = -1573.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36048, gadget_id = 70360360, pos = { x = 1826.204, y = 225.405, z = -1578.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 36002, shape = RegionShape.CUBIC, size = { x = 135.000, y = 73.880, z = 77.300 }, pos = { x = 1790.909, y = 231.756, z = -1609.053 } }
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
		gadgets = { 36005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 36001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 36003, 36006, 36008, 36009, 36018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 36021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 36022, 36023, 36024, 36025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 36007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 36040, 36041, 36042, 36043, 36044, 36045, 36046, 36047, 36048 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 落水判定,
		monsters = { },
		gadgets = { },
		regions = { 36002 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = EndSuite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 36004 },
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