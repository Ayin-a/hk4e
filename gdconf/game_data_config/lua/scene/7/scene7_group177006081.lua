-- 基础信息
local base_info = {
	group_id = 177006081
}

-- Trigger变量
local defs = {
	group_ID = 177006081,
	gadget_airforce = 81001,
	gadget_windforce = 81002,
	route_01 = 700600011,
	gadget_Switch = 81003,
	reachpoint = 2
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {defs.gadget_Switch}
local Worktops = {}
local DayAppearGadgets = {}
local NightAppearGadgets = {}

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
	{ config_id = 81001, gadget_id = 70690028, pos = { x = 507.533, y = 130.259, z = -297.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStop, route_id = 700600011, start_route = false, area_id = 210 },
	{ config_id = 81002, gadget_id = 70690030, pos = { x = 507.533, y = 130.259, z = -297.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
	-- 机关冥鱼出现-enter region
	{ config_id = 81008, shape = RegionShape.CUBIC, size = { x = 23.000, y = 5.000, z = 23.000 }, pos = { x = 507.544, y = 128.576, z = -298.083 }, area_id = 210 },
	-- 靠近冥鱼开始移动
	{ config_id = 81009, shape = RegionShape.SPHERE, radius = 2.8, pos = { x = 507.533, y = 133.259, z = -297.605 }, area_id = 210 }
}

-- 触发器
triggers = {
	-- 到达后停止平台
	{ config_id = 1081007, name = "PLATFORM_REACH_POINT_81007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_81007", action = "action_EVENT_PLATFORM_REACH_POINT_81007", trigger_count = 0 },
	-- 机关冥鱼出现-enter region
	{ config_id = 1081008, name = "ENTER_REGION_81008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81008", action = "action_EVENT_ENTER_REGION_81008", trigger_count = 0 },
	-- 靠近冥鱼开始移动
	{ config_id = 1081009, name = "ENTER_REGION_81009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81009", action = "action_EVENT_ENTER_REGION_81009", trigger_count = 0 },
	-- 冥鱼变成203创生风场
	{ config_id = 1081011, name = "GADGET_CREATE_81011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_81011", action = "action_EVENT_GADGET_CREATE_81011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "ismoving", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 81003, gadget_id = 70360309, pos = { x = 511.313, y = 129.900, z = -297.335 }, rot = { x = 0.000, y = 245.191, z = 0.000 }, level = 36, area_id = 210 },
		{ config_id = 81013, gadget_id = 70220013, pos = { x = 510.643, y = 131.131, z = -307.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
	},
	regions = {
		{ config_id = 81012, shape = RegionShape.SPHERE, radius = 11, pos = { x = 507.429, y = 129.130, z = -297.489 }, area_id = 210 }
	},
	triggers = {
		{ config_id = 1081004, name = "LEVEL_TAG_CHANGE_81004", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "condition_EVENT_LEVEL_TAG_CHANGE_81004", action = "action_EVENT_LEVEL_TAG_CHANGE_81004", trigger_count = 0 },
		{ config_id = 1081005, name = "GADGET_CREATE_81005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_81005", action = "action_EVENT_GADGET_CREATE_81005", trigger_count = 0 },
		{ config_id = 1081006, name = "GROUP_LOAD_81006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_81006", trigger_count = 0 },
		{ config_id = 1081010, name = "ANY_GADGET_DIE_81010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_81010", action = "action_EVENT_ANY_GADGET_DIE_81010", trigger_count = 0 },
		{ config_id = 1081012, name = "LEAVE_REGION_81012", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_81012", trigger_count = 0 }
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
		gadgets = { 81001 },
		regions = { 81008, 81009 },
		triggers = { "PLATFORM_REACH_POINT_81007", "ENTER_REGION_81008", "ENTER_REGION_81009", "GADGET_CREATE_81011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_PLATFORM_REACH_POINT_81007(context, evt)
	
	ScriptLib.PrintContextLog(context,"开始reachpoint")
	
	
	-- 判断是gadgetid 为 25003的移动平台，是否到达了500600028 的路线中的 2 点
	
	if defs.gadget_airforce ~= evt.param1 then
	    return false
	end
	
	if defs.route_01 ~= evt.param2 then
	    return false
	end
	
	if defs.reachpoint ~= evt.param3 then
	    return false
	end
	
	
	
	ScriptLib.PrintContextLog(context,"155006188-结束判断reachpoint")
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_81007(context, evt)
		ScriptLib.StopPlatform(context, defs.gadget_airforce) 
		ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_airforce)
		ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_windforce)
		ScriptLib.SetGroupVariableValue(context, "ismoving", 0)
		
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_airforce })
		return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81008(context, evt)
	if evt.param1 ~= 81008 then return false end
	
	-- 判断变量"ismoving"为1
	if ScriptLib.GetGroupVariableValue(context, "ismoving") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81008(context, evt)
	--如果有冥鱼,并且在移动中, 则销毁创建
	if 1 == ScriptLib.GetGroupVariableValue(context, "ismoving") then 
					ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_airforce )
					ScriptLib.CreateGadget(context, { config_id = defs.gadget_airforce })
					ScriptLib.SetGroupVariableValue(context, "ismoving", 0)
	
			end
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81009(context, evt)
		if evt.param1 ~= 81009 then return false end
		if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_airforce) and 
		202 ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_airforce) then
			return false
		end
		return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81009(context, evt)
			ScriptLib.SetGroupVariableValue(context, "ismoving", 1)
			ScriptLib.CreateGadget(context, { config_id = defs.gadget_windforce })
			ScriptLib.StartPlatform(context, defs.gadget_airforce) 
			ScriptLib.PrintContextLog(context,"启动移动平台--完成")
			return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_81011(context, evt)
	if 81001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_81011(context, evt)
			ScriptLib.SetGroupVariableValue(context, "ismoving", 0)
			ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_airforce, 202)
			ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_windforce )
			ScriptLib.CreateGadget(context, { config_id = defs.gadget_windforce }) 
		return 0
end

require "V2_4/EnvState"