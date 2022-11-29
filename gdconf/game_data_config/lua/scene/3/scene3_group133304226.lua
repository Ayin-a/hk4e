-- 基础信息
local base_info = {
	group_id = 133304226
}

-- Trigger变量
local defs = {
	gadget_CoreID = 226005,
	monster_BossID = 226002,
	gadget_Point_1 = 226006,
	gadget_Point_2 = 226007,
	gadget_Point_3 = 226008,
	point_camera = 226010,
	gadget_lookEntity = 226005,
	look_duration = 5
}

-- DEFS_MISCS
local RequireSuite = {} --死域玩法的初始suit。若不填或不注入，默认走init_config.suite

local DeathField ={
	CoreID = defs.gadget_CoreID,
	BossID = defs.monster_BossID,
	BossSuite = 2,
	EndSuite = 3,
	PointList = {defs.gadget_Point_1,defs.gadget_Point_2,defs.gadget_Point_3},
}

local CameraLookSetting = {
    blend_type = 1,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = false,
    delay = 0,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[226002] = { config_id = 226002, monster_id = 26120101, pos = { x = -1667.147, y = 96.027, z = 2111.543 }, rot = { x = 0.000, y = 83.585, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 201, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[226004] = { config_id = 226004, gadget_id = 70211111, pos = { x = -1674.889, y = 96.877, z = 2117.889 }, rot = { x = 0.000, y = 143.571, z = 6.352 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	[226005] = { config_id = 226005, gadget_id = 70310193, pos = { x = -1671.448, y = 96.318, z = 2105.976 }, rot = { x = 3.800, y = 58.547, z = 2.678 }, level = 30, persistent = true, area_id = 21 },
	[226006] = { config_id = 226006, gadget_id = 70310195, pos = { x = -1681.039, y = 98.256, z = 2115.228 }, rot = { x = 342.813, y = 140.531, z = 21.168 }, level = 30, persistent = true, area_id = 21 },
	[226007] = { config_id = 226007, gadget_id = 70310195, pos = { x = -1657.049, y = 96.846, z = 2119.249 }, rot = { x = 345.014, y = 48.590, z = 18.157 }, level = 30, persistent = true, area_id = 21 },
	[226008] = { config_id = 226008, gadget_id = 70310195, pos = { x = -1641.809, y = 97.963, z = 2092.710 }, rot = { x = 347.332, y = 91.035, z = 19.502 }, level = 30, persistent = true, area_id = 21 },
	[226009] = { config_id = 226009, gadget_id = 70310192, pos = { x = -1674.343, y = 100.661, z = 2107.475 }, rot = { x = 357.751, y = 75.067, z = 0.630 }, level = 30, persistent = true, area_id = 21 },
	[226012] = { config_id = 226012, gadget_id = 70310191, pos = { x = -1657.428, y = 98.051, z = 2086.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[226013] = { config_id = 226013, gadget_id = 70310197, pos = { x = -1648.490, y = 98.167, z = 2095.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 21 },
	[226014] = { config_id = 226014, gadget_id = 70310197, pos = { x = -1670.455, y = 96.811, z = 2099.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	[226015] = { config_id = 226015, gadget_id = 70310197, pos = { x = -1657.747, y = 96.996, z = 2104.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	[226016] = { config_id = 226016, gadget_id = 70310197, pos = { x = -1661.151, y = 96.550, z = 2113.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	[226017] = { config_id = 226017, gadget_id = 70310198, pos = { x = -1653.756, y = 98.232, z = 2085.852 }, rot = { x = 0.000, y = 41.000, z = 0.000 }, level = 30, area_id = 21 },
	[226018] = { config_id = 226018, gadget_id = 70310197, pos = { x = -1667.747, y = 96.652, z = 2108.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	-- 用来通知任务7302902
	[226019] = { config_id = 226019, gadget_id = 70360001, pos = { x = -1671.448, y = 98.076, z = 2105.976 }, rot = { x = 0.000, y = 48.214, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 21 },
	[226020] = { config_id = 226020, gadget_id = 70310196, pos = { x = -1671.448, y = 97.526, z = 2105.976 }, rot = { x = 0.000, y = 307.691, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[226021] = { config_id = 226021, gadget_id = 70310196, pos = { x = -1671.448, y = 98.076, z = 2105.976 }, rot = { x = 0.000, y = 48.214, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[226022] = { config_id = 226022, gadget_id = 70310196, pos = { x = -1671.267, y = 98.059, z = 2106.210 }, rot = { x = 0.000, y = 117.578, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[226028] = { config_id = 226028, gadget_id = 70290544, pos = { x = -1662.257, y = 100.775, z = 2131.432 }, rot = { x = 0.000, y = 54.255, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1226001, name = "ANY_MONSTER_LIVE_226001", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_226001", action = "action_EVENT_ANY_MONSTER_LIVE_226001", trigger_count = 0 },
	{ config_id = 1226003, name = "ANY_MONSTER_DIE_226003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_226003", action = "action_EVENT_ANY_MONSTER_DIE_226003", trigger_count = 0 },
	-- 核心消失刷宝箱+通知操作台+杀死藤蔓门
	{ config_id = 1226023, name = "ANY_GADGET_DIE_226023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_226023", action = "action_EVENT_ANY_GADGET_DIE_226023" },
	-- 节点死对应特效消失
	{ config_id = 1226024, name = "GADGET_STATE_CHANGE_226024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_226024", action = "action_EVENT_GADGET_STATE_CHANGE_226024" },
	-- 节点死对应特效消失
	{ config_id = 1226025, name = "GADGET_STATE_CHANGE_226025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_226025", action = "action_EVENT_GADGET_STATE_CHANGE_226025" },
	-- 节点死对应特效消失
	{ config_id = 1226026, name = "GADGET_STATE_CHANGE_226026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_226026", action = "action_EVENT_GADGET_STATE_CHANGE_226026" },
	-- 核心交互播镜头
	{ config_id = 1226027, name = "LUA_NOTIFY_226027", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_226027" }
}

-- 点位
points = {
	[226010] = { config_id = 226010, pos = { x = -1653.057, y = 106.697, z = 2093.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 226011, gadget_id = 70330218, pos = { x = -1660.535, y = 95.331, z = 2136.271 }, rot = { x = 351.340, y = 201.090, z = 10.044 }, level = 30, isOneoff = true, persistent = true, area_id = 21 }
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
	end_suite = 3,
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
		gadgets = { 226005, 226006, 226007, 226008, 226009, 226012, 226013, 226017, 226020, 226021, 226022, 226028 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_226023", "GADGET_STATE_CHANGE_226024", "GADGET_STATE_CHANGE_226025", "GADGET_STATE_CHANGE_226026", "LUA_NOTIFY_226027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 226002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_226001", "ANY_MONSTER_DIE_226003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 226004, 226012, 226017, 226019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
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
function condition_EVENT_ANY_MONSTER_LIVE_226001(context, evt)
	if 226002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_226001(context, evt)
	-- 将configid为 226012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为226014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 226014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为226015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 226015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为226016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 226016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为226018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 226018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_226003(context, evt)
	if 226002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_226003(context, evt)
	-- 将configid为 226012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_226023(context, evt)
	if 226005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_226023(context, evt)
	-- 创建id为226019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 226019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为226004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 226004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 226028 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226028, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_226024(context, evt)
	if 226006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_226024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 226020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_226025(context, evt)
	if 226007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_226025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 226021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_226026(context, evt)
	if 226008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_226026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 226022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_226027(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"