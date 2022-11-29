-- 基础信息
local base_info = {
	group_id = 133304214
}

-- Trigger变量
local defs = {
	gadget_CoreID = 214005,
	monster_BossID = 214002,
	gadget_Point_1 = 214006,
	gadget_Point_2 = 214007,
	gadget_Point_3 = 214008,
	point_camera = 214004,
	gadget_lookEntity = 214005,
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
	[214002] = { config_id = 214002, monster_id = 26120301, pos = { x = -1211.899, y = 176.920, z = 2970.276 }, rot = { x = 0.000, y = 216.651, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[214001] = { config_id = 214001, gadget_id = 70310191, pos = { x = -1201.566, y = 176.913, z = 2954.170 }, rot = { x = 0.000, y = 330.679, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	[214003] = { config_id = 214003, gadget_id = 70310197, pos = { x = -1193.953, y = 178.265, z = 2979.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	[214005] = { config_id = 214005, gadget_id = 70310193, pos = { x = -1215.908, y = 176.966, z = 2972.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[214006] = { config_id = 214006, gadget_id = 70310195, pos = { x = -1195.771, y = 177.866, z = 2980.727 }, rot = { x = 0.000, y = 227.546, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[214007] = { config_id = 214007, gadget_id = 70310195, pos = { x = -1198.855, y = 178.246, z = 2958.126 }, rot = { x = 0.000, y = 310.286, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[214008] = { config_id = 214008, gadget_id = 70310195, pos = { x = -1217.631, y = 176.918, z = 2950.324 }, rot = { x = 16.130, y = 344.713, z = 2.780 }, level = 30, persistent = true, area_id = 21 },
	[214011] = { config_id = 214011, gadget_id = 70310197, pos = { x = -1208.871, y = 177.671, z = 2977.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	[214015] = { config_id = 214015, gadget_id = 70310198, pos = { x = -1223.978, y = 177.116, z = 2948.427 }, rot = { x = 0.000, y = 61.889, z = 0.000 }, level = 1, area_id = 21 },
	[214020] = { config_id = 214020, gadget_id = 70310196, pos = { x = -1214.820, y = 179.850, z = 2972.861 }, rot = { x = 0.000, y = 66.209, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[214021] = { config_id = 214021, gadget_id = 70310196, pos = { x = -1215.667, y = 179.549, z = 2970.990 }, rot = { x = 0.000, y = 128.849, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[214022] = { config_id = 214022, gadget_id = 70310196, pos = { x = -1216.567, y = 179.685, z = 2971.385 }, rot = { x = 0.000, y = 183.487, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1214009, name = "GROUP_REFRESH_214009", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_214009" },
	-- 核心交互播镜头
	{ config_id = 1214010, name = "LUA_NOTIFY_214010", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_214010" },
	{ config_id = 1214012, name = "GROUP_LOAD_214012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_214012", trigger_count = 0 },
	-- 核心消失任务完成
	{ config_id = 1214023, name = "VARIABLE_CHANGE_214023", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_214023", action = "action_EVENT_VARIABLE_CHANGE_214023" },
	-- 节点死对应特效消失
	{ config_id = 1214024, name = "ANY_GADGET_DIE_214024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_214024", action = "action_EVENT_ANY_GADGET_DIE_214024" },
	-- 节点死对应特效消失
	{ config_id = 1214025, name = "ANY_GADGET_DIE_214025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_214025", action = "action_EVENT_ANY_GADGET_DIE_214025" },
	-- 节点死对应特效消失
	{ config_id = 1214026, name = "ANY_GADGET_DIE_214026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_214026", action = "action_EVENT_ANY_GADGET_DIE_214026" }
}

-- 点位
points = {
	[214004] = { config_id = 214004, pos = { x = -1198.771, y = 190.176, z = 2963.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 }
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
		gadgets = { 214001, 214003, 214005, 214006, 214007, 214008, 214011, 214015, 214020, 214021, 214022 },
		regions = { },
		triggers = { "GROUP_REFRESH_214009", "LUA_NOTIFY_214010", "VARIABLE_CHANGE_214023", "ANY_GADGET_DIE_214024", "ANY_GADGET_DIE_214025", "ANY_GADGET_DIE_214026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 214002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_214012" },
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
function action_EVENT_GROUP_REFRESH_214009(context, evt)
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

-- 触发操作
function action_EVENT_LUA_NOTIFY_214010(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_214012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7306209_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_214023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"PlayPhase"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "PlayPhase", 133304214) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_214023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7306209_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_214024(context, evt)
	if 214006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_214024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 214020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_214025(context, evt)
	if 214007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_214025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 214021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_214026(context, evt)
	if 214008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_214026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 214022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"