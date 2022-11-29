-- 基础信息
local base_info = {
	group_id = 133001064
}

-- Trigger变量
local defs = {
	group_id = 133001064,
	challenge_id = 255,
	region_id = 64014,
	target_count = 8
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 64001, monster_id = 28020601, pos = { x = 933.212, y = 291.258, z = -478.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 64002, monster_id = 28030403, pos = { x = 968.699, y = 292.396, z = -451.588 }, rot = { x = 0.000, y = 240.676, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 64003, monster_id = 28050103, pos = { x = 964.367, y = 304.887, z = -478.640 }, rot = { x = 307.655, y = 27.047, z = 307.847 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 64004, monster_id = 28050103, pos = { x = 965.070, y = 305.169, z = -478.898 }, rot = { x = 309.051, y = 22.041, z = 315.533 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 64005, monster_id = 28030403, pos = { x = 953.032, y = 291.143, z = -430.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 64006, monster_id = 28030403, pos = { x = 952.506, y = 290.175, z = -430.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 64007, monster_id = 21010101, pos = { x = 918.106, y = 301.560, z = -447.386 }, rot = { x = 0.000, y = 263.852, z = 0.000 }, level = 30, drop_tag = "丘丘人", isOneoff = true, pose_id = 9016, climate_area_id = 1, area_id = 10 },
	{ config_id = 64015, monster_id = 28020303, pos = { x = 916.032, y = 302.139, z = -447.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 64016, monster_id = 28050103, pos = { x = 914.884, y = 309.794, z = -474.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 64017, monster_id = 28050103, pos = { x = 914.147, y = 310.016, z = -474.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 64018, monster_id = 26060301, pos = { x = 941.726, y = 291.193, z = -475.519 }, rot = { x = 0.000, y = 282.229, z = 0.000 }, level = 30, drop_tag = "雷萤", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 64019, monster_id = 26060301, pos = { x = 932.155, y = 291.565, z = -475.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "雷萤", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 64020, monster_id = 26060301, pos = { x = 934.259, y = 290.776, z = -481.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "雷萤", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 64024, monster_id = 28020303, pos = { x = 929.255, y = 299.164, z = -447.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 64025, monster_id = 28020601, pos = { x = 951.124, y = 290.174, z = -461.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 64008, gadget_id = 70220083, pos = { x = 952.354, y = 290.720, z = -430.819 }, rot = { x = 349.019, y = 253.625, z = 9.531 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 64009, gadget_id = 70220083, pos = { x = 915.620, y = 302.271, z = -447.237 }, rot = { x = 343.643, y = 3.887, z = 333.434 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 64010, gadget_id = 70220083, pos = { x = 933.254, y = 290.648, z = -477.729 }, rot = { x = 358.299, y = 0.272, z = 341.833 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 64011, gadget_id = 70220083, pos = { x = 968.999, y = 292.074, z = -451.624 }, rot = { x = 0.000, y = 240.676, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 64012, gadget_id = 70220083, pos = { x = 914.264, y = 309.115, z = -474.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 64013, gadget_id = 70220083, pos = { x = 964.862, y = 305.027, z = -479.044 }, rot = { x = 32.387, y = 4.343, z = 14.877 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 64022, gadget_id = 70220083, pos = { x = 951.305, y = 289.843, z = -461.878 }, rot = { x = 1.291, y = 274.707, z = 359.275 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 64023, gadget_id = 70220083, pos = { x = 929.256, y = 299.289, z = -447.919 }, rot = { x = 347.024, y = 191.058, z = 356.517 }, level = 1, isOneoff = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 64014, shape = RegionShape.SPHERE, radius = 50, pos = { x = 939.709, y = 290.873, z = -460.665 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1064021, name = "ANY_GADGET_DIE_64021", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_64021", action = "action_EVENT_ANY_GADGET_DIE_64021" }
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
		monsters = { 64007 },
		gadgets = { 64008, 64009, 64010, 64011, 64012, 64013, 64022, 64023 },
		regions = { 64014 },
		triggers = { "ANY_GADGET_DIE_64021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 64005, 64006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 64015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 64001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 64002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 64016, 64017 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 64003, 64004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 64025 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 64024 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { 64018, 64019, 64020 },
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
function condition_EVENT_ANY_GADGET_DIE_64021(context, evt)
	if 64010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_64021(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001064, 10)
	
	return 0
end

require "V2_3/WinterCampGacha"