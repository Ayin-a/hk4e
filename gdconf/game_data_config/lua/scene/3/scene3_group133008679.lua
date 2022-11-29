-- 基础信息
local base_info = {
	group_id = 133008679
}

-- Trigger变量
local defs = {
	group_id = 133008679,
	challenge_id = 255,
	region_id = 679014,
	target_count = 8
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 679001, monster_id = 26060301, pos = { x = 779.053, y = 203.763, z = -1091.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "雷萤", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 679002, monster_id = 28030403, pos = { x = 758.678, y = 201.975, z = -1122.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 679003, monster_id = 28050103, pos = { x = 780.111, y = 204.573, z = -1120.954 }, rot = { x = 307.655, y = 27.047, z = 307.847 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 679004, monster_id = 28050103, pos = { x = 780.814, y = 203.578, z = -1121.212 }, rot = { x = 309.051, y = 22.041, z = 315.533 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 679005, monster_id = 26060301, pos = { x = 778.877, y = 203.488, z = -1088.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "雷萤", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 679006, monster_id = 28020303, pos = { x = 748.174, y = 201.876, z = -1094.882 }, rot = { x = 0.000, y = 307.894, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 679007, monster_id = 28020601, pos = { x = 779.869, y = 204.222, z = -1089.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 679017, monster_id = 28020601, pos = { x = 761.113, y = 202.096, z = -1087.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 679018, monster_id = 28030403, pos = { x = 739.424, y = 204.009, z = -1106.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 679019, monster_id = 28030403, pos = { x = 738.434, y = 204.604, z = -1106.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 679022, monster_id = 28020303, pos = { x = 769.883, y = 200.927, z = -1111.035 }, rot = { x = 0.000, y = 307.894, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 679023, monster_id = 28050103, pos = { x = 736.810, y = 205.575, z = -1085.656 }, rot = { x = 307.655, y = 27.047, z = 307.847 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 679024, monster_id = 21010201, pos = { x = 767.095, y = 200.561, z = -1110.323 }, rot = { x = 0.000, y = 104.360, z = 0.000 }, level = 30, drop_tag = "丘丘人", isOneoff = true, pose_id = 9010, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 679008, gadget_id = 70220083, pos = { x = 779.988, y = 203.013, z = -1089.526 }, rot = { x = 349.690, y = 358.727, z = 14.037 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 679009, gadget_id = 70220083, pos = { x = 748.079, y = 202.053, z = -1095.331 }, rot = { x = 0.000, y = 242.974, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 679010, gadget_id = 70220083, pos = { x = 760.828, y = 201.376, z = -1087.865 }, rot = { x = 357.879, y = 271.803, z = 357.071 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 679011, gadget_id = 70220083, pos = { x = 759.157, y = 201.082, z = -1122.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 679012, gadget_id = 70220083, pos = { x = 739.110, y = 204.154, z = -1106.737 }, rot = { x = 343.104, y = 239.756, z = 15.286 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 679013, gadget_id = 70220083, pos = { x = 780.104, y = 203.412, z = -1120.536 }, rot = { x = 6.606, y = 1.292, z = 22.111 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 679020, gadget_id = 70220083, pos = { x = 769.877, y = 200.872, z = -1111.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 679021, gadget_id = 70220083, pos = { x = 736.843, y = 204.395, z = -1085.874 }, rot = { x = 0.000, y = 217.726, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 679014, shape = RegionShape.SPHERE, radius = 50, pos = { x = 762.810, y = 200.575, z = -1102.987 }, area_id = 10 },
	{ config_id = 679016, shape = RegionShape.SPHERE, radius = 5, pos = { x = 779.378, y = 203.725, z = -1090.661 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1679016, name = "ENTER_REGION_679016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_679016", action = "action_EVENT_ENTER_REGION_679016" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 679015, monster_id = 26060301, pos = { x = 776.181, y = 203.033, z = -1091.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "雷萤", isOneoff = true, climate_area_id = 1, area_id = 10 }
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
		monsters = { 679024 },
		gadgets = { 679008, 679009, 679010, 679011, 679012, 679013, 679020, 679021 },
		regions = { 679014, 679016 },
		triggers = { "ENTER_REGION_679016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 679007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 679006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 679017 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 679002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 679018, 679019 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 679003, 679004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 679022 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 679023 },
		gadgets = { },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_679016(context, evt)
	if evt.param1 ~= 679016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_679016(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 679001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 679005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 679015, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V2_3/WinterCampGacha"