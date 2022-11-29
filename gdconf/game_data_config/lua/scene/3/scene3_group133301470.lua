-- 基础信息
local base_info = {
	group_id = 133301470
}

-- Trigger变量
local defs = {
	gadget_CoreID = 470005,
	monster_BossID = 470002,
	gadget_Point_1 = 470006,
	gadget_Point_2 = 470007,
	gadget_Point_3 = 470008,
	point_camera = 470010,
	gadget_lookEntity = 470005,
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
	[470001] = { config_id = 470001, monster_id = 26090901, pos = { x = -1050.928, y = 205.908, z = 2886.885 }, rot = { x = 0.000, y = 130.020, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117, 6116 }, pose_id = 104, area_id = 21 },
	[470002] = { config_id = 470002, monster_id = 26120101, pos = { x = -1050.400, y = 205.617, z = 2891.310 }, rot = { x = 0.000, y = 166.147, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 201, area_id = 21 },
	[470003] = { config_id = 470003, monster_id = 26090901, pos = { x = -1042.165, y = 207.658, z = 2882.686 }, rot = { x = 0.000, y = 169.241, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117, 6116 }, pose_id = 104, area_id = 21 },
	[470011] = { config_id = 470011, monster_id = 26090401, pos = { x = -1047.240, y = 206.216, z = 2890.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 21 },
	[470027] = { config_id = 470027, monster_id = 26090901, pos = { x = -1047.426, y = 208.017, z = 2877.905 }, rot = { x = 0.000, y = 175.851, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117, 6116 }, pose_id = 104, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[470005] = { config_id = 470005, gadget_id = 70310194, pos = { x = -1055.105, y = 208.056, z = 2894.505 }, rot = { x = 359.161, y = 130.242, z = 332.960 }, level = 30, persistent = true, area_id = 21 },
	[470006] = { config_id = 470006, gadget_id = 70310195, pos = { x = -1048.550, y = 205.774, z = 2894.202 }, rot = { x = 10.780, y = 333.829, z = 359.686 }, level = 30, persistent = true, area_id = 21 },
	[470007] = { config_id = 470007, gadget_id = 70310195, pos = { x = -1042.385, y = 207.630, z = 2886.645 }, rot = { x = 13.507, y = 235.237, z = 356.059 }, level = 30, persistent = true, area_id = 21 },
	[470008] = { config_id = 470008, gadget_id = 70310195, pos = { x = -1048.030, y = 209.515, z = 2873.280 }, rot = { x = 13.353, y = 356.798, z = 349.111 }, level = 30, persistent = true, area_id = 21 },
	[470012] = { config_id = 470012, gadget_id = 70310191, pos = { x = -1052.169, y = 207.168, z = 2882.639 }, rot = { x = 357.817, y = 295.319, z = 334.961 }, level = 30, persistent = true, area_id = 21 },
	[470017] = { config_id = 470017, gadget_id = 70310198, pos = { x = -1039.240, y = 208.695, z = 2880.022 }, rot = { x = 20.645, y = 236.115, z = 355.525 }, level = 30, area_id = 21 },
	[470019] = { config_id = 470019, gadget_id = 70360001, pos = { x = -1050.149, y = 206.337, z = 2884.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[470020] = { config_id = 470020, gadget_id = 70310196, pos = { x = -1054.507, y = 207.745, z = 2894.144 }, rot = { x = 353.557, y = 92.975, z = 0.459 }, level = 30, persistent = true, area_id = 21 },
	[470021] = { config_id = 470021, gadget_id = 70310196, pos = { x = -1054.507, y = 207.745, z = 2894.144 }, rot = { x = 0.714, y = 121.398, z = 334.189 }, level = 30, persistent = true, area_id = 21 },
	[470022] = { config_id = 470022, gadget_id = 70310196, pos = { x = -1054.507, y = 207.745, z = 2894.144 }, rot = { x = 355.653, y = 160.986, z = 295.637 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 核心交互播镜头
	{ config_id = 1470004, name = "LUA_NOTIFY_470004", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_470004", trigger_count = 0 },
	{ config_id = 1470009, name = "GROUP_LOAD_470009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_470009", trigger_count = 0 },
	{ config_id = 1470013, name = "GROUP_LOAD_470013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_470013", trigger_count = 0 },
	-- 核心消失刷宝箱
	{ config_id = 1470023, name = "ANY_GADGET_DIE_470023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_470023", action = "action_EVENT_ANY_GADGET_DIE_470023" },
	-- 节点死对应特效消失
	{ config_id = 1470024, name = "GADGET_STATE_CHANGE_470024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_470024", action = "action_EVENT_GADGET_STATE_CHANGE_470024" },
	-- 节点死对应特效消失
	{ config_id = 1470025, name = "GADGET_STATE_CHANGE_470025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_470025", action = "action_EVENT_GADGET_STATE_CHANGE_470025" },
	-- 节点死对应特效消失
	{ config_id = 1470026, name = "GADGET_STATE_CHANGE_470026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_470026", action = "action_EVENT_GADGET_STATE_CHANGE_470026" },
	{ config_id = 1470028, name = "QUEST_START_470028", event = EventType.EVENT_QUEST_START, source = "7300202", condition = "", action = "action_EVENT_QUEST_START_470028", trigger_count = 0 }
}

-- 点位
points = {
	[470010] = { config_id = 470010, pos = { x = -1037.614, y = 234.483, z = 2862.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 }
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
		gadgets = { 470005, 470006, 470007, 470008, 470012, 470017, 470019, 470020, 470021, 470022 },
		regions = { },
		triggers = { "LUA_NOTIFY_470004", "GROUP_LOAD_470009", "ANY_GADGET_DIE_470023", "GADGET_STATE_CHANGE_470024", "GADGET_STATE_CHANGE_470025", "GADGET_STATE_CHANGE_470026", "QUEST_START_470028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 470002, 470011 },
		gadgets = { 470019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 470012, 470017, 470019 },
		regions = { },
		triggers = { "GROUP_LOAD_470013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 470019 },
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
function action_EVENT_LUA_NOTIFY_470004(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_470009(context, evt)
	-- 将configid为 %config_id% 的物件更改为状态 %state%
	if 0 ~= ScriptLib.ChangeDeathZone(context,0,{is_open = true}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_deatzone")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_470013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7300202") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 470019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 470019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_470023(context, evt)
	if 470005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_470023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301470, 4)
	
	-- 将configid为 470019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 470019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_470024(context, evt)
	if 470006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_470024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 470020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_470025(context, evt)
	if 470007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_470025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 470021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_470026(context, evt)
	if 470008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_470026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 470022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_470028(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 470001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 470003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 470027, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"