-- 基础信息
local base_info = {
	group_id = 111101237
}

-- Trigger变量
local defs = {
	pointarray_route = 110100046
}

-- DEFS_MISCS
local EnvControlGadgets = {}
local DayAppearGadgets = {}
local NightAppearGadgets = {237009,237010,237011,237012,237013}

SolutionList = {
    {1,2,3,4,5},
    {1,3,5},
    {2,4},
    {1,4,5},
    {1,2,4}
}

Gates = {
    237009,
    237010,
    237011,
    237012,
    237013
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
	{ config_id = 237001, gadget_id = 70290170, pos = { x = 2766.782, y = 272.970, z = -1489.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 237002, gadget_id = 70290170, pos = { x = 2778.885, y = 273.006, z = -1496.839 }, rot = { x = 0.000, y = 55.666, z = 0.000 }, level = 1 },
	{ config_id = 237003, gadget_id = 70290170, pos = { x = 2775.177, y = 273.716, z = -1512.272 }, rot = { x = 0.000, y = 316.600, z = 0.000 }, level = 1 },
	{ config_id = 237004, gadget_id = 70290170, pos = { x = 2758.678, y = 273.619, z = -1512.716 }, rot = { x = 0.000, y = 45.730, z = 0.000 }, level = 1 },
	{ config_id = 237005, gadget_id = 70290170, pos = { x = 2754.816, y = 272.926, z = -1498.149 }, rot = { x = 0.000, y = 300.032, z = 0.000 }, level = 1 },
	{ config_id = 237007, gadget_id = 70211001, pos = { x = 2767.121, y = 272.109, z = -1499.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 237009, gadget_id = 70230069, pos = { x = 2759.339, y = 275.491, z = -1512.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 237010, gadget_id = 70230070, pos = { x = 2755.361, y = 273.654, z = -1498.706 }, rot = { x = 0.000, y = 117.788, z = 0.000 }, level = 1 },
	{ config_id = 237011, gadget_id = 70230071, pos = { x = 2767.334, y = 273.183, z = -1490.250 }, rot = { x = 0.000, y = 213.653, z = 0.000 }, level = 1 },
	{ config_id = 237012, gadget_id = 70230072, pos = { x = 2774.791, y = 274.458, z = -1511.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 237013, gadget_id = 70230073, pos = { x = 2778.255, y = 272.060, z = -1497.247 }, rot = { x = 0.000, y = 249.739, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1237006, name = "VARIABLE_CHANGE_237006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_237006", action = "action_EVENT_VARIABLE_CHANGE_237006" },
	{ config_id = 1237008, name = "VARIABLE_CHANGE_237008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_237008", action = "action_EVENT_VARIABLE_CHANGE_237008" }
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
		gadgets = { 237001, 237002, 237003, 237004, 237005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_237006", "VARIABLE_CHANGE_237008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_237006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"solution_state_1"为2
	if ScriptLib.GetGroupVariableValue(context, "solution_state_1") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_237006(context, evt)
	-- 创建id为237007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 237007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_237008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"solution_state_2"为2
	if ScriptLib.GetGroupVariableValue(context, "solution_state_2") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_237008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101240, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_4/SealedAltar"
require "V2_4/EnvState"