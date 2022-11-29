-- 基础信息
local base_info = {
	group_id = 133008677
}

-- Trigger变量
local defs = {
	group_id = 133008677,
	challenge_id = 255,
	region_id = 677014,
	target_count = 6
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 677001, monster_id = 28020601, pos = { x = 877.667, y = 201.360, z = -1184.492 }, rot = { x = 1.505, y = 125.841, z = 336.758 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 677002, monster_id = 22010201, pos = { x = 902.438, y = 199.419, z = -1182.660 }, rot = { x = 17.697, y = 236.621, z = 3.252 }, level = 1, drop_tag = "深渊法师", disableWander = true, isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 677003, monster_id = 28050103, pos = { x = 909.132, y = 201.669, z = -1146.318 }, rot = { x = 0.000, y = 0.000, z = 339.006 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 677004, monster_id = 28050103, pos = { x = 909.835, y = 200.674, z = -1146.576 }, rot = { x = 0.000, y = 0.000, z = 339.006 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 677005, monster_id = 28050103, pos = { x = 894.608, y = 202.410, z = -1204.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 677006, monster_id = 28050103, pos = { x = 894.883, y = 202.342, z = -1203.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 677007, monster_id = 28020601, pos = { x = 916.791, y = 200.408, z = -1193.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 677015, monster_id = 28050103, pos = { x = 900.700, y = 199.329, z = -1182.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 677016, monster_id = 28020303, pos = { x = 929.018, y = 202.611, z = -1170.795 }, rot = { x = 0.000, y = 270.698, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 677017, monster_id = 20010901, pos = { x = 923.142, y = 201.051, z = -1167.404 }, rot = { x = 0.000, y = 151.169, z = 0.000 }, level = 1, drop_tag = "大史莱姆", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 677018, monster_id = 20010801, pos = { x = 920.645, y = 200.793, z = -1167.144 }, rot = { x = 0.000, y = 123.355, z = 0.000 }, level = 1, drop_tag = "史莱姆", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 677019, monster_id = 20010801, pos = { x = 923.687, y = 200.941, z = -1163.813 }, rot = { x = 0.000, y = 123.355, z = 0.000 }, level = 1, drop_tag = "史莱姆", isOneoff = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 677008, gadget_id = 70220083, pos = { x = 916.664, y = 200.691, z = -1193.532 }, rot = { x = 7.916, y = 359.944, z = 353.630 }, level = 1, area_id = 10 },
	{ config_id = 677009, gadget_id = 70220083, pos = { x = 894.669, y = 201.154, z = -1204.008 }, rot = { x = 0.000, y = 0.000, z = 346.080 }, level = 1, area_id = 10 },
	{ config_id = 677010, gadget_id = 70220083, pos = { x = 877.709, y = 200.926, z = -1184.064 }, rot = { x = 1.303, y = 126.199, z = 4.273 }, level = 1, area_id = 10 },
	{ config_id = 677011, gadget_id = 70220083, pos = { x = 900.628, y = 197.596, z = -1182.320 }, rot = { x = 23.590, y = 226.535, z = 346.113 }, level = 1, area_id = 10 },
	{ config_id = 677012, gadget_id = 70220083, pos = { x = 929.094, y = 202.980, z = -1170.768 }, rot = { x = 16.941, y = 230.724, z = 345.555 }, level = 1, area_id = 10 },
	{ config_id = 677013, gadget_id = 70220083, pos = { x = 909.126, y = 200.508, z = -1145.900 }, rot = { x = 0.000, y = 263.342, z = 339.006 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 677014, shape = RegionShape.SPHERE, radius = 50, pos = { x = 899.423, y = 199.356, z = -1177.734 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1677020, name = "ANY_GADGET_DIE_677020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_677020", action = "action_EVENT_ANY_GADGET_DIE_677020" }
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
		monsters = { 677002 },
		gadgets = { 677008, 677009, 677010, 677011, 677012, 677013 },
		regions = { 677014 },
		triggers = { "ANY_GADGET_DIE_677020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 677007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 677005, 677006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 677001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 677015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 677016 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 677003, 677004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 677017, 677018, 677019 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
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
function condition_EVENT_ANY_GADGET_DIE_677020(context, evt)
	if 677012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_677020(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008677, 8)
	
	return 0
end

require "V2_3/WinterCampGacha"