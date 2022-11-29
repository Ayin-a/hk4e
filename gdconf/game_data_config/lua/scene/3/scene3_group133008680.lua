-- 基础信息
local base_info = {
	group_id = 133008680
}

-- Trigger变量
local defs = {
	group_id = 133008680,
	challenge_id = 255,
	region_id = 680014,
	target_count = 8
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 680001, monster_id = 28030403, pos = { x = 873.165, y = 335.977, z = -595.248 }, rot = { x = 0.000, y = 87.317, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 680002, monster_id = 28030403, pos = { x = 872.772, y = 335.798, z = -594.321 }, rot = { x = 0.000, y = 87.317, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 680003, monster_id = 28050103, pos = { x = 910.974, y = 336.858, z = -608.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 680004, monster_id = 28050103, pos = { x = 911.677, y = 335.613, z = -609.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 680005, monster_id = 28020601, pos = { x = 885.591, y = 328.305, z = -591.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 680006, monster_id = 28030403, pos = { x = 881.869, y = 341.599, z = -645.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 680007, monster_id = 28020303, pos = { x = 877.877, y = 335.151, z = -638.190 }, rot = { x = 0.000, y = 320.581, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 680015, monster_id = 28020303, pos = { x = 886.067, y = 326.745, z = -592.342 }, rot = { x = 0.000, y = 78.867, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 680016, monster_id = 23040101, pos = { x = 896.813, y = 331.999, z = -611.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "召唤师", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 680017, monster_id = 21010901, pos = { x = 887.994, y = 343.190, z = -642.079 }, rot = { x = 0.000, y = 311.771, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 680018, monster_id = 21010901, pos = { x = 882.430, y = 342.713, z = -642.345 }, rot = { x = 0.000, y = 13.424, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 680023, monster_id = 28020601, pos = { x = 883.018, y = 333.773, z = -616.771 }, rot = { x = 0.000, y = 153.191, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 680024, monster_id = 28030403, pos = { x = 861.149, y = 342.734, z = -611.398 }, rot = { x = 0.000, y = 87.317, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 680008, gadget_id = 70220083, pos = { x = 872.708, y = 337.315, z = -594.979 }, rot = { x = 355.880, y = 59.854, z = 2.515 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 680009, gadget_id = 70220083, pos = { x = 882.038, y = 342.483, z = -645.697 }, rot = { x = 347.301, y = 41.337, z = 11.879 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 680010, gadget_id = 70220083, pos = { x = 877.892, y = 335.754, z = -638.109 }, rot = { x = 355.186, y = 185.411, z = 345.195 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 680011, gadget_id = 70220083, pos = { x = 905.897, y = 337.692, z = -626.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 680012, gadget_id = 70220083, pos = { x = 885.684, y = 327.334, z = -592.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 680013, gadget_id = 70220083, pos = { x = 910.968, y = 335.013, z = -608.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 680021, gadget_id = 70220083, pos = { x = 861.120, y = 342.413, z = -611.256 }, rot = { x = 0.440, y = 184.967, z = 5.145 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 680022, gadget_id = 70220083, pos = { x = 882.770, y = 333.293, z = -616.429 }, rot = { x = 0.440, y = 285.872, z = 5.145 }, level = 1, isOneoff = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 680014, shape = RegionShape.SPHERE, radius = 50, pos = { x = 885.060, y = 332.984, z = -619.867 }, area_id = 10 },
	{ config_id = 680020, shape = RegionShape.SPHERE, radius = 10, pos = { x = 882.453, y = 343.135, z = -644.597 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1680020, name = "ENTER_REGION_680020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_680020", action = "action_EVENT_ENTER_REGION_680020" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 680019, monster_id = 21030501, pos = { x = 886.025, y = 343.824, z = -644.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", isOneoff = true, climate_area_id = 1, area_id = 10 }
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
		monsters = { 680016 },
		gadgets = { 680008, 680009, 680010, 680011, 680012, 680013, 680021, 680022 },
		regions = { 680014, 680020 },
		triggers = { "ENTER_REGION_680020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 680001, 680002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 680006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 680007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 680015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 680005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 680003, 680004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 680024 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 680023 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { 680017, 680018 },
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
function condition_EVENT_ENTER_REGION_680020(context, evt)
	if evt.param1 ~= 680020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_680020(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008680, 10)
	
	return 0
end

require "V2_3/WinterCampGacha"