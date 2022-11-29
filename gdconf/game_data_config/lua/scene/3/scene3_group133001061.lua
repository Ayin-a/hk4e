-- 基础信息
local base_info = {
	group_id = 133001061
}

-- Trigger变量
local defs = {
	group_id = 133001061,
	challenge_id = 255,
	region_id = 61014,
	target_count = 8,
	guide_regionID = 61026
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 61001, monster_id = 23010201, pos = { x = 1345.245, y = 269.107, z = -587.514 }, rot = { x = 0.000, y = 173.300, z = 0.000 }, level = 30, drop_tag = "先遣队", isOneoff = true, pose_id = 9001, climate_area_id = 1, area_id = 10 },
	{ config_id = 61002, monster_id = 28020601, pos = { x = 1333.684, y = 270.111, z = -554.230 }, rot = { x = 0.000, y = 200.866, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 61003, monster_id = 28050103, pos = { x = 1356.125, y = 267.803, z = -610.830 }, rot = { x = 5.258, y = 57.280, z = 356.631 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 61004, monster_id = 28050103, pos = { x = 1356.177, y = 266.797, z = -611.562 }, rot = { x = 5.258, y = 57.280, z = 356.631 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 61005, monster_id = 28020601, pos = { x = 1309.691, y = 271.886, z = -561.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 61006, monster_id = 28050103, pos = { x = 1346.227, y = 268.853, z = -590.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 61007, monster_id = 28050103, pos = { x = 1345.523, y = 269.263, z = -590.498 }, rot = { x = 0.000, y = 305.651, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 61015, monster_id = 28030403, pos = { x = 1333.099, y = 272.368, z = -610.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 61016, monster_id = 28030403, pos = { x = 1332.495, y = 272.859, z = -609.824 }, rot = { x = 0.000, y = 63.736, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 61019, monster_id = 28030403, pos = { x = 1364.351, y = 269.266, z = -574.029 }, rot = { x = 0.000, y = 63.736, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 61020, monster_id = 28030403, pos = { x = 1364.955, y = 268.776, z = -574.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 61021, monster_id = 28020303, pos = { x = 1351.443, y = 269.271, z = -573.805 }, rot = { x = 0.000, y = 243.747, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 61022, monster_id = 28020303, pos = { x = 1347.057, y = 269.713, z = -606.607 }, rot = { x = 0.000, y = 282.497, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 61023, monster_id = 26060301, pos = { x = 1370.214, y = 267.142, z = -583.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "雷萤", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 61024, monster_id = 26060301, pos = { x = 1372.507, y = 267.328, z = -582.471 }, rot = { x = 0.000, y = 313.538, z = 0.000 }, level = 30, drop_tag = "雷萤", isOneoff = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 61008, gadget_id = 70220083, pos = { x = 1309.316, y = 271.680, z = -561.990 }, rot = { x = 11.399, y = 359.496, z = 350.339 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 61009, gadget_id = 70220083, pos = { x = 1345.925, y = 269.309, z = -590.591 }, rot = { x = 354.238, y = 247.290, z = 2.406 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 61010, gadget_id = 70220083, pos = { x = 1332.487, y = 272.583, z = -610.132 }, rot = { x = 0.000, y = 0.000, z = 353.758 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 61011, gadget_id = 70220083, pos = { x = 1334.154, y = 270.072, z = -553.847 }, rot = { x = 359.425, y = 345.655, z = 16.552 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 61012, gadget_id = 70220083, pos = { x = 1364.765, y = 268.143, z = -574.082 }, rot = { x = 5.885, y = 70.461, z = 357.916 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 61013, gadget_id = 70220083, pos = { x = 1356.346, y = 266.611, z = -610.600 }, rot = { x = 5.258, y = 57.280, z = 356.631 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 61017, gadget_id = 70220083, pos = { x = 1351.165, y = 269.480, z = -573.862 }, rot = { x = 0.000, y = 0.000, z = 353.758 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 61018, gadget_id = 70220083, pos = { x = 1347.023, y = 269.943, z = -606.923 }, rot = { x = 0.000, y = 106.532, z = 353.758 }, level = 1, isOneoff = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 61014, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1338.229, y = 272.335, z = -578.058 }, area_id = 10 },
	{ config_id = 61026, shape = RegionShape.SPHERE, radius = 45, pos = { x = 1338.229, y = 272.335, z = -578.058 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1061025, name = "ANY_GADGET_DIE_61025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_61025", action = "action_EVENT_ANY_GADGET_DIE_61025" }
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
		monsters = { 61001 },
		gadgets = { 61008, 61009, 61010, 61011, 61012, 61013, 61017, 61018 },
		regions = { 61014, 61026 },
		triggers = { "ANY_GADGET_DIE_61025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 61005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 61006, 61007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 61015, 61016 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 61002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 61019, 61020 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 61003, 61004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 61021 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 61022 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { 61023, 61024 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
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

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_61025(context, evt)
	if 61012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_61025(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001061, 10)
	
	return 0
end

require "V2_3/WinterCampGacha"