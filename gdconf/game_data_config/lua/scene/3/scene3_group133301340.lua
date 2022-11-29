-- 基础信息
local base_info = {
	group_id = 133301340
}

-- Trigger变量
local defs = {
	gadget_CoreID = 340005,
	monster_BossID = 340002,
	gadget_Point_1 = 340006,
	gadget_Point_2 = 340007,
	gadget_Point_3 = 340008,
	point_camera = 340003,
	gadget_lookEntity = 340019,
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
    blend_type = 0,
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
	[340002] = { config_id = 340002, monster_id = 26120101, pos = { x = -979.076, y = 213.439, z = 3774.547 }, rot = { x = 0.000, y = 109.075, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 201, area_id = 23 },
	[340014] = { config_id = 340014, monster_id = 26120101, pos = { x = -980.916, y = 210.875, z = 3761.198 }, rot = { x = 0.000, y = 109.075, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, isElite = true, pose_id = 201, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[340004] = { config_id = 340004, gadget_id = 70211111, pos = { x = -956.011, y = 210.028, z = 3756.736 }, rot = { x = 358.943, y = 286.173, z = 347.766 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[340005] = { config_id = 340005, gadget_id = 70310194, pos = { x = -961.615, y = 213.498, z = 3759.514 }, rot = { x = 0.000, y = 107.387, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[340006] = { config_id = 340006, gadget_id = 70310195, pos = { x = -970.105, y = 210.292, z = 3777.958 }, rot = { x = 341.539, y = 290.968, z = 20.340 }, level = 30, persistent = true, area_id = 23 },
	[340007] = { config_id = 340007, gadget_id = 70310195, pos = { x = -992.277, y = 210.283, z = 3759.234 }, rot = { x = 13.242, y = 103.909, z = 8.572 }, level = 30, persistent = true, area_id = 23 },
	[340008] = { config_id = 340008, gadget_id = 70310195, pos = { x = -983.056, y = 219.337, z = 3766.982 }, rot = { x = 354.584, y = 8.054, z = 343.689 }, level = 30, persistent = true, area_id = 23 },
	[340009] = { config_id = 340009, gadget_id = 70310192, pos = { x = -958.868, y = 211.583, z = 3755.810 }, rot = { x = 344.247, y = 9.635, z = 1.112 }, level = 30, persistent = true, area_id = 23 },
	[340010] = { config_id = 340010, gadget_id = 70310197, pos = { x = -965.459, y = 210.740, z = 3761.358 }, rot = { x = 0.000, y = 294.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[340011] = { config_id = 340011, gadget_id = 70310192, pos = { x = -980.909, y = 215.905, z = 3765.418 }, rot = { x = 358.037, y = 292.999, z = 2.254 }, level = 30, persistent = true, area_id = 23 },
	[340012] = { config_id = 340012, gadget_id = 70310191, pos = { x = -982.507, y = 208.500, z = 3763.757 }, rot = { x = 0.000, y = 327.798, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	[340013] = { config_id = 340013, gadget_id = 70310197, pos = { x = -980.838, y = 217.987, z = 3765.859 }, rot = { x = 0.000, y = 294.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[340015] = { config_id = 340015, gadget_id = 70220005, pos = { x = -979.784, y = 212.501, z = 3776.978 }, rot = { x = 333.289, y = 359.666, z = 355.373 }, level = 30, area_id = 23 },
	[340016] = { config_id = 340016, gadget_id = 70220005, pos = { x = -980.538, y = 208.685, z = 3759.594 }, rot = { x = 14.849, y = 359.534, z = 356.424 }, level = 30, area_id = 23 },
	[340017] = { config_id = 340017, gadget_id = 70310198, pos = { x = -948.550, y = 209.324, z = 3762.748 }, rot = { x = 357.898, y = 121.114, z = 18.261 }, level = 30, area_id = 23 },
	[340018] = { config_id = 340018, gadget_id = 70310198, pos = { x = -994.781, y = 213.855, z = 3768.113 }, rot = { x = 16.368, y = 77.855, z = 0.208 }, level = 30, area_id = 23 },
	[340019] = { config_id = 340019, gadget_id = 70360001, pos = { x = -960.544, y = 217.245, z = 3768.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	-- 6
	[340020] = { config_id = 340020, gadget_id = 70310196, pos = { x = -964.368, y = 211.887, z = 3767.289 }, rot = { x = 0.000, y = 337.397, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 7
	[340021] = { config_id = 340021, gadget_id = 70310196, pos = { x = -973.476, y = 212.905, z = 3760.333 }, rot = { x = 2.558, y = 267.098, z = 0.181 }, level = 30, persistent = true, area_id = 23 },
	[340022] = { config_id = 340022, gadget_id = 70310196, pos = { x = -968.530, y = 215.242, z = 3762.202 }, rot = { x = 343.297, y = 289.379, z = 358.070 }, level = 30, persistent = true, area_id = 23 },
	[340027] = { config_id = 340027, gadget_id = 70220103, pos = { x = -974.563, y = 223.461, z = 3763.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 核心交互播镜头
	{ config_id = 1340001, name = "LUA_NOTIFY_340001", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_340001", trigger_count = 0 },
	-- 核心消失刷宝箱
	{ config_id = 1340023, name = "ANY_GADGET_DIE_340023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_340023", action = "action_EVENT_ANY_GADGET_DIE_340023" },
	-- 节点死对应特效消失
	{ config_id = 1340024, name = "GADGET_STATE_CHANGE_340024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_340024", action = "action_EVENT_GADGET_STATE_CHANGE_340024" },
	-- 节点死对应特效消失
	{ config_id = 1340025, name = "GADGET_STATE_CHANGE_340025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_340025", action = "action_EVENT_GADGET_STATE_CHANGE_340025" },
	-- 节点死对应特效消失
	{ config_id = 1340026, name = "GADGET_STATE_CHANGE_340026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_340026", action = "action_EVENT_GADGET_STATE_CHANGE_340026" }
}

-- 点位
points = {
	[340003] = { config_id = 340003, pos = { x = -955.865, y = 221.460, z = 3776.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
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
		gadgets = { 340005, 340006, 340007, 340008, 340009, 340010, 340011, 340012, 340013, 340017, 340018, 340019, 340020, 340021, 340022, 340027 },
		regions = { },
		triggers = { "LUA_NOTIFY_340001", "ANY_GADGET_DIE_340023", "GADGET_STATE_CHANGE_340024", "GADGET_STATE_CHANGE_340025", "GADGET_STATE_CHANGE_340026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 340002, 340014 },
		gadgets = { 340015, 340016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 340004, 340017, 340018, 340027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 340004 },
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

-- 触发操作
function action_EVENT_LUA_NOTIFY_340001(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_340023(context, evt)
	if 340005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_340023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301340, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_340024(context, evt)
	if 340006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_340024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 340020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_340025(context, evt)
	if 340007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_340025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 340021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_340026(context, evt)
	if 340008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_340026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 340022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"