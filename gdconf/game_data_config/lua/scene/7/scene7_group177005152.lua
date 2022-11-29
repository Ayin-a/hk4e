-- 基础信息
local base_info = {
	group_id = 177005152
}

-- Trigger变量
local defs = {
	group_ID = 177005152,
	gadget_airforce = 152001,
	gadget_windforce = 152002,
	route_01 = 700500030,
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
	{ config_id = 152001, gadget_id = 70690028, pos = { x = 698.881, y = 240.914, z = 549.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStop, route_id = 700500030, start_route = false, area_id = 210 },
	{ config_id = 152002, gadget_id = 70690030, pos = { x = 698.881, y = 240.914, z = 549.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
	-- 触发冥鱼出现
	{ config_id = 152008, shape = RegionShape.CUBIC, size = { x = 23.000, y = 1.000, z = 23.000 }, pos = { x = 698.599, y = 241.171, z = 549.335 }, area_id = 210 },
	-- 靠近冥鱼开始移动
	{ config_id = 152009, shape = RegionShape.SPHERE, radius = 2.8, pos = { x = 698.881, y = 243.914, z = 549.236 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1152003, name = "GADGET_CREATE_152003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_152003", action = "action_EVENT_GADGET_CREATE_152003", trigger_count = 0 },
	-- 到达后停止平台
	{ config_id = 1152007, name = "PLATFORM_REACH_POINT_152007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_152007", action = "action_EVENT_PLATFORM_REACH_POINT_152007", trigger_count = 0 },
	-- 触发冥鱼出现
	{ config_id = 1152008, name = "ENTER_REGION_152008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_152008", action = "action_EVENT_ENTER_REGION_152008", trigger_count = 0 },
	-- 靠近冥鱼开始移动
	{ config_id = 1152009, name = "ENTER_REGION_152009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_152009", action = "action_EVENT_ENTER_REGION_152009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "ismoving", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1152010, name = "ANY_GADGET_DIE_152010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_152010", action = "action_EVENT_ANY_GADGET_DIE_152010", trigger_count = 0 },
		{ config_id = 1152011, name = "GADGET_STATE_CHANGE_152011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_152011", action = "action_EVENT_GADGET_STATE_CHANGE_152011", trigger_count = 0 }
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
		gadgets = { 152001 },
		regions = { 152008, 152009 },
		triggers = { "GADGET_CREATE_152003", "PLATFORM_REACH_POINT_152007", "ENTER_REGION_152008", "ENTER_REGION_152009" },
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
function condition_EVENT_GADGET_CREATE_152003(context, evt)
	if 152001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_152003(context, evt)
			ScriptLib.SetGroupVariableValue(context, "ismoving", 0)
			ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_airforce, 202)
			ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_windforce )
			ScriptLib.CreateGadget(context, { config_id = defs.gadget_windforce }) 
		return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_152007(context, evt)
	
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
function action_EVENT_PLATFORM_REACH_POINT_152007(context, evt)
		ScriptLib.StopPlatform(context, defs.gadget_airforce) 
		ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_airforce)
		ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_windforce)
		ScriptLib.SetGroupVariableValue(context, "ismoving", 0)
		
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_airforce })
		return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_152008(context, evt)
	if evt.param1 ~= 152008 then return false end
	
	-- 判断变量"ismoving"为1
	if ScriptLib.GetGroupVariableValue(context, "ismoving") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_152008(context, evt)
	--如果有冥鱼,并且在移动中, 则销毁创建
	if 1 == ScriptLib.GetGroupVariableValue(context, "ismoving") then 
					ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_airforce )
					ScriptLib.CreateGadget(context, { config_id = defs.gadget_airforce })
					ScriptLib.SetGroupVariableValue(context, "ismoving", 0)
	
			end
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_152009(context, evt)
		if evt.param1 ~= 152009 then return false end
		if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_airforce) and 
		202 ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_airforce) then
			return false
		end
		return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_152009(context, evt)
			ScriptLib.SetGroupVariableValue(context, "ismoving", 1)
			ScriptLib.CreateGadget(context, { config_id = defs.gadget_windforce })
			ScriptLib.StartPlatform(context, defs.gadget_airforce) 
			ScriptLib.PrintContextLog(context,"启动移动平台--完成")
			return 0
end

require "V2_4/EnvState"