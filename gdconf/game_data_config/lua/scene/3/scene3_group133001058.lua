-- 基础信息
local base_info = {
	group_id = 133001058
}

-- Trigger变量
local defs = {
	group_id = 133001058,
	challenge_id = 255,
	region_id = 58014,
	target_count = 8
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58007, monster_id = 28030403, pos = { x = 1371.414, y = 268.402, z = -1150.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 58008, monster_id = 28020601, pos = { x = 1365.018, y = 270.036, z = -1123.223 }, rot = { x = 0.000, y = 252.208, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 58009, monster_id = 28050103, pos = { x = 1340.209, y = 269.271, z = -1166.381 }, rot = { x = 0.000, y = 58.232, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 58010, monster_id = 28050103, pos = { x = 1340.360, y = 268.276, z = -1167.114 }, rot = { x = 0.000, y = 58.232, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 58011, monster_id = 28020601, pos = { x = 1381.312, y = 275.142, z = -1136.346 }, rot = { x = 0.000, y = 63.161, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 58012, monster_id = 28030403, pos = { x = 1370.698, y = 268.015, z = -1151.107 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 58013, monster_id = 28050103, pos = { x = 1380.089, y = 269.165, z = -1176.186 }, rot = { x = 339.883, y = 193.789, z = 355.175 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 58015, monster_id = 28020303, pos = { x = 1393.617, y = 270.506, z = -1176.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 58018, monster_id = 28020303, pos = { x = 1357.265, y = 267.953, z = -1130.114 }, rot = { x = 0.000, y = 64.576, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 58019, monster_id = 28030403, pos = { x = 1396.885, y = 271.022, z = -1138.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 58020, monster_id = 28030403, pos = { x = 1397.601, y = 271.409, z = -1137.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 58021, monster_id = 21011401, pos = { x = 1382.449, y = 274.961, z = -1133.926 }, rot = { x = 0.000, y = 209.067, z = 0.000 }, level = 30, drop_tag = "丘丘人", isOneoff = true, pose_id = 9010, climate_area_id = 1, area_id = 10 },
	{ config_id = 58022, monster_id = 21011401, pos = { x = 1379.685, y = 274.845, z = -1134.272 }, rot = { x = 0.000, y = 132.939, z = 0.000 }, level = 30, drop_tag = "丘丘人", isOneoff = true, pose_id = 9003, climate_area_id = 1, area_id = 10 },
	{ config_id = 58024, monster_id = 21010901, pos = { x = 1375.082, y = 268.387, z = -1176.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", isOneoff = true, pose_id = 32, climate_area_id = 1, area_id = 10 },
	{ config_id = 58025, monster_id = 21010901, pos = { x = 1383.212, y = 269.021, z = -1174.339 }, rot = { x = 0.000, y = 300.038, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", isOneoff = true, pose_id = 32, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 58001, gadget_id = 70220083, pos = { x = 1365.640, y = 269.954, z = -1122.826 }, rot = { x = 349.690, y = 358.727, z = 14.037 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 58002, gadget_id = 70220083, pos = { x = 1370.727, y = 268.348, z = -1150.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 58003, gadget_id = 70220083, pos = { x = 1380.326, y = 268.309, z = -1176.094 }, rot = { x = 20.664, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 58004, gadget_id = 70220083, pos = { x = 1393.746, y = 270.523, z = -1176.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 58005, gadget_id = 70220083, pos = { x = 1381.351, y = 274.310, z = -1136.431 }, rot = { x = 0.000, y = 63.161, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 58006, gadget_id = 70220083, pos = { x = 1340.073, y = 267.837, z = -1166.596 }, rot = { x = 0.000, y = 58.232, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 58016, gadget_id = 70220083, pos = { x = 1396.651, y = 271.392, z = -1137.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 58017, gadget_id = 70220083, pos = { x = 1357.249, y = 267.936, z = -1129.970 }, rot = { x = 359.203, y = 94.600, z = 359.935 }, level = 1, isOneoff = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 58014, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1378.076, y = 270.147, z = -1154.379 }, area_id = 10 },
	{ config_id = 58023, shape = RegionShape.SPHERE, radius = 8, pos = { x = 1379.585, y = 268.000, z = -1174.568 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1058023, name = "ENTER_REGION_58023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_58023", action = "action_EVENT_ENTER_REGION_58023" }
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
		monsters = { 58021, 58022 },
		gadgets = { 58001, 58002, 58003, 58004, 58005, 58006, 58016, 58017 },
		regions = { 58014, 58023 },
		triggers = { "ENTER_REGION_58023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 58008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 58007, 58012 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 58013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 58015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 58011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 58009, 58010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 58019, 58020 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 58018 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { 58024, 58025 },
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
function condition_EVENT_ENTER_REGION_58023(context, evt)
	if evt.param1 ~= 58023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_58023(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001058, 10)
	
	return 0
end

require "V2_3/WinterCampGacha"