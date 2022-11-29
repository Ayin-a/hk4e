-- 基础信息
local base_info = {
	group_id = 133213270
}

-- Trigger变量
local defs = {
	group_ID = 133213270,
	trigger_playRegion = 270006,
	gadget_1 = 270002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 270001, gadget_id = 70950068, pos = { x = -3842.104, y = 345.263, z = -3117.880 }, rot = { x = 0.000, y = 332.341, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 270002, gadget_id = 70290116, pos = { x = -3870.860, y = 356.844, z = -3143.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 12 },
	{ config_id = 270003, gadget_id = 70950069, pos = { x = -3865.198, y = 353.449, z = -3148.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 12 },
	{ config_id = 270004, gadget_id = 70950069, pos = { x = -3877.723, y = 358.172, z = -3144.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 12 },
	{ config_id = 270005, gadget_id = 70211111, pos = { x = -3872.542, y = 356.804, z = -3145.950 }, rot = { x = 0.000, y = 57.316, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	-- e
	{ config_id = 270009, gadget_id = 70900388, pos = { x = -3857.757, y = 350.278, z = -3136.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 270010, gadget_id = 70900388, pos = { x = -3860.958, y = 351.245, z = -3126.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	-- c
	{ config_id = 270011, gadget_id = 70350292, pos = { x = -3847.206, y = 346.100, z = -3140.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 12 },
	-- a
	{ config_id = 270012, gadget_id = 70350292, pos = { x = -3862.101, y = 351.943, z = -3146.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 12 },
	-- a
	{ config_id = 270013, gadget_id = 70900388, pos = { x = -3862.101, y = 352.020, z = -3146.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 270014, gadget_id = 70950068, pos = { x = -3840.300, y = 343.340, z = -3145.607 }, rot = { x = 0.000, y = 328.635, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	-- c
	{ config_id = 270015, gadget_id = 70900388, pos = { x = -3847.206, y = 346.108, z = -3140.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	-- b
	{ config_id = 270016, gadget_id = 70350292, pos = { x = -3866.739, y = 353.458, z = -3133.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 12 },
	-- d
	{ config_id = 270017, gadget_id = 70350292, pos = { x = -3850.923, y = 347.451, z = -3127.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 12 },
	-- b
	{ config_id = 270018, gadget_id = 70900388, pos = { x = -3866.739, y = 353.447, z = -3133.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 270019, gadget_id = 70900388, pos = { x = -3854.225, y = 348.862, z = -3148.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	-- d
	{ config_id = 270020, gadget_id = 70900388, pos = { x = -3850.923, y = 347.359, z = -3127.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	-- e
	{ config_id = 270021, gadget_id = 70350292, pos = { x = -3857.757, y = 350.352, z = -3136.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 270006, shape = RegionShape.SPHERE, radius = 30, pos = { x = -3856.775, y = 349.625, z = -3140.407 }, area_id = 12, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1270007, name = "VARIABLE_CHANGE_270007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_270007", action = "" },
	-- B
	{ config_id = 1270023, name = "GADGET_STATE_CHANGE_270023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270023", action = "action_EVENT_GADGET_STATE_CHANGE_270023" },
	-- C
	{ config_id = 1270024, name = "GADGET_STATE_CHANGE_270024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270024", action = "action_EVENT_GADGET_STATE_CHANGE_270024" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 270008, gadget_id = 70290101, pos = { x = -3838.526, y = 341.149, z = -3130.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 12 }
	},
	triggers = {
		{ config_id = 1270022, name = "GADGET_STATE_CHANGE_270022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270022", action = "action_EVENT_GADGET_STATE_CHANGE_270022" },
		{ config_id = 1270025, name = "GADGET_STATE_CHANGE_270025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270025", action = "action_EVENT_GADGET_STATE_CHANGE_270025" },
		{ config_id = 1270026, name = "GADGET_STATE_CHANGE_270026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270026", action = "action_EVENT_GADGET_STATE_CHANGE_270026" }
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
		monsters = { },
		gadgets = { 270001, 270002, 270003, 270004, 270009, 270010, 270013, 270014, 270015, 270018, 270019, 270020 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_270023", "GADGET_STATE_CHANGE_270024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 270006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 270005 },
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
function condition_EVENT_VARIABLE_CHANGE_270007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270023(context, evt)
	if 270018 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270023(context, evt)
	-- 创建id为270016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 270016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270024(context, evt)
	if 270015 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270024(context, evt)
	-- 创建id为270011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 270011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/ChargingPort"