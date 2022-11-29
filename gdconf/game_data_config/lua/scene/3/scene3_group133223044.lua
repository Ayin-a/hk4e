-- 基础信息
local base_info = {
	group_id = 133223044
}

-- Trigger变量
local defs = {
	group_ID = 133223044,
	trigger_playRegion = 44006,
	gadget_1 = 44002
}

-- DEFS_MISCS
endLinkMap = 
{
{inPort = {44010},outPort = {44009}},
{inPort = {44005},outPort = {44003}},
{inPort = {44014},outPort = {44013}}
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
	{ config_id = 44001, gadget_id = 70950068, pos = { x = -5885.660, y = 166.411, z = -2665.919 }, rot = { x = 0.000, y = 31.284, z = 0.000 }, level = 10, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 44002, gadget_id = 70290116, pos = { x = -5933.651, y = 165.612, z = -2655.787 }, rot = { x = 0.000, y = 32.808, z = 0.000 }, level = 10, area_id = 18 },
	{ config_id = 44003, gadget_id = 70330136, pos = { x = -5931.899, y = 165.557, z = -2656.869 }, rot = { x = 0.000, y = 33.232, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 44004, gadget_id = 70950069, pos = { x = -5887.808, y = 165.604, z = -2669.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 18 },
	{ config_id = 44005, gadget_id = 70330136, pos = { x = -5916.367, y = 165.777, z = -2666.432 }, rot = { x = 0.000, y = 33.755, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 44008, gadget_id = 70950068, pos = { x = -5922.674, y = 169.556, z = -2617.556 }, rot = { x = 0.000, y = 35.073, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 44009, gadget_id = 70330136, pos = { x = -5906.758, y = 165.610, z = -2663.182 }, rot = { x = 0.000, y = 30.046, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 44010, gadget_id = 70330136, pos = { x = -5890.186, y = 166.043, z = -2672.924 }, rot = { x = 0.000, y = 30.126, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 44011, gadget_id = 70950069, pos = { x = -5925.403, y = 168.953, z = -2621.577 }, rot = { x = 355.669, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 44012, gadget_id = 70950069, pos = { x = -5932.622, y = 167.961, z = -2647.936 }, rot = { x = 0.000, y = 0.000, z = 333.245 }, level = 33, area_id = 18 },
	{ config_id = 44013, gadget_id = 70330136, pos = { x = -5932.000, y = 169.345, z = -2645.100 }, rot = { x = 356.744, y = 22.312, z = 0.961 }, level = 33, area_id = 18 },
	{ config_id = 44014, gadget_id = 70330136, pos = { x = -5927.184, y = 169.740, z = -2625.440 }, rot = { x = 3.449, y = 30.555, z = 0.338 }, level = 33, area_id = 18 },
	{ config_id = 44015, gadget_id = 70950069, pos = { x = -5920.090, y = 165.359, z = -2648.683 }, rot = { x = 319.894, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 44006, shape = RegionShape.POLYGON, pos = { x = -5914.428, y = 170.468, z = -2646.546 }, height = 46.826, point_array = { { x = -5891.262, y = -2690.838 }, { x = -5876.387, y = -2653.086 }, { x = -5914.083, y = -2646.054 }, { x = -5903.941, y = -2629.177 }, { x = -5905.508, y = -2622.032 }, { x = -5925.156, y = -2602.253 }, { x = -5946.621, y = -2617.745 }, { x = -5932.451, y = -2631.026 }, { x = -5952.470, y = -2665.898 } }, area_id = 18, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1044007, name = "VARIABLE_CHANGE_44007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_44007", action = "action_EVENT_VARIABLE_CHANGE_44007" },
	-- 解谜保底
	{ config_id = 1044016, name = "GROUP_LOAD_44016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_44016", action = "action_EVENT_GROUP_LOAD_44016", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 44001, 44002, 44003, 44004, 44005, 44008, 44009, 44010, 44011, 44012, 44013, 44014, 44015 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_44007", "GROUP_LOAD_44016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 44006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_VARIABLE_CHANGE_44007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_44007(context, evt)
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "start", 1, 133223065) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_44016(context, evt)
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_44016(context, evt)
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "start", 1, 133223065) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/ChargingPort"
require "V2_2/Circuit"