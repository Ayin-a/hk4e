-- 基础信息
local base_info = {
	group_id = 133001062
}

-- Trigger变量
local defs = {
	group_id = 133001062,
	challenge_id = 255,
	region_id = 62014,
	target_count = 6
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 62001, monster_id = 28020601, pos = { x = 1497.545, y = 266.917, z = -767.388 }, rot = { x = 3.538, y = 359.855, z = 345.142 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 62002, monster_id = 28050103, pos = { x = 1482.746, y = 271.505, z = -791.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 62003, monster_id = 28050103, pos = { x = 1453.270, y = 286.059, z = -795.772 }, rot = { x = 19.976, y = 359.443, z = 6.279 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 62004, monster_id = 28050103, pos = { x = 1454.003, y = 284.964, z = -796.165 }, rot = { x = 306.594, y = 30.240, z = 313.089 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 62005, monster_id = 28020303, pos = { x = 1508.820, y = 266.606, z = -792.037 }, rot = { x = 352.104, y = 151.787, z = 2.209 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 62006, monster_id = 28050103, pos = { x = 1482.127, y = 271.154, z = -791.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 62007, monster_id = 28020601, pos = { x = 1464.028, y = 272.675, z = -763.197 }, rot = { x = 3.538, y = 359.855, z = 345.142 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 62015, monster_id = 28030403, pos = { x = 1460.057, y = 274.208, z = -781.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 62016, monster_id = 28030403, pos = { x = 1459.475, y = 274.356, z = -782.055 }, rot = { x = 0.000, y = 307.637, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 62017, monster_id = 25010301, pos = { x = 1503.427, y = 267.237, z = -798.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "盗宝团", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 62018, monster_id = 25030201, pos = { x = 1506.247, y = 266.612, z = -791.521 }, rot = { x = 0.000, y = 87.933, z = 0.000 }, level = 1, drop_tag = "盗宝团", isOneoff = true, pose_id = 9002, climate_area_id = 1, area_id = 10 },
	{ config_id = 62019, monster_id = 25010501, pos = { x = 1507.953, y = 266.577, z = -795.472 }, rot = { x = 0.000, y = 268.591, z = 0.000 }, level = 1, drop_tag = "盗宝团", isOneoff = true, pose_id = 9004, climate_area_id = 1, area_id = 10 },
	{ config_id = 62021, monster_id = 23020101, pos = { x = 1474.703, y = 268.731, z = -763.675 }, rot = { x = 0.000, y = 328.334, z = 0.000 }, level = 1, drop_tag = "债务处理人", isOneoff = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 62008, gadget_id = 70220083, pos = { x = 1463.920, y = 273.235, z = -763.078 }, rot = { x = 0.831, y = 349.807, z = 344.758 }, level = 1, area_id = 10 },
	{ config_id = 62009, gadget_id = 70220083, pos = { x = 1497.679, y = 266.586, z = -767.725 }, rot = { x = 351.993, y = 179.929, z = 358.237 }, level = 1, area_id = 10 },
	{ config_id = 62010, gadget_id = 70220083, pos = { x = 1482.566, y = 269.329, z = -791.523 }, rot = { x = 5.791, y = 32.728, z = 5.813 }, level = 1, area_id = 10 },
	{ config_id = 62011, gadget_id = 70220083, pos = { x = 1459.940, y = 275.053, z = -782.084 }, rot = { x = 347.688, y = 4.080, z = 336.070 }, level = 1, area_id = 10 },
	{ config_id = 62012, gadget_id = 70220083, pos = { x = 1508.884, y = 266.468, z = -791.985 }, rot = { x = 352.104, y = 151.787, z = 2.209 }, level = 1, area_id = 10 },
	{ config_id = 62013, gadget_id = 70220083, pos = { x = 1453.301, y = 284.217, z = -795.521 }, rot = { x = 10.069, y = 222.207, z = 4.082 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 62014, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1476.566, y = 268.945, z = -783.293 }, area_id = 10 },
	{ config_id = 62022, shape = RegionShape.SPHERE, radius = 15, pos = { x = 1474.404, y = 268.816, z = -763.152 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1062022, name = "ENTER_REGION_62022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_62022", action = "action_EVENT_ENTER_REGION_62022" }
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
		monsters = { 62017, 62018, 62019 },
		gadgets = { 62008, 62009, 62010, 62011, 62012, 62013 },
		regions = { 62014, 62022 },
		triggers = { "ENTER_REGION_62022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 62007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 62001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 62002, 62006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 62015, 62016 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 62005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 62003, 62004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 62021 },
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
function condition_EVENT_ENTER_REGION_62022(context, evt)
	if evt.param1 ~= 62022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_62022(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001062, 8)
	
	return 0
end

require "V2_3/WinterCampGacha"