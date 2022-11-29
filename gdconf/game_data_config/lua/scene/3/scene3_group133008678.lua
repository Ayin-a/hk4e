-- 基础信息
local base_info = {
	group_id = 133008678
}

-- Trigger变量
local defs = {
	group_id = 133008678,
	challenge_id = 255,
	region_id = 678014,
	target_count = 8
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 678001, monster_id = 28020601, pos = { x = 924.079, y = 372.016, z = -694.847 }, rot = { x = 326.601, y = 113.850, z = 3.485 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 678002, monster_id = 21010201, pos = { x = 937.752, y = 366.682, z = -751.209 }, rot = { x = 0.000, y = 60.711, z = 0.000 }, level = 30, drop_tag = "丘丘人", isOneoff = true, pose_id = 9010, climate_area_id = 1, area_id = 10 },
	{ config_id = 678003, monster_id = 28050103, pos = { x = 917.378, y = 382.847, z = -750.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 678004, monster_id = 28050103, pos = { x = 918.081, y = 381.852, z = -750.601 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 678005, monster_id = 28030403, pos = { x = 951.639, y = 365.595, z = -710.964 }, rot = { x = 0.000, y = 68.463, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 678006, monster_id = 28020601, pos = { x = 910.945, y = 386.171, z = -725.317 }, rot = { x = 0.000, y = 46.038, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 678007, monster_id = 28020601, pos = { x = 940.360, y = 367.710, z = -751.426 }, rot = { x = 0.000, y = 308.770, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 678015, monster_id = 28030403, pos = { x = 932.931, y = 380.405, z = -718.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 678016, monster_id = 28030403, pos = { x = 931.599, y = 381.108, z = -718.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 678017, monster_id = 22010201, pos = { x = 946.903, y = 365.134, z = -713.194 }, rot = { x = 0.000, y = 356.945, z = 0.000 }, level = 30, drop_tag = "深渊法师", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 678020, monster_id = 28030403, pos = { x = 911.947, y = 383.211, z = -713.953 }, rot = { x = 0.000, y = 68.463, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 678021, monster_id = 28050103, pos = { x = 935.811, y = 366.907, z = -734.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 678022, monster_id = 28050103, pos = { x = 935.108, y = 367.902, z = -733.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 678023, monster_id = 26010101, pos = { x = 913.788, y = 382.051, z = -713.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "骗骗花", isOneoff = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 678008, gadget_id = 70220083, pos = { x = 940.479, y = 366.501, z = -750.997 }, rot = { x = 349.690, y = 307.497, z = 14.037 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 678009, gadget_id = 70220083, pos = { x = 911.360, y = 386.524, z = -724.349 }, rot = { x = 0.989, y = 106.766, z = 24.067 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 678010, gadget_id = 70220083, pos = { x = 924.121, y = 371.283, z = -694.419 }, rot = { x = 347.769, y = 128.908, z = 24.560 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 678011, gadget_id = 70220083, pos = { x = 932.049, y = 380.915, z = -719.065 }, rot = { x = 348.823, y = 347.496, z = 5.546 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 678012, gadget_id = 70220083, pos = { x = 951.733, y = 366.024, z = -710.313 }, rot = { x = 0.000, y = 68.463, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 678013, gadget_id = 70220083, pos = { x = 916.932, y = 381.985, z = -750.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 678018, gadget_id = 70220083, pos = { x = 911.512, y = 382.922, z = -714.580 }, rot = { x = 347.769, y = 128.908, z = 24.560 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 678019, gadget_id = 70220083, pos = { x = 935.721, y = 366.545, z = -733.728 }, rot = { x = 3.874, y = 155.645, z = 343.070 }, level = 1, isOneoff = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 678014, shape = RegionShape.SPHERE, radius = 50, pos = { x = 929.540, y = 360.378, z = -725.602 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1678024, name = "ANY_GADGET_DIE_678024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_678024", action = "action_EVENT_ANY_GADGET_DIE_678024" }
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
		monsters = { 678002, 678017 },
		gadgets = { 678008, 678009, 678010, 678011, 678012, 678013, 678018, 678019 },
		regions = { 678014 },
		triggers = { "ANY_GADGET_DIE_678024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 678007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 678006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 678001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 678015, 678016 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 678005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 678003, 678004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 678020 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 678021, 678022 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { 678023 },
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
function condition_EVENT_ANY_GADGET_DIE_678024(context, evt)
	if 678018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_678024(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008678, 10)
	
	return 0
end

require "V2_3/WinterCampGacha"