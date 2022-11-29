-- 基础信息
local base_info = {
	group_id = 133310086
}

-- Trigger变量
local defs = {
	gadget_CoreID = 86003,
	monster_BossID = 86001,
	gadget_Point_1 = 86004,
	gadget_Point_2 = 86005,
	gadget_Point_3 = 86006,
	target_x = -3002.682,
	target_y = 1.370938,
	target_z = 4281.239,
	camera_x = -3039.101,
	camera_y = 6.367,
	camera_z = 4261.793,
	duration = 5
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

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[86001] = { config_id = 86001, monster_id = 26120301, pos = { x = -3016.952, y = 1.460, z = 4274.479 }, rot = { x = 0.000, y = 13.325, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6116, 6117 }, pose_id = 101, area_id = 28, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[86016] = { config_id = 86016, monster_id = 26090101, pos = { x = -3011.969, y = 1.158, z = 4279.023 }, rot = { x = 0.000, y = 304.549, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 28 },
	[86031] = { config_id = 86031, monster_id = 26090101, pos = { x = -3006.853, y = 1.150, z = 4277.153 }, rot = { x = 0.000, y = 339.312, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 28 },
	[86032] = { config_id = 86032, monster_id = 26090801, pos = { x = -3025.975, y = 1.400, z = 4276.285 }, rot = { x = 0.000, y = 75.772, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 28 },
	[86035] = { config_id = 86035, monster_id = 26090801, pos = { x = -3017.288, y = 1.400, z = 4276.938 }, rot = { x = 0.000, y = 15.298, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[86002] = { config_id = 86002, gadget_id = 70211111, pos = { x = -3017.400, y = 2.784, z = 4268.540 }, rot = { x = 0.000, y = 52.990, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	[86003] = { config_id = 86003, gadget_id = 70310193, pos = { x = -3017.000, y = 2.500, z = 4269.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	[86004] = { config_id = 86004, gadget_id = 70310195, pos = { x = -3020.225, y = 1.613, z = 4289.546 }, rot = { x = 0.000, y = 113.179, z = 0.000 }, level = 32, area_id = 28 },
	[86005] = { config_id = 86005, gadget_id = 70310195, pos = { x = -3008.989, y = 1.577, z = 4259.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	[86006] = { config_id = 86006, gadget_id = 70310195, pos = { x = -3035.337, y = 3.274, z = 4269.409 }, rot = { x = 343.907, y = 226.100, z = 3.342 }, level = 32, area_id = 28 },
	[86007] = { config_id = 86007, gadget_id = 70310192, pos = { x = -3030.461, y = 12.156, z = 4268.107 }, rot = { x = 340.132, y = 99.555, z = 359.450 }, level = 32, area_id = 28 },
	[86008] = { config_id = 86008, gadget_id = 70310192, pos = { x = -3002.025, y = 1.766, z = 4262.885 }, rot = { x = 318.692, y = 38.871, z = 8.496 }, level = 32, area_id = 28 },
	[86009] = { config_id = 86009, gadget_id = 70310192, pos = { x = -3024.930, y = 14.702, z = 4290.191 }, rot = { x = 11.409, y = 117.576, z = 0.000 }, level = 32, area_id = 28 },
	[86010] = { config_id = 86010, gadget_id = 70310191, pos = { x = -3000.383, y = 1.795, z = 4283.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	[86011] = { config_id = 86011, gadget_id = 70310197, pos = { x = -2994.598, y = 2.375, z = 4265.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	[86012] = { config_id = 86012, gadget_id = 70310197, pos = { x = -3008.204, y = 2.032, z = 4286.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	[86013] = { config_id = 86013, gadget_id = 70310197, pos = { x = -3033.179, y = 5.021, z = 4256.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	[86014] = { config_id = 86014, gadget_id = 70310197, pos = { x = -3028.812, y = 2.169, z = 4277.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	[86015] = { config_id = 86015, gadget_id = 70330435, pos = { x = -2985.910, y = 2.118, z = 4270.927 }, rot = { x = 358.210, y = 359.986, z = 0.895 }, level = 32, area_id = 28 },
	[86018] = { config_id = 86018, gadget_id = 70310196, pos = { x = -3018.101, y = 2.595, z = 4271.601 }, rot = { x = 0.000, y = 356.813, z = 0.000 }, level = 32, area_id = 28 },
	[86019] = { config_id = 86019, gadget_id = 70310196, pos = { x = -3015.411, y = 2.743, z = 4267.272 }, rot = { x = 0.000, y = 142.291, z = 0.000 }, level = 32, area_id = 28 },
	[86020] = { config_id = 86020, gadget_id = 70290513, pos = { x = -3022.027, y = 2.759, z = 4269.794 }, rot = { x = 0.000, y = 272.687, z = 0.000 }, level = 32, area_id = 28 },
	[86021] = { config_id = 86021, gadget_id = 70290492, pos = { x = -3020.225, y = 1.613, z = 4289.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	[86022] = { config_id = 86022, gadget_id = 70290492, pos = { x = -3008.989, y = 1.577, z = 4259.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	[86023] = { config_id = 86023, gadget_id = 70290492, pos = { x = -3035.337, y = 3.274, z = 4269.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	[86024] = { config_id = 86024, gadget_id = 70290491, pos = { x = -3017.000, y = 2.500, z = 4269.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 核心消失刷宝箱
	{ config_id = 1086025, name = "ANY_GADGET_DIE_86025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_86025", action = "action_EVENT_ANY_GADGET_DIE_86025" },
	-- 节点死对应特效消失
	{ config_id = 1086026, name = "GADGET_STATE_CHANGE_86026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_86026", action = "action_EVENT_GADGET_STATE_CHANGE_86026" },
	-- 节点死对应特效消失
	{ config_id = 1086027, name = "GADGET_STATE_CHANGE_86027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_86027", action = "action_EVENT_GADGET_STATE_CHANGE_86027" },
	-- 节点死对应特效消失
	{ config_id = 1086028, name = "GADGET_STATE_CHANGE_86028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_86028", action = "action_EVENT_GADGET_STATE_CHANGE_86028" },
	-- 核心交互播镜头
	{ config_id = 1086029, name = "LUA_NOTIFY_86029", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_86029" }
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
		monsters = { 86016 },
		gadgets = { 86003, 86004, 86005, 86006, 86007, 86008, 86009, 86010, 86011, 86012, 86013, 86014, 86015, 86018, 86019, 86020, 86021, 86022, 86023, 86024 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_86025", "GADGET_STATE_CHANGE_86026", "GADGET_STATE_CHANGE_86027", "GADGET_STATE_CHANGE_86028", "LUA_NOTIFY_86029" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 86001, 86031, 86032, 86035 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 86002, 86010, 86015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 86002 },
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
function condition_EVENT_ANY_GADGET_DIE_86025(context, evt)
	if 86003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_86025(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310086, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_86026(context, evt)
	if 86004 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_86026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 86018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_86027(context, evt)
	if 86005 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_86027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 86019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_86028(context, evt)
	if 86006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_86028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 86020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_86029(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-3024.84, y=268.74, z=4872.4}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=defs.target_x, y=defs.target_y, z=defs.target_z}
	  local pos_follow = {x=defs.camera_x, y=defs.camera_y, z=defs.camera_z}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = defs.duration, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = true,is_abs_follow_pos = true, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"