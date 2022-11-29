-- 基础信息
local base_info = {
	group_id = 133304206
}

-- Trigger变量
local defs = {
	gadget_CoreID = 206005,
	monster_BossID = 206002,
	gadget_Point_1 = 206006,
	gadget_Point_2 = 206007,
	gadget_Point_3 = 206008,
	point_camera = 206001,
	gadget_lookEntity = 206010,
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
    is_allow_input = true,
    delay = 0,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[206002] = { config_id = 206002, monster_id = 26120201, pos = { x = -1224.303, y = 155.979, z = 2163.246 }, rot = { x = 0.000, y = 143.357, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 201, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[206004] = { config_id = 206004, gadget_id = 70211111, pos = { x = -1227.728, y = 156.332, z = 2163.993 }, rot = { x = 5.885, y = 156.112, z = 2.267 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	[206005] = { config_id = 206005, gadget_id = 70310193, pos = { x = -1234.755, y = 156.889, z = 2159.223 }, rot = { x = 0.000, y = 83.011, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[206006] = { config_id = 206006, gadget_id = 70310195, pos = { x = -1238.520, y = 158.628, z = 2157.858 }, rot = { x = 354.133, y = 168.000, z = 13.800 }, level = 30, persistent = true, area_id = 21 },
	[206007] = { config_id = 206007, gadget_id = 70310195, pos = { x = -1226.471, y = 156.376, z = 2165.777 }, rot = { x = 4.775, y = 133.050, z = 2.096 }, level = 30, persistent = true, area_id = 21 },
	[206008] = { config_id = 206008, gadget_id = 70310195, pos = { x = -1217.740, y = 154.041, z = 2162.050 }, rot = { x = 2.859, y = 275.162, z = 0.212 }, level = 30, persistent = true, area_id = 21 },
	-- 死域解除的注目镜头目标
	[206010] = { config_id = 206010, gadget_id = 70360001, pos = { x = -1224.303, y = 157.871, z = 2163.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[206012] = { config_id = 206012, gadget_id = 70310191, pos = { x = -1223.445, y = 154.842, z = 2151.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[206013] = { config_id = 206013, gadget_id = 70310197, pos = { x = -1224.292, y = 156.084, z = 2155.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[206014] = { config_id = 206014, gadget_id = 70310197, pos = { x = -1233.286, y = 156.732, z = 2148.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	[206016] = { config_id = 206016, gadget_id = 70310197, pos = { x = -1219.155, y = 155.320, z = 2168.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	[206017] = { config_id = 206017, gadget_id = 70310198, pos = { x = -1212.820, y = 153.267, z = 2165.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[206020] = { config_id = 206020, gadget_id = 70310196, pos = { x = -1235.100, y = 160.471, z = 2158.478 }, rot = { x = 6.404, y = 261.590, z = 2.069 }, level = 30, persistent = true, area_id = 21 },
	[206021] = { config_id = 206021, gadget_id = 70310196, pos = { x = -1234.227, y = 158.253, z = 2159.541 }, rot = { x = 6.003, y = 51.161, z = 90.335 }, level = 30, persistent = true, area_id = 21 },
	[206022] = { config_id = 206022, gadget_id = 70310196, pos = { x = -1234.429, y = 158.123, z = 2159.931 }, rot = { x = 8.530, y = 85.704, z = 28.108 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1206003, name = "MONSTER_BATTLE_206003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_206003", action = "action_EVENT_MONSTER_BATTLE_206003" },
	{ config_id = 1206009, name = "ANY_MONSTER_DIE_206009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_206009", action = "action_EVENT_ANY_MONSTER_DIE_206009" },
	-- 核心交互播镜头
	{ config_id = 1206011, name = "LUA_NOTIFY_206011", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_206011" },
	-- 核心消失刷宝箱
	{ config_id = 1206023, name = "ANY_GADGET_DIE_206023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_206023", action = "action_EVENT_ANY_GADGET_DIE_206023" },
	-- 节点死对应特效消失
	{ config_id = 1206024, name = "GADGET_STATE_CHANGE_206024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_206024", action = "action_EVENT_GADGET_STATE_CHANGE_206024" },
	-- 节点死对应特效消失
	{ config_id = 1206025, name = "GADGET_STATE_CHANGE_206025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_206025", action = "action_EVENT_GADGET_STATE_CHANGE_206025" },
	-- 节点死对应特效消失
	{ config_id = 1206026, name = "GADGET_STATE_CHANGE_206026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_206026", action = "action_EVENT_GADGET_STATE_CHANGE_206026" }
}

-- 点位
points = {
	[206001] = { config_id = 206001, pos = { x = -1212.958, y = 157.635, z = 2170.698 }, rot = { x = 0.000, y = 238.738, z = 0.000 }, area_id = 21 }
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
		gadgets = { 206005, 206006, 206007, 206008, 206010, 206012, 206017, 206020, 206021, 206022 },
		regions = { },
		triggers = { "LUA_NOTIFY_206011", "ANY_GADGET_DIE_206023", "GADGET_STATE_CHANGE_206024", "GADGET_STATE_CHANGE_206025", "GADGET_STATE_CHANGE_206026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 206002 },
		gadgets = { 206013, 206014, 206016 },
		regions = { },
		triggers = { "MONSTER_BATTLE_206003", "ANY_MONSTER_DIE_206009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 206004, 206012, 206017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 206004 },
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
function condition_EVENT_MONSTER_BATTLE_206003(context, evt)
	if 206002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_206003(context, evt)
	-- 将configid为 206012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 206012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_206009(context, evt)
	if 206002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_206009(context, evt)
	-- 将configid为 206012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 206012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_206011(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_206023(context, evt)
	if 206005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_206023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304206, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_206024(context, evt)
	if 206006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_206024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 206020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_206025(context, evt)
	if 206007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_206025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 206021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_206026(context, evt)
	if 206008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_206026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 206022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"