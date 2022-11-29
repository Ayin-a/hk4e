-- 基础信息
local base_info = {
	group_id = 133301369
}

-- Trigger变量
local defs = {
	gadget_CoreID = 369005,
	monster_BossID = 369002,
	gadget_Point_1 = 369006,
	gadget_Point_2 = 369007,
	gadget_Point_3 = 369008,
	point_camera = 369014,
	gadget_lookEntity = 369003,
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
	[369002] = { config_id = 369002, monster_id = 22050201, pos = { x = -377.853, y = 123.011, z = 3943.162 }, rot = { x = 0.000, y = 13.967, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 101, area_id = 22 },
	[369027] = { config_id = 369027, monster_id = 22040201, pos = { x = -372.784, y = 123.563, z = 3940.205 }, rot = { x = 0.000, y = 29.453, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 22 },
	[369028] = { config_id = 369028, monster_id = 22040201, pos = { x = -380.767, y = 122.488, z = 3937.163 }, rot = { x = 0.000, y = 18.061, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 占位看点，没用核心当看点
	[369003] = { config_id = 369003, gadget_id = 70290196, pos = { x = -378.524, y = 128.913, z = 3943.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	[369004] = { config_id = 369004, gadget_id = 70211121, pos = { x = -376.942, y = 122.463, z = 3937.031 }, rot = { x = 5.722, y = 173.735, z = 354.906 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	[369005] = { config_id = 369005, gadget_id = 70310194, pos = { x = -383.921, y = 129.179, z = 3950.623 }, rot = { x = 344.783, y = 128.851, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[369006] = { config_id = 369006, gadget_id = 70310195, pos = { x = -368.446, y = 126.853, z = 3935.285 }, rot = { x = 345.730, y = 81.769, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[369007] = { config_id = 369007, gadget_id = 70310195, pos = { x = -377.436, y = 123.577, z = 3947.695 }, rot = { x = 8.291, y = 109.097, z = 353.175 }, level = 33, persistent = true, area_id = 22 },
	[369008] = { config_id = 369008, gadget_id = 70310195, pos = { x = -390.315, y = 125.227, z = 3929.036 }, rot = { x = 4.869, y = 156.396, z = 30.572 }, level = 33, persistent = true, area_id = 22 },
	[369009] = { config_id = 369009, gadget_id = 70310192, pos = { x = -382.356, y = 133.157, z = 3949.605 }, rot = { x = 0.000, y = 123.495, z = 358.960 }, level = 33, persistent = true, area_id = 22 },
	[369010] = { config_id = 369010, gadget_id = 70310192, pos = { x = -386.558, y = 129.857, z = 3945.263 }, rot = { x = 2.831, y = 128.386, z = 34.980 }, level = 33, persistent = true, area_id = 22 },
	[369011] = { config_id = 369011, gadget_id = 70310192, pos = { x = -381.428, y = 130.481, z = 3954.448 }, rot = { x = 10.435, y = 124.825, z = 24.160 }, level = 33, persistent = true, area_id = 22 },
	[369012] = { config_id = 369012, gadget_id = 70310191, pos = { x = -372.821, y = 123.716, z = 3942.762 }, rot = { x = 16.240, y = 250.692, z = 358.940 }, level = 33, persistent = true, area_id = 22 },
	[369013] = { config_id = 369013, gadget_id = 70310197, pos = { x = -386.565, y = 125.615, z = 3944.777 }, rot = { x = 0.000, y = 50.636, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 22 },
	[369017] = { config_id = 369017, gadget_id = 70310198, pos = { x = -391.255, y = 123.180, z = 3921.009 }, rot = { x = 9.149, y = 164.265, z = 2.894 }, level = 33, area_id = 22 },
	[369018] = { config_id = 369018, gadget_id = 70310191, pos = { x = -384.622, y = 122.840, z = 3908.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	[369019] = { config_id = 369019, gadget_id = 70310197, pos = { x = -387.202, y = 128.027, z = 3940.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	[369020] = { config_id = 369020, gadget_id = 70310196, pos = { x = -382.535, y = 130.825, z = 3949.006 }, rot = { x = 7.967, y = 137.532, z = 0.001 }, level = 33, persistent = true, area_id = 22 },
	[369021] = { config_id = 369021, gadget_id = 70310196, pos = { x = -381.999, y = 130.348, z = 3950.271 }, rot = { x = 46.672, y = 125.876, z = 8.444 }, level = 33, persistent = true, area_id = 22 },
	[369022] = { config_id = 369022, gadget_id = 70310196, pos = { x = -382.844, y = 131.101, z = 3947.977 }, rot = { x = 14.664, y = 199.315, z = 359.605 }, level = 33, persistent = true, area_id = 22 },
	[369029] = { config_id = 369029, gadget_id = 70310197, pos = { x = -384.184, y = 123.155, z = 3929.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	[369030] = { config_id = 369030, gadget_id = 70310197, pos = { x = -373.554, y = 123.767, z = 3926.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 核心交互播镜头
	{ config_id = 1369001, name = "LUA_NOTIFY_369001", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_369001", trigger_count = 0 },
	-- 核心消失刷宝箱
	{ config_id = 1369023, name = "ANY_GADGET_DIE_369023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_369023", action = "action_EVENT_ANY_GADGET_DIE_369023" },
	-- 节点死对应特效消失
	{ config_id = 1369024, name = "GADGET_STATE_CHANGE_369024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369024", action = "action_EVENT_GADGET_STATE_CHANGE_369024" },
	-- 节点死对应特效消失
	{ config_id = 1369025, name = "GADGET_STATE_CHANGE_369025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369025", action = "action_EVENT_GADGET_STATE_CHANGE_369025" },
	-- 节点死对应特效消失
	{ config_id = 1369026, name = "GADGET_STATE_CHANGE_369026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369026", action = "action_EVENT_GADGET_STATE_CHANGE_369026" }
}

-- 点位
points = {
	[369014] = { config_id = 369014, pos = { x = -373.136, y = 136.958, z = 3919.432 }, rot = { x = 0.000, y = 305.304, z = 0.000 }, area_id = 22 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1369015, name = "MONSTER_BATTLE_369015", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_369015" },
		{ config_id = 1369016, name = "GADGET_STATE_CHANGE_369016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369016", action = "action_EVENT_GADGET_STATE_CHANGE_369016" }
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
		gadgets = { 369003, 369005, 369006, 369007, 369008, 369009, 369010, 369011, 369012, 369013, 369017, 369018, 369020, 369021, 369022 },
		regions = { },
		triggers = { "LUA_NOTIFY_369001", "ANY_GADGET_DIE_369023", "GADGET_STATE_CHANGE_369024", "GADGET_STATE_CHANGE_369025", "GADGET_STATE_CHANGE_369026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 369002, 369028 },
		gadgets = { 369019, 369029, 369030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 369004, 369012, 369017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 369004 },
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
function action_EVENT_LUA_NOTIFY_369001(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_369023(context, evt)
	if 369005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_369023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301369, 4)
	
	-- 将configid为 369018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 369018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_369024(context, evt)
	if 369006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_369024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 369020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_369025(context, evt)
	if 369007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_369025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 369021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 369027, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_369026(context, evt)
	if 369008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_369026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 369022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"