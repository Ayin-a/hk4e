-- 基础信息
local base_info = {
	group_id = 177008079
}

-- Trigger变量
local defs = {
	group_ID = 177008079,
	gadget_airforce = 79001,
	gadget_windforce = 79002,
	route_01 = 700800001,
	gadget_Switch = 79003,
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
	{ config_id = 79001, gadget_id = 70690028, pos = { x = -322.688, y = 217.329, z = 367.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStop, route_id = 700800001, start_route = false, area_id = 210 },
	{ config_id = 79002, gadget_id = 70690030, pos = { x = -322.688, y = 217.329, z = 367.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
	-- 机关冥鱼出现
	{ config_id = 79008, shape = RegionShape.CUBIC, size = { x = 23.000, y = 1.000, z = 23.000 }, pos = { x = -323.238, y = 217.785, z = 365.202 }, area_id = 210 },
	-- 靠近冥鱼开始移动
	{ config_id = 79009, shape = RegionShape.SPHERE, radius = 2.8, pos = { x = -322.688, y = 220.329, z = 367.080 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1079005, name = "GADGET_CREATE_79005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_79005", action = "action_EVENT_GADGET_CREATE_79005", trigger_count = 0 },
	-- 到达后停止平台
	{ config_id = 1079007, name = "PLATFORM_REACH_POINT_79007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_79007", action = "action_EVENT_PLATFORM_REACH_POINT_79007", trigger_count = 0 },
	-- 机关冥鱼出现
	{ config_id = 1079008, name = "ENTER_REGION_79008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_79008", action = "action_EVENT_ENTER_REGION_79008", trigger_count = 0 },
	-- 靠近冥鱼开始移动
	{ config_id = 1079009, name = "ENTER_REGION_79009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_79009", action = "action_EVENT_ENTER_REGION_79009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "ismoving", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 79003, gadget_id = 70360309, pos = { x = -318.907, y = 316.320, z = 367.350 }, rot = { x = 0.000, y = 245.191, z = 0.000 }, level = 36, area_id = 210 }
	},
	regions = {
		{ config_id = 79012, shape = RegionShape.SPHERE, radius = 3, pos = { x = -322.688, y = 219.170, z = 367.080 }, area_id = 210 }
	},
	triggers = {
		{ config_id = 1079004, name = "LEVEL_TAG_CHANGE_79004", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "condition_EVENT_LEVEL_TAG_CHANGE_79004", action = "action_EVENT_LEVEL_TAG_CHANGE_79004", trigger_count = 0 },
		{ config_id = 1079006, name = "GROUP_LOAD_79006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_79006", trigger_count = 0 },
		{ config_id = 1079010, name = "ANY_GADGET_DIE_79010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_79010", action = "action_EVENT_ANY_GADGET_DIE_79010", trigger_count = 0 },
		{ config_id = 1079011, name = "GADGET_STATE_CHANGE_79011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79011", action = "action_EVENT_GADGET_STATE_CHANGE_79011", trigger_count = 0 },
		{ config_id = 1079012, name = "ENTER_REGION_79012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_79012", action = "action_EVENT_ENTER_REGION_79012", trigger_count = 0 }
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
		gadgets = { 79001 },
		regions = { 79008, 79009 },
		triggers = { "GADGET_CREATE_79005", "PLATFORM_REACH_POINT_79007", "ENTER_REGION_79008", "ENTER_REGION_79009" },
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
function condition_EVENT_GADGET_CREATE_79005(context, evt)
	if 79001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_79005(context, evt)
			ScriptLib.SetGroupVariableValue(context, "ismoving", 0)
			ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_airforce, 202)
			ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_windforce )
			ScriptLib.CreateGadget(context, { config_id = defs.gadget_windforce }) 
		return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_79007(context, evt)
	
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
function action_EVENT_PLATFORM_REACH_POINT_79007(context, evt)
		ScriptLib.StopPlatform(context, defs.gadget_airforce) 
		ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_airforce)
		ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_windforce)
		ScriptLib.SetGroupVariableValue(context, "ismoving", 0)
		
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_airforce })
		return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_79008(context, evt)
	if evt.param1 ~= 79008 then return false end
	
	-- 判断变量"ismoving"为1
	if ScriptLib.GetGroupVariableValue(context, "ismoving") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_79008(context, evt)
	--如果有冥鱼,并且在移动中, 则销毁创建
	if 1 == ScriptLib.GetGroupVariableValue(context, "ismoving") then 
					ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_airforce )
					ScriptLib.CreateGadget(context, { config_id = defs.gadget_airforce })
					ScriptLib.SetGroupVariableValue(context, "ismoving", 0)
	
			end
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_79009(context, evt)
		if evt.param1 ~= 79009 then return false end
		if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_airforce) and 
		202 ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_airforce) then
			return false
		end
		return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_79009(context, evt)
			ScriptLib.SetGroupVariableValue(context, "ismoving", 1)
			ScriptLib.CreateGadget(context, { config_id = defs.gadget_windforce })
			ScriptLib.StartPlatform(context, defs.gadget_airforce) 
			ScriptLib.PrintContextLog(context,"启动移动平台--完成")
			return 0
end

require "V2_4/EnvState"