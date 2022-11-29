-- 基础信息
local base_info = {
	group_id = 133001063
}

-- Trigger变量
local defs = {
	group_id = 133001063,
	challenge_id = 255,
	region_id = 63014,
	target_count = 8
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 63001, monster_id = 28020601, pos = { x = 1042.462, y = 404.342, z = -705.363 }, rot = { x = 5.324, y = 1.354, z = 3.418 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 63002, monster_id = 28030403, pos = { x = 1034.025, y = 392.601, z = -690.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 63003, monster_id = 28050103, pos = { x = 1068.694, y = 402.260, z = -665.917 }, rot = { x = 319.273, y = 81.041, z = 43.738 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 63004, monster_id = 28030403, pos = { x = 1033.518, y = 392.282, z = -690.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 63005, monster_id = 21010901, pos = { x = 1046.806, y = 404.383, z = -704.462 }, rot = { x = 18.292, y = 248.793, z = 349.750 }, level = 30, drop_tag = "远程丘丘人", isOneoff = true, pose_id = 9013, climate_area_id = 1, area_id = 10 },
	{ config_id = 63006, monster_id = 28030403, pos = { x = 1073.074, y = 407.878, z = -707.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 63007, monster_id = 28020601, pos = { x = 1036.260, y = 385.222, z = -668.905 }, rot = { x = 13.307, y = 338.384, z = 338.075 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 63015, monster_id = 28030403, pos = { x = 1072.170, y = 408.112, z = -706.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 63016, monster_id = 28020303, pos = { x = 1056.919, y = 392.255, z = -682.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 63018, monster_id = 21011401, pos = { x = 1033.987, y = 383.916, z = -667.450 }, rot = { x = 0.000, y = 102.565, z = 0.000 }, level = 30, drop_tag = "丘丘人", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 63019, monster_id = 21011401, pos = { x = 1033.678, y = 384.534, z = -669.903 }, rot = { x = 0.000, y = 56.148, z = 0.000 }, level = 30, drop_tag = "丘丘人", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 63023, monster_id = 28050103, pos = { x = 1063.891, y = 398.448, z = -689.488 }, rot = { x = 319.273, y = 81.041, z = 43.738 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 63024, monster_id = 28050103, pos = { x = 1063.888, y = 398.834, z = -690.056 }, rot = { x = 319.273, y = 81.041, z = 43.738 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 63025, monster_id = 28050103, pos = { x = 1074.714, y = 404.599, z = -682.402 }, rot = { x = 319.273, y = 81.041, z = 43.738 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 63026, monster_id = 28050103, pos = { x = 1075.846, y = 403.999, z = -682.688 }, rot = { x = 319.273, y = 81.041, z = 43.738 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 63008, gadget_id = 70220083, pos = { x = 1036.957, y = 385.029, z = -668.460 }, rot = { x = 16.107, y = 2.472, z = 15.274 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 63009, gadget_id = 70220083, pos = { x = 1034.396, y = 390.528, z = -690.875 }, rot = { x = 14.940, y = 1.946, z = 14.758 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 63010, gadget_id = 70220083, pos = { x = 1042.768, y = 404.134, z = -705.222 }, rot = { x = 5.324, y = 1.354, z = 3.418 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 63011, gadget_id = 70220083, pos = { x = 1072.249, y = 408.021, z = -707.007 }, rot = { x = 10.046, y = 1.101, z = 4.383 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 63012, gadget_id = 70220083, pos = { x = 1057.347, y = 392.386, z = -683.035 }, rot = { x = 18.292, y = 286.379, z = 349.750 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 63013, gadget_id = 70220083, pos = { x = 1068.766, y = 401.688, z = -666.201 }, rot = { x = 8.974, y = 101.687, z = 7.130 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 63021, gadget_id = 70220083, pos = { x = 1075.624, y = 402.612, z = -682.602 }, rot = { x = 12.639, y = 3.318, z = 26.302 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 63022, gadget_id = 70220083, pos = { x = 1064.318, y = 396.675, z = -690.026 }, rot = { x = 5.324, y = 1.354, z = 3.418 }, level = 1, isOneoff = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 63014, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1057.900, y = 393.653, z = -685.990 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1063020, name = "ANY_GADGET_DIE_63020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_63020", action = "action_EVENT_ANY_GADGET_DIE_63020" }
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
		monsters = { 63005 },
		gadgets = { 63008, 63009, 63010, 63011, 63012, 63013, 63021, 63022 },
		regions = { 63014 },
		triggers = { "ANY_GADGET_DIE_63020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 63007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 63002, 63004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 63001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 63006, 63015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 63016 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 63003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 63025, 63026 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 63023, 63024 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { 63018, 63019 },
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
function condition_EVENT_ANY_GADGET_DIE_63020(context, evt)
	if 63008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_63020(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001063, 10)
	
	return 0
end

require "V2_3/WinterCampGacha"