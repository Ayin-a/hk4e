-- 基础信息
local base_info = {
	group_id = 133301474
}

-- Trigger变量
local defs = {
	gadget_CoreID = 474005,
	monster_BossID = 474002,
	gadget_Point_1 = 474006,
	gadget_Point_2 = 474007,
	gadget_Point_3 = 474008,
	point_camera = 474028,
	gadget_lookEntity = 474005,
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
	[474001] = { config_id = 474001, monster_id = 26090501, pos = { x = -1221.028, y = 177.055, z = 2980.764 }, rot = { x = 0.000, y = 45.436, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 21 },
	[474002] = { config_id = 474002, monster_id = 26120201, pos = { x = -1208.708, y = 177.136, z = 2971.198 }, rot = { x = 0.000, y = 158.408, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 6116, 6117 }, isElite = true, pose_id = 102, area_id = 21 },
	[474003] = { config_id = 474003, monster_id = 26090501, pos = { x = -1204.061, y = 176.500, z = 2960.516 }, rot = { x = 0.000, y = 49.212, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 21 },
	[474011] = { config_id = 474011, monster_id = 26090501, pos = { x = -1202.448, y = 177.074, z = 2951.328 }, rot = { x = 0.000, y = 323.701, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 6117 }, pose_id = 104, area_id = 21 },
	[474013] = { config_id = 474013, monster_id = 26090101, pos = { x = -1221.137, y = 177.643, z = 2973.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6116, 6117 }, pose_id = 101, area_id = 21 },
	[474014] = { config_id = 474014, monster_id = 26090101, pos = { x = -1212.399, y = 176.500, z = 2953.629 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6116, 6117 }, pose_id = 101, area_id = 21 },
	[474015] = { config_id = 474015, monster_id = 26090501, pos = { x = -1219.172, y = 176.909, z = 2987.048 }, rot = { x = 0.000, y = 323.701, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 21 },
	[474016] = { config_id = 474016, monster_id = 26090501, pos = { x = -1195.559, y = 177.623, z = 2980.073 }, rot = { x = 0.000, y = 45.436, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 21 },
	[474019] = { config_id = 474019, monster_id = 26090101, pos = { x = -1214.970, y = 177.127, z = 2971.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6117 }, pose_id = 104, area_id = 21 },
	[474027] = { config_id = 474027, monster_id = 26090501, pos = { x = -1213.984, y = 176.500, z = 2964.372 }, rot = { x = 0.000, y = 323.701, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 104, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[474005] = { config_id = 474005, gadget_id = 70310193, pos = { x = -1217.672, y = 177.221, z = 2971.275 }, rot = { x = 2.937, y = 84.465, z = 359.755 }, level = 30, persistent = true, area_id = 21 },
	[474006] = { config_id = 474006, gadget_id = 70310195, pos = { x = -1202.659, y = 177.444, z = 2949.414 }, rot = { x = 350.184, y = 89.283, z = 9.189 }, level = 30, persistent = true, area_id = 21 },
	[474007] = { config_id = 474007, gadget_id = 70310195, pos = { x = -1216.458, y = 177.703, z = 2989.280 }, rot = { x = 348.102, y = 330.893, z = 16.161 }, level = 30, persistent = true, area_id = 21 },
	[474008] = { config_id = 474008, gadget_id = 70310195, pos = { x = -1193.813, y = 178.067, z = 2981.444 }, rot = { x = 15.244, y = 180.859, z = 6.423 }, level = 30, persistent = true, area_id = 21 },
	[474012] = { config_id = 474012, gadget_id = 70310191, pos = { x = -1196.976, y = 176.500, z = 2960.349 }, rot = { x = 355.645, y = 343.210, z = 4.239 }, level = 30, persistent = true, area_id = 21 },
	[474017] = { config_id = 474017, gadget_id = 70360001, pos = { x = -1209.455, y = 176.946, z = 2972.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[474018] = { config_id = 474018, gadget_id = 70310198, pos = { x = -1204.372, y = 176.621, z = 2975.645 }, rot = { x = 7.675, y = 109.188, z = 354.227 }, level = 30, area_id = 21 },
	[474020] = { config_id = 474020, gadget_id = 70310196, pos = { x = -1217.064, y = 177.742, z = 2971.448 }, rot = { x = 358.334, y = 65.478, z = 13.304 }, level = 30, persistent = true, area_id = 21 },
	[474021] = { config_id = 474021, gadget_id = 70310196, pos = { x = -1216.893, y = 177.701, z = 2971.049 }, rot = { x = 1.478, y = 146.546, z = 359.441 }, level = 30, persistent = true, area_id = 21 },
	[474022] = { config_id = 474022, gadget_id = 70310196, pos = { x = -1216.934, y = 177.710, z = 2971.043 }, rot = { x = 359.657, y = 354.960, z = 7.951 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1474004, name = "ANY_GADGET_DIE_474004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_474004", action = "action_EVENT_ANY_GADGET_DIE_474004" },
	-- 核心消失刷宝箱
	{ config_id = 1474009, name = "ANY_MONSTER_DIE_474009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_474009", action = "action_EVENT_ANY_MONSTER_DIE_474009" },
	-- 核心交互播镜头
	{ config_id = 1474010, name = "LUA_NOTIFY_474010", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_474010", trigger_count = 0 },
	{ config_id = 1474023, name = "GROUP_LOAD_474023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_474023", trigger_count = 0 },
	-- 节点死对应特效消失
	{ config_id = 1474024, name = "GADGET_STATE_CHANGE_474024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_474024", action = "action_EVENT_GADGET_STATE_CHANGE_474024" },
	-- 节点死对应特效消失
	{ config_id = 1474025, name = "GADGET_STATE_CHANGE_474025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_474025", action = "action_EVENT_GADGET_STATE_CHANGE_474025" },
	-- 节点死对应特效消失
	{ config_id = 1474026, name = "GADGET_STATE_CHANGE_474026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_474026", action = "action_EVENT_GADGET_STATE_CHANGE_474026" },
	{ config_id = 1474029, name = "GROUP_LOAD_474029", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_474029", trigger_count = 0 }
}

-- 点位
points = {
	[474028] = { config_id = 474028, pos = { x = -1254.270, y = 198.678, z = 2968.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 }
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
		monsters = { 474001, 474003, 474013, 474014, 474016 },
		gadgets = { 474005, 474006, 474007, 474008, 474012, 474017, 474018, 474020, 474021, 474022 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_474004", "ANY_MONSTER_DIE_474009", "LUA_NOTIFY_474010", "GROUP_LOAD_474023", "GADGET_STATE_CHANGE_474024", "GADGET_STATE_CHANGE_474025", "GADGET_STATE_CHANGE_474026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 474002, 474019, 474027 },
		gadgets = { 474017 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_474004", "ANY_MONSTER_DIE_474009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 474012, 474017, 474018 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_474004", "ANY_MONSTER_DIE_474009", "GROUP_LOAD_474029" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 474017 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_474004", "ANY_MONSTER_DIE_474009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_474004(context, evt)
	if 474005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_474004(context, evt)
	-- 将configid为 474017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 474017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_474009(context, evt)
	--判断死亡怪物的configid是否为 474002
	if evt.param1 ~= 474002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_474009(context, evt)
	-- 将configid为 474005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 474005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133301474, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_474010(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_474023(context, evt)
	-- 将configid为 %config_id% 的物件更改为状态 %state%
	if 0 ~= ScriptLib.ChangeDeathZone(context,0,{is_open = true}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_deatzone")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_474024(context, evt)
	if 474006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_474024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 474021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_474025(context, evt)
	if 474007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_474025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 474022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 474015, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 474011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_474026(context, evt)
	if 474008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_474026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 474020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_474029(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7300230") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 474017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 474017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"