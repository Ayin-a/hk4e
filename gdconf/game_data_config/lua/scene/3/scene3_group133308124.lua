-- 基础信息
local base_info = {
	group_id = 133308124
}

-- Trigger变量
local defs = {
	gadget_CoreID = 124007,
	monster_BossID = 124002,
	gadget_Point_1 = 124008,
	gadget_Point_2 = 124009,
	gadget_Point_3 = 124010,
	point_camera = 124003,
	gadget_lookEntity = 124007,
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
NoProtect = true,
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
	[124002] = { config_id = 124002, monster_id = 26120401, pos = { x = -1827.662, y = 213.513, z = 4625.366 }, rot = { x = 0.000, y = 329.667, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 101, area_id = 26, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[124004] = { config_id = 124004, monster_id = 26090901, pos = { x = -1825.661, y = 213.513, z = 4627.838 }, rot = { x = 0.000, y = 293.663, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 26 },
	[124005] = { config_id = 124005, monster_id = 26090901, pos = { x = -1831.312, y = 213.513, z = 4624.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[124007] = { config_id = 124007, gadget_id = 70310193, pos = { x = -1829.949, y = 213.442, z = 4628.978 }, rot = { x = 0.000, y = 147.689, z = -0.002 }, level = 32, persistent = true, area_id = 26 },
	[124008] = { config_id = 124008, gadget_id = 70310195, pos = { x = -1840.354, y = 213.117, z = 4635.185 }, rot = { x = 352.868, y = 213.181, z = 10.580 }, level = 32, area_id = 26 },
	[124009] = { config_id = 124009, gadget_id = 70310195, pos = { x = -1834.242, y = 213.589, z = 4618.583 }, rot = { x = 347.269, y = 36.822, z = 14.564 }, level = 32, area_id = 26 },
	[124010] = { config_id = 124010, gadget_id = 70310195, pos = { x = -1817.294, y = 213.487, z = 4626.956 }, rot = { x = 351.013, y = 226.474, z = 348.091 }, level = 32, area_id = 26 },
	-- 201任务完成条件
	[124014] = { config_id = 124014, gadget_id = 70360001, pos = { x = -1829.949, y = 213.442, z = 4628.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	[124015] = { config_id = 124015, gadget_id = 70330435, pos = { x = -1838.039, y = 213.435, z = 4625.912 }, rot = { x = 0.000, y = 88.764, z = 0.000 }, level = 32, area_id = 26 },
	[124016] = { config_id = 124016, gadget_id = 70310196, pos = { x = -1831.817, y = 214.174, z = 4630.967 }, rot = { x = 359.200, y = 296.682, z = 359.598 }, level = 32, area_id = 26 },
	[124017] = { config_id = 124017, gadget_id = 70310196, pos = { x = -1829.740, y = 214.305, z = 4627.496 }, rot = { x = 0.000, y = 205.663, z = 0.000 }, level = 32, area_id = 26 },
	[124018] = { config_id = 124018, gadget_id = 70290513, pos = { x = -1827.797, y = 213.968, z = 4629.318 }, rot = { x = 350.627, y = 107.555, z = 1.246 }, level = 32, area_id = 26 },
	[124023] = { config_id = 124023, gadget_id = 70310197, pos = { x = -1820.636, y = 214.095, z = 4622.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	[124033] = { config_id = 124033, gadget_id = 70310197, pos = { x = -1836.145, y = 213.762, z = 4634.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1124001, name = "GROUP_LOAD_124001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_124001" },
	-- 核心死操作台201
	{ config_id = 1124019, name = "VARIABLE_CHANGE_124019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_124019", action = "action_EVENT_VARIABLE_CHANGE_124019" },
	-- 保底操作台201
	{ config_id = 1124020, name = "GROUP_LOAD_124020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_124020", trigger_count = 0 },
	{ config_id = 1124021, name = "GROUP_REFRESH_124021", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_124021" },
	-- 节点死对应特效消失
	{ config_id = 1124025, name = "ANY_GADGET_DIE_124025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_124025", action = "action_EVENT_ANY_GADGET_DIE_124025" },
	-- 节点死对应特效消失
	{ config_id = 1124026, name = "ANY_GADGET_DIE_124026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_124026", action = "action_EVENT_ANY_GADGET_DIE_124026" },
	-- 节点死对应特效消失
	{ config_id = 1124027, name = "ANY_GADGET_DIE_124027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_124027", action = "action_EVENT_ANY_GADGET_DIE_124027" },
	-- 核心交互播镜头
	{ config_id = 1124028, name = "LUA_NOTIFY_124028", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_124028" }
}

-- 点位
points = {
	[124003] = { config_id = 124003, pos = { x = -1848.666, y = 224.751, z = 4633.857 }, rot = { x = 0.000, y = 117.648, z = 0.000 }, area_id = 26 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1124024, name = "VARIABLE_CHANGE_124024", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_124024", action = "" }
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
		gadgets = { 124007, 124008, 124009, 124010, 124014, 124015, 124016, 124017, 124018, 124023, 124033 },
		regions = { },
		triggers = { "GROUP_LOAD_124001", "VARIABLE_CHANGE_124019", "GROUP_REFRESH_124021", "ANY_GADGET_DIE_124025", "ANY_GADGET_DIE_124026", "ANY_GADGET_DIE_124027", "LUA_NOTIFY_124028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 124002, 124004, 124005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 124015 },
		regions = { },
		triggers = { "GROUP_LOAD_124020" },
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

-- 触发操作
function action_EVENT_GROUP_LOAD_124001(context, evt)
	-- 将configid为 %config_id% 的物件更改为状态 %state%
	if 0 ~= ScriptLib.ChangeDeathZone(context,0,{is_open = true}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_deatzone")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_124019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"PlayPhase"为3
	if ScriptLib.GetGroupVariableValue(context, "PlayPhase") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_124019(context, evt)
	-- 将configid为 124014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 124014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "siyu" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "siyu", 1, 133308669) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_124020(context, evt)
	-- 将configid为 124014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 124014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_124021(context, evt)
	-- 将configid为 %config_id% 的物件更改为状态 %state%
	if 0 ~= ScriptLib.ChangeDeathZone(context,0,{is_open = true}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_deatzone")
			return -1
		end 
	
	-- 将本组内变量名为 "PlayPhase" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "PlayPhase", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_124025(context, evt)
	if 124008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_124025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 124016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_124026(context, evt)
	if 124009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_124026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 124017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_124027(context, evt)
	if 124010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_124027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 124018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_124028(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"