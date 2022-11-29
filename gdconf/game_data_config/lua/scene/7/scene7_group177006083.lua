-- 基础信息
local base_info = {
	group_id = 177006083
}

-- Trigger变量
local defs = {
	group_ID = 177006083,
	gadget_airforce = 83001,
	gadget_windforce = 83002,
	route_01 = 700600012,
	gadget_Switch = 83003,
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
	{ config_id = 83001, gadget_id = 70690028, pos = { x = 442.049, y = 142.773, z = -184.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStop, route_id = 700600012, start_route = false, area_id = 210 },
	{ config_id = 83002, gadget_id = 70690030, pos = { x = 442.703, y = 140.050, z = -186.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 83012, gadget_id = 70360001, pos = { x = 440.874, y = 141.230, z = -172.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
	-- 机关冥鱼出现-enter region
	{ config_id = 83008, shape = RegionShape.CUBIC, size = { x = 20.000, y = 1.000, z = 20.000 }, pos = { x = 443.411, y = 141.450, z = -185.334 }, area_id = 210 },
	-- 靠近冥鱼开始移动
	{ config_id = 83009, shape = RegionShape.SPHERE, radius = 2.8, pos = { x = 442.049, y = 144.441, z = -184.713 }, area_id = 210 }
}

-- 触发器
triggers = {
	-- group_load创建机关
	{ config_id = 1083006, name = "VARIABLE_CHANGE_83006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_83006", action = "action_EVENT_VARIABLE_CHANGE_83006", trigger_count = 0 },
	-- 到达后停止平台
	{ config_id = 1083007, name = "PLATFORM_REACH_POINT_83007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_83007", action = "action_EVENT_PLATFORM_REACH_POINT_83007", trigger_count = 0 },
	-- 机关冥鱼出现-enter region
	{ config_id = 1083008, name = "ENTER_REGION_83008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_83008", action = "action_EVENT_ENTER_REGION_83008", trigger_count = 0 },
	-- 靠近冥鱼开始移动
	{ config_id = 1083009, name = "ENTER_REGION_83009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_83009", action = "action_EVENT_ENTER_REGION_83009", trigger_count = 0 },
	-- 冥鱼变成203创生风场
	{ config_id = 1083011, name = "GADGET_CREATE_83011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_83011", action = "action_EVENT_GADGET_CREATE_83011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "flag", value = 0, no_refresh = true },
	{ config_id = 2, name = "ismoving", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 83003, gadget_id = 70360309, pos = { x = 446.484, y = 141.230, z = -185.876 }, rot = { x = 0.000, y = 245.191, z = 0.000 }, level = 36, area_id = 210 }
	},
	regions = {
		{ config_id = 83014, shape = RegionShape.SPHERE, radius = 3, pos = { x = 442.049, y = 145.773, z = -184.713 }, area_id = 210 }
	},
	triggers = {
		{ config_id = 1083004, name = "LEVEL_TAG_CHANGE_83004", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "condition_EVENT_LEVEL_TAG_CHANGE_83004", action = "action_EVENT_LEVEL_TAG_CHANGE_83004", trigger_count = 0 },
		{ config_id = 1083005, name = "GADGET_CREATE_83005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_83005", action = "action_EVENT_GADGET_CREATE_83005", trigger_count = 0 },
		{ config_id = 1083010, name = "ANY_GADGET_DIE_83010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_83010", action = "action_EVENT_ANY_GADGET_DIE_83010", trigger_count = 0 },
		{ config_id = 1083013, name = "GADGET_STATE_CHANGE_83013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_83013", action = "", trigger_count = 0 },
		{ config_id = 1083014, name = "ENTER_REGION_83014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_83014", action = "action_EVENT_ENTER_REGION_83014", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 83012 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_83006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 83001, 83012 },
		regions = { 83008, 83009 },
		triggers = { "PLATFORM_REACH_POINT_83007", "ENTER_REGION_83008", "ENTER_REGION_83009", "GADGET_CREATE_83011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_83006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为1
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_83006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 177006083, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_83007(context, evt)
	
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
function action_EVENT_PLATFORM_REACH_POINT_83007(context, evt)
		ScriptLib.StopPlatform(context, defs.gadget_airforce) 
		ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_airforce)
		ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_windforce)
		ScriptLib.SetGroupVariableValue(context, "ismoving", 0)
		
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_airforce })
		return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_83008(context, evt)
	if evt.param1 ~= 83008 then return false end
	
	-- 判断变量"ismoving"为1
	if ScriptLib.GetGroupVariableValue(context, "ismoving") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_83008(context, evt)
	--如果有冥鱼,并且在移动中, 则销毁创建
	if 1 == ScriptLib.GetGroupVariableValue(context, "ismoving") then 
					ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_airforce )
					ScriptLib.CreateGadget(context, { config_id = defs.gadget_airforce })
					ScriptLib.SetGroupVariableValue(context, "ismoving", 0)
	
			end
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_83009(context, evt)
		if evt.param1 ~= 83009 then return false end
		if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_airforce) and 
		202 ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_airforce) then
			return false
		end
		return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_83009(context, evt)
			ScriptLib.SetGroupVariableValue(context, "ismoving", 1)
			ScriptLib.CreateGadget(context, { config_id = defs.gadget_windforce })
			ScriptLib.StartPlatform(context, defs.gadget_airforce) 
			ScriptLib.PrintContextLog(context,"启动移动平台--完成")
			return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_83011(context, evt)
	if 83001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_83011(context, evt)
			ScriptLib.SetGroupVariableValue(context, "ismoving", 0)
			ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_airforce, 202)
			ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_windforce )
			ScriptLib.CreateGadget(context, { config_id = defs.gadget_windforce }) 
		return 0
end

require "V2_4/EnvState"