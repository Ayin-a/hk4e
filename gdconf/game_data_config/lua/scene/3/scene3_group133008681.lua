-- 基础信息
local base_info = {
	group_id = 133008681
}

-- Trigger变量
local defs = {
	group_id = 133008681,
	challenge_id = 255,
	region_id = 681014,
	target_count = 8
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 681001, monster_id = 28030403, pos = { x = 1109.728, y = 199.845, z = -1171.200 }, rot = { x = 0.000, y = 192.695, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 681002, monster_id = 28030403, pos = { x = 1110.560, y = 200.748, z = -1171.814 }, rot = { x = 0.000, y = 192.695, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 681003, monster_id = 28050103, pos = { x = 1116.866, y = 200.660, z = -1182.007 }, rot = { x = 0.000, y = 241.471, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 681004, monster_id = 28020601, pos = { x = 1095.878, y = 201.420, z = -1152.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 681005, monster_id = 28050103, pos = { x = 1107.597, y = 199.850, z = -1191.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 681006, monster_id = 28050103, pos = { x = 1107.720, y = 200.085, z = -1190.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 681007, monster_id = 28020303, pos = { x = 1139.379, y = 200.419, z = -1173.537 }, rot = { x = 0.000, y = 233.979, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 681015, monster_id = 28020601, pos = { x = 1090.052, y = 200.401, z = -1196.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 681018, monster_id = 28030403, pos = { x = 1094.416, y = 201.273, z = -1181.226 }, rot = { x = 0.000, y = 192.695, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 681019, monster_id = 28020303, pos = { x = 1117.388, y = 200.520, z = -1152.463 }, rot = { x = 0.000, y = 143.677, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 681008, gadget_id = 70220083, pos = { x = 1095.602, y = 201.074, z = -1152.775 }, rot = { x = 352.922, y = 359.236, z = 3.644 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 681009, gadget_id = 70220083, pos = { x = 1110.105, y = 201.029, z = -1171.477 }, rot = { x = 0.001, y = 256.976, z = 12.136 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 681010, gadget_id = 70220083, pos = { x = 1107.570, y = 199.195, z = -1190.833 }, rot = { x = 356.299, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 681011, gadget_id = 70220083, pos = { x = 1116.986, y = 199.631, z = -1182.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 681012, gadget_id = 70220083, pos = { x = 1139.548, y = 200.902, z = -1173.581 }, rot = { x = 17.361, y = 228.249, z = 357.341 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 681013, gadget_id = 70220083, pos = { x = 1090.017, y = 199.258, z = -1196.401 }, rot = { x = 0.000, y = 241.471, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 681016, gadget_id = 70220083, pos = { x = 1117.673, y = 201.000, z = -1152.434 }, rot = { x = 356.299, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 681017, gadget_id = 70220083, pos = { x = 1094.722, y = 200.754, z = -1181.168 }, rot = { x = 356.299, y = 294.758, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 681014, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1106.560, y = 201.394, z = -1170.668 }, area_id = 10 }
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
		gadgets = { 681008, 681009, 681010, 681011, 681012, 681013, 681016, 681017 },
		regions = { 681014 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 681004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 681001, 681002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 681005, 681006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 681003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 681007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 681015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 681019 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 681018 },
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

require "V2_3/WinterCampGacha"