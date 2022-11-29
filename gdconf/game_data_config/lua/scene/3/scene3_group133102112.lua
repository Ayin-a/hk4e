-- 基础信息
local base_info = {
	group_id = 133102112
}

-- Trigger变量
local defs = {
	gadget_operator_list = {112001,112002,112003,112004,112010,112016,112017,112018,112019},
	gadget_operator = 112012,
	summon_interval = 15,
	monster_boss = 112011,
	summon_region_list = {112013,112015,112014},
	aoe_interval = 30,
	stage_monster_list = {112005,112007,112006,112008},
	gadget_reward = 112021,
	look_pos = {x=1790,y=201,z=278},
	look_dur = 3
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[112005] = { config_id = 112005, monster_id = 20050202, pos = { x = 1809.213, y = 200.550, z = 271.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", area_id = 5 },
	[112006] = { config_id = 112006, monster_id = 20050202, pos = { x = 1767.323, y = 200.550, z = 283.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", area_id = 5 },
	[112007] = { config_id = 112007, monster_id = 20050702, pos = { x = 1782.213, y = 200.550, z = 258.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", area_id = 5 },
	[112008] = { config_id = 112008, monster_id = 20050702, pos = { x = 1794.014, y = 200.550, z = 299.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", area_id = 5 },
	[112011] = { config_id = 112011, monster_id = 20050102, pos = { x = 1789.737, y = 200.550, z = 277.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, title_id = 2211, special_name_id = 10015, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[112001] = { config_id = 112001, gadget_id = 70360001, pos = { x = 1809.075, y = 200.550, z = 271.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 1, area_id = 5 },
	[112002] = { config_id = 112002, gadget_id = 70360001, pos = { x = 1783.094, y = 200.550, z = 256.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, mark_flag = 3, area_id = 5 },
	[112003] = { config_id = 112003, gadget_id = 70360001, pos = { x = 1794.075, y = 200.550, z = 297.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, mark_flag = 7, area_id = 5 },
	[112004] = { config_id = 112004, gadget_id = 70360001, pos = { x = 1768.094, y = 200.550, z = 282.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, mark_flag = 9, area_id = 5 },
	[112010] = { config_id = 112010, gadget_id = 70360001, pos = { x = 1788.556, y = 200.550, z = 277.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 5, area_id = 5 },
	[112012] = { config_id = 112012, gadget_id = 70360149, pos = { x = 1788.556, y = 200.550, z = 277.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	[112016] = { config_id = 112016, gadget_id = 70360001, pos = { x = 1796.084, y = 200.550, z = 264.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 2, area_id = 5 },
	[112017] = { config_id = 112017, gadget_id = 70360001, pos = { x = 1801.575, y = 200.550, z = 284.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 4, area_id = 5 },
	[112018] = { config_id = 112018, gadget_id = 70360001, pos = { x = 1775.594, y = 200.550, z = 269.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 6, area_id = 5 },
	[112019] = { config_id = 112019, gadget_id = 70360001, pos = { x = 1781.034, y = 200.550, z = 290.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 8, area_id = 5 },
	[112021] = { config_id = 112021, gadget_id = 70360150, pos = { x = 1788.556, y = 200.550, z = 277.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, autopick = true, area_id = 5 },
	[112022] = { config_id = 112022, gadget_id = 42005010, pos = { x = 1782.570, y = 200.550, z = 256.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	[112023] = { config_id = 112023, gadget_id = 42005010, pos = { x = 1768.377, y = 200.550, z = 283.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	[112024] = { config_id = 112024, gadget_id = 42005010, pos = { x = 1793.139, y = 200.550, z = 297.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
	[112009] = { config_id = 112009, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1789.160, y = 200.550, z = 277.844 }, area_id = 5 },
	[112013] = { config_id = 112013, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1783.094, y = 200.550, z = 256.463 }, area_id = 5 },
	[112014] = { config_id = 112014, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1794.075, y = 200.550, z = 297.444 }, area_id = 5 },
	[112015] = { config_id = 112015, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1768.434, y = 200.550, z = 282.345 }, area_id = 5 },
	[112026] = { config_id = 112026, shape = RegionShape.CUBIC, size = { x = 70.000, y = 5.000, z = 70.000 }, pos = { x = 1787.425, y = 203.000, z = 275.011 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1112026, name = "ENTER_REGION_112026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_112026", action = "action_EVENT_ENTER_REGION_112026" }
}

-- 点位
points = {
	{ config_id = 112020, pos = { x = 1694.263, y = 203.019, z = 287.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 5 },
	{ config_id = 112025, pos = { x = 1788.333, y = 200.550, z = 280.149 }, rot = { x = 0.000, y = 178.000, z = 0.000 }, area_id = 5 }
}

-- 变量
variables = {
	{ config_id = 1, name = "is_in_replacement", value = 0, no_refresh = true },
	{ config_id = 2, name = "first_see", value = 1, no_refresh = true }
}

-- 视野组
sight_groups = {
	{ 112005, 112006, 112007, 112008, 112011, 112001, 112002, 112003, 112004, 112010, 112016, 112017, 112018, 112019 }
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
		-- description = 初始suite,
		monsters = { },
		gadgets = { 112001, 112002, 112003, 112004, 112010, 112016, 112017, 112018, 112019 },
		regions = { 112009, 112026 },
		triggers = { "ENTER_REGION_112026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 怪物序列1,
		monsters = { 112005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 怪物序列2,
		monsters = { 112007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 怪物序列3,
		monsters = { 112006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 怪物序列4,
		monsters = { 112008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 原螃蟹备用,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 机关本体,
		monsters = { },
		gadgets = { 112012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 触发圈2,
		monsters = { },
		gadgets = { 112022 },
		regions = { 112013 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 触发圈3,
		monsters = { },
		gadgets = { 112023 },
		regions = { 112015 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 触发圈4,
		monsters = { },
		gadgets = { 112024 },
		regions = { 112014 },
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
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 112021 },
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
function condition_EVENT_ENTER_REGION_112026(context, evt)
	if evt.param1 ~= 112026 then return false end
	
	if 1 ~= ScriptLib.GetGroupVariableValue(context, "first_see") then
		return false
	end
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_112026(context, evt)
	ScriptLib.SetGroupVariableValue(context, "first_see", 0)
	ScriptLib.BeginCameraSceneLook(context, {look_pos = defs.look_pos, duration = defs.look_dur, is_force = true, is_broadcast = false})
	ScriptLib.ShowReminderRadius(context, 600000, { x = 1787.425, y = 202.55, z = 275.0107 }, 50) 
	return 0
end

require "Oceanid_Boss_1_4"