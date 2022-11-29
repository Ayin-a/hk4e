-- 基础信息
local base_info = {
	group_id = 133008682
}

-- Trigger变量
local defs = {
	group_id = 133008682,
	challenge_id = 255,
	region_id = 682014,
	target_count = 6
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 682001, monster_id = 21020401, pos = { x = 1205.950, y = 255.604, z = -383.145 }, rot = { x = 0.000, y = 14.475, z = 0.000 }, level = 1, drop_tag = "丘丘岩盔王", isOneoff = true, pose_id = 401, climate_area_id = 1, area_id = 10 },
	{ config_id = 682002, monster_id = 28020601, pos = { x = 1239.518, y = 263.310, z = -403.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 682003, monster_id = 28050103, pos = { x = 1200.340, y = 273.690, z = -429.833 }, rot = { x = 345.010, y = 322.321, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 682004, monster_id = 28050103, pos = { x = 1201.043, y = 272.695, z = -430.091 }, rot = { x = 345.010, y = 322.321, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 682005, monster_id = 28030403, pos = { x = 1224.524, y = 274.228, z = -424.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 682006, monster_id = 28030403, pos = { x = 1197.025, y = 253.823, z = -377.213 }, rot = { x = 0.000, y = 52.162, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 682007, monster_id = 28020601, pos = { x = 1225.737, y = 251.599, z = -374.271 }, rot = { x = 0.000, y = 0.000, z = 338.970 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 682015, monster_id = 28030403, pos = { x = 1197.048, y = 254.556, z = -375.793 }, rot = { x = 0.000, y = 52.162, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 682016, monster_id = 28050103, pos = { x = 1220.594, y = 258.570, z = -389.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 682017, monster_id = 28050103, pos = { x = 1220.421, y = 257.448, z = -389.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 682018, monster_id = 26060301, pos = { x = 1243.510, y = 263.421, z = -404.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "雷萤", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 682019, monster_id = 26060301, pos = { x = 1237.747, y = 260.589, z = -397.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "雷萤", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 682020, monster_id = 26060301, pos = { x = 1238.639, y = 264.542, z = -405.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "雷萤", isOneoff = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 682008, gadget_id = 70220083, pos = { x = 1225.856, y = 250.668, z = -373.842 }, rot = { x = 349.927, y = 2.552, z = 352.667 }, level = 1, area_id = 10 },
	{ config_id = 682009, gadget_id = 70220083, pos = { x = 1239.517, y = 263.009, z = -403.216 }, rot = { x = 11.827, y = 337.850, z = 359.308 }, level = 1, area_id = 10 },
	{ config_id = 682010, gadget_id = 70220083, pos = { x = 1201.069, y = 272.695, z = -430.424 }, rot = { x = 323.651, y = 159.684, z = 347.405 }, level = 1, area_id = 10 },
	{ config_id = 682011, gadget_id = 70220083, pos = { x = 1196.583, y = 254.247, z = -376.519 }, rot = { x = 27.091, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 682012, gadget_id = 70220083, pos = { x = 1224.224, y = 274.165, z = -424.613 }, rot = { x = 351.691, y = 326.604, z = 341.028 }, level = 1, area_id = 10 },
	{ config_id = 682013, gadget_id = 70220083, pos = { x = 1220.428, y = 257.045, z = -390.149 }, rot = { x = 6.082, y = 327.741, z = 346.522 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 682014, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1218.327, y = 267.460, z = -403.630 }, area_id = 10 },
	{ config_id = 682021, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1240.763, y = 263.780, z = -402.714 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1682021, name = "ENTER_REGION_682021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_682021", action = "action_EVENT_ENTER_REGION_682021" }
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
		monsters = { 682001 },
		gadgets = { 682008, 682009, 682010, 682011, 682012, 682013 },
		regions = { 682014, 682021 },
		triggers = { "ENTER_REGION_682021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 682007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 682002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 682003, 682004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 682006, 682015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 682005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 682016, 682017 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 682018, 682019, 682020 },
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
function condition_EVENT_ENTER_REGION_682021(context, evt)
	if evt.param1 ~= 682021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_682021(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008682, 8)
	
	return 0
end

require "V2_3/WinterCampGacha"