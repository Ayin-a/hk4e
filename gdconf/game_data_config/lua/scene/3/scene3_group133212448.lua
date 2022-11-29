-- 基础信息
local base_info = {
	group_id = 133212448
}

-- Trigger变量
local defs = {
	group_ID = 133212448,
	trigger_playRegion = 448006,
	gadget_1 = 448002
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
	{ config_id = 448001, gadget_id = 70950068, pos = { x = -3529.293, y = 203.555, z = -2338.990 }, rot = { x = 1.788, y = 359.958, z = 357.316 }, level = 10, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 448002, gadget_id = 70290116, pos = { x = -3534.082, y = 202.295, z = -2358.446 }, rot = { x = 0.000, y = 32.051, z = 0.000 }, level = 10, area_id = 13 },
	{ config_id = 448003, gadget_id = 70950069, pos = { x = -3543.757, y = 201.762, z = -2364.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, persistent = true, area_id = 13 },
	{ config_id = 448004, gadget_id = 70950069, pos = { x = -3549.687, y = 203.427, z = -2348.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 13 },
	{ config_id = 448005, gadget_id = 70211101, pos = { x = -3537.188, y = 202.708, z = -2366.633 }, rot = { x = 6.611, y = 38.647, z = 352.165 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 448008, gadget_id = 70950068, pos = { x = -3527.020, y = 201.194, z = -2377.286 }, rot = { x = 1.788, y = 359.958, z = 357.316 }, level = 27, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 448009, gadget_id = 70220065, pos = { x = -3543.808, y = 202.184, z = -2364.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, drop_count = 1, area_id = 13 },
	{ config_id = 448010, gadget_id = 70220066, pos = { x = -3544.263, y = 202.269, z = -2363.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, drop_count = 1, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 448006, shape = RegionShape.SPHERE, radius = 30, pos = { x = -3530.373, y = 202.738, z = -2354.628 }, area_id = 13, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1448007, name = "VARIABLE_CHANGE_448007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_448007", action = "" },
	{ config_id = 1448011, name = "ANY_GADGET_DIE_448011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_448011", action = "action_EVENT_ANY_GADGET_DIE_448011" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 448012, monster_id = 21010101, pos = { x = -3548.329, y = 203.500, z = -2349.567 }, rot = { x = 0.000, y = 309.638, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 9010, area_id = 13 }
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
		gadgets = { 448001, 448002, 448004, 448008, 448009, 448010 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_448011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 448006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 448005 },
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
function condition_EVENT_VARIABLE_CHANGE_448007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_448011(context, evt)
	if 448009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_448011(context, evt)
	-- 创建id为448003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 448003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/ChargingPort"