-- 基础信息
local base_info = {
	group_id = 133301483
}

-- Trigger变量
local defs = {
	gadget_CoreID = 483005,
	monster_BossID = 483002,
	gadget_Point_1 = 483006,
	gadget_Point_2 = 483007,
	gadget_Point_3 = 483008,
	point_camera = 483015,
	gadget_lookEntity = 483005,
	look_duration = 2
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
	[483001] = { config_id = 483001, monster_id = 26090101, pos = { x = -1364.844, y = 152.000, z = 2859.907 }, rot = { x = 0.000, y = 175.851, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116 }, pose_id = 101, area_id = 21 },
	[483002] = { config_id = 483002, monster_id = 26120301, pos = { x = -1358.988, y = 152.000, z = 2846.395 }, rot = { x = 0.000, y = 325.801, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 101, area_id = 21 },
	[483004] = { config_id = 483004, monster_id = 26090101, pos = { x = -1363.076, y = 152.000, z = 2847.133 }, rot = { x = 0.000, y = 48.620, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116 }, pose_id = 101, area_id = 21 },
	[483028] = { config_id = 483028, monster_id = 26090401, pos = { x = -1368.888, y = 152.342, z = 2855.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 21 },
	[483029] = { config_id = 483029, monster_id = 26090401, pos = { x = -1363.699, y = 152.000, z = 2860.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 21 },
	[483030] = { config_id = 483030, monster_id = 26090501, pos = { x = -1357.061, y = 152.000, z = 2854.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 21 },
	[483031] = { config_id = 483031, monster_id = 26090501, pos = { x = -1363.260, y = 152.000, z = 2852.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 21 },
	[483032] = { config_id = 483032, monster_id = 26090501, pos = { x = -1363.324, y = 152.000, z = 2859.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 21 },
	[483033] = { config_id = 483033, monster_id = 26090201, pos = { x = -1355.546, y = 152.000, z = 2847.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 21 },
	[483034] = { config_id = 483034, monster_id = 26090201, pos = { x = -1359.952, y = 152.000, z = 2841.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[483005] = { config_id = 483005, gadget_id = 70310193, pos = { x = -1354.717, y = 151.655, z = 2843.019 }, rot = { x = 0.000, y = 284.415, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[483006] = { config_id = 483006, gadget_id = 70310195, pos = { x = -1361.353, y = 151.927, z = 2857.685 }, rot = { x = 356.524, y = 215.440, z = 357.056 }, level = 30, area_id = 21 },
	[483007] = { config_id = 483007, gadget_id = 70310195, pos = { x = -1366.454, y = 152.113, z = 2846.422 }, rot = { x = 346.789, y = 150.600, z = 30.274 }, level = 30, area_id = 21 },
	[483008] = { config_id = 483008, gadget_id = 70310195, pos = { x = -1375.101, y = 152.000, z = 2866.154 }, rot = { x = 0.000, y = 50.897, z = 0.000 }, level = 30, area_id = 21 },
	[483009] = { config_id = 483009, gadget_id = 70310192, pos = { x = -1364.865, y = 157.202, z = 2832.669 }, rot = { x = 354.802, y = 42.575, z = 0.000 }, level = 30, area_id = 21 },
	[483010] = { config_id = 483010, gadget_id = 70310192, pos = { x = -1354.697, y = 151.005, z = 2828.994 }, rot = { x = 0.000, y = 294.000, z = 0.000 }, level = 30, area_id = 21 },
	[483011] = { config_id = 483011, gadget_id = 70310192, pos = { x = -1382.549, y = 148.607, z = 2844.153 }, rot = { x = 0.000, y = 157.612, z = 0.000 }, level = 30, area_id = 21 },
	[483012] = { config_id = 483012, gadget_id = 70310191, pos = { x = -1362.518, y = 152.000, z = 2831.464 }, rot = { x = 0.000, y = 14.064, z = 0.000 }, level = 30, area_id = 21 },
	[483014] = { config_id = 483014, gadget_id = 70360001, pos = { x = -1358.863, y = 152.000, z = 2838.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[483017] = { config_id = 483017, gadget_id = 70310198, pos = { x = -1370.553, y = 151.790, z = 2871.391 }, rot = { x = 2.723, y = 325.498, z = 13.161 }, level = 30, area_id = 21 },
	[483020] = { config_id = 483020, gadget_id = 70310196, pos = { x = -1355.560, y = 152.111, z = 2844.523 }, rot = { x = 353.174, y = 333.269, z = 0.000 }, level = 30, area_id = 21 },
	[483021] = { config_id = 483021, gadget_id = 70310196, pos = { x = -1355.560, y = 152.111, z = 2844.523 }, rot = { x = 356.522, y = 285.653, z = 0.000 }, level = 30, area_id = 21 },
	[483022] = { config_id = 483022, gadget_id = 70310196, pos = { x = -1355.560, y = 152.111, z = 2844.523 }, rot = { x = 0.700, y = 311.350, z = 7.219 }, level = 30, area_id = 21 },
	[483035] = { config_id = 483035, gadget_id = 70310198, pos = { x = -1351.767, y = 152.029, z = 2847.646 }, rot = { x = 346.057, y = 342.858, z = 350.701 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1483003, name = "LUA_NOTIFY_483003", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_483003", trigger_count = 0 },
	{ config_id = 1483013, name = "GROUP_LOAD_483013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_483013", trigger_count = 0 },
	{ config_id = 1483016, name = "GROUP_LOAD_483016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_483016", trigger_count = 0 },
	{ config_id = 1483019, name = "MONSTER_BATTLE_483019", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_483019", action = "action_EVENT_MONSTER_BATTLE_483019" },
	-- 核心消失刷宝箱
	{ config_id = 1483023, name = "ANY_GADGET_DIE_483023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_483023", action = "action_EVENT_ANY_GADGET_DIE_483023" },
	-- 节点死对应特效消失
	{ config_id = 1483024, name = "GADGET_STATE_CHANGE_483024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_483024", action = "action_EVENT_GADGET_STATE_CHANGE_483024" },
	-- 节点死对应特效消失
	{ config_id = 1483025, name = "GADGET_STATE_CHANGE_483025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_483025", action = "action_EVENT_GADGET_STATE_CHANGE_483025" },
	-- 节点死对应特效消失
	{ config_id = 1483026, name = "GADGET_STATE_CHANGE_483026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_483026", action = "action_EVENT_GADGET_STATE_CHANGE_483026" }
}

-- 点位
points = {
	[483015] = { config_id = 483015, pos = { x = -1364.299, y = 159.527, z = 2851.528 }, rot = { x = 0.000, y = 136.090, z = 0.000 }, area_id = 21 }
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
		monsters = { 483001, 483004 },
		gadgets = { 483005, 483006, 483007, 483008, 483009, 483010, 483011, 483012, 483014, 483017, 483020, 483021, 483022, 483035 },
		regions = { },
		triggers = { "LUA_NOTIFY_483003", "GROUP_LOAD_483013", "MONSTER_BATTLE_483019", "ANY_GADGET_DIE_483023", "GADGET_STATE_CHANGE_483024", "GADGET_STATE_CHANGE_483025", "GADGET_STATE_CHANGE_483026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 483002 },
		gadgets = { 483014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 483012, 483014, 483017, 483035 },
		regions = { },
		triggers = { "GROUP_LOAD_483016" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 483014 },
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
function action_EVENT_LUA_NOTIFY_483003(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_483013(context, evt)
	-- 将configid为 %config_id% 的物件更改为状态 %state%
	if 0 ~= ScriptLib.ChangeDeathZone(context,0,{is_open = true}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_deatzone")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_483016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7300305") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 483014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 483014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_483019(context, evt)
	if 483002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_483019(context, evt)
	-- 调用提示id为 33010034 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010034) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_483023(context, evt)
	if 483005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_483023(context, evt)
	-- 将configid为 483014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 483014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133301483, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_483024(context, evt)
	if 483006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_483024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 483020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 483030, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 483031, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 483032, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_483025(context, evt)
	if 483007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_483025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 483021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 483033, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 483034, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 调用提示id为 33010032 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010032) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_483026(context, evt)
	if 483008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_483026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 483022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 483028, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 483029, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"