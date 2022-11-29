-- 基础信息
local base_info = {
	group_id = 133305003
}

-- Trigger变量
local defs = {
	gadget_CoreID = 3003,
	monster_BossID = 3001,
	gadget_Point_1 = 3004,
	gadget_Point_2 = 3005,
	gadget_Point_3 = 3006,
	point_camera = 3030,
	gadget_lookEntity = 3003,
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

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[3001] = { config_id = 3001, monster_id = 24010301, pos = { x = -2448.010, y = 336.070, z = 3932.895 }, rot = { x = 0.000, y = 329.843, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6116, 6117 }, pose_id = 100, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[3002] = { config_id = 3002, gadget_id = 70211121, pos = { x = -2458.075, y = 336.406, z = 3945.967 }, rot = { x = 6.558, y = 84.394, z = 2.930 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	[3003] = { config_id = 3003, gadget_id = 70310193, pos = { x = -2453.604, y = 336.060, z = 3947.018 }, rot = { x = 0.000, y = 306.378, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	[3004] = { config_id = 3004, gadget_id = 70310195, pos = { x = -2466.781, y = 336.699, z = 3958.646 }, rot = { x = 340.187, y = 222.142, z = 30.705 }, level = 32, area_id = 26 },
	[3005] = { config_id = 3005, gadget_id = 70310195, pos = { x = -2446.383, y = 337.799, z = 3959.645 }, rot = { x = 318.036, y = 133.430, z = 7.689 }, level = 32, area_id = 26 },
	[3006] = { config_id = 3006, gadget_id = 70310195, pos = { x = -2457.417, y = 336.741, z = 3927.502 }, rot = { x = 337.169, y = 246.570, z = 342.276 }, level = 32, area_id = 26 },
	[3007] = { config_id = 3007, gadget_id = 70310192, pos = { x = -2448.250, y = 338.930, z = 3953.655 }, rot = { x = 332.226, y = 317.260, z = 207.652 }, level = 32, area_id = 26 },
	[3008] = { config_id = 3008, gadget_id = 70310192, pos = { x = -2457.756, y = 340.777, z = 3928.045 }, rot = { x = 16.132, y = 62.944, z = 359.534 }, level = 32, area_id = 26 },
	[3010] = { config_id = 3010, gadget_id = 70310191, pos = { x = -2466.013, y = 336.672, z = 3952.370 }, rot = { x = 0.323, y = 356.618, z = 0.861 }, level = 32, area_id = 26 },
	[3011] = { config_id = 3011, gadget_id = 70310197, pos = { x = -2453.971, y = 336.938, z = 3939.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	[3012] = { config_id = 3012, gadget_id = 70310197, pos = { x = -2460.110, y = 337.830, z = 3938.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	[3013] = { config_id = 3013, gadget_id = 70310197, pos = { x = -2453.107, y = 336.600, z = 3956.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	[3014] = { config_id = 3014, gadget_id = 70310197, pos = { x = -2440.101, y = 337.024, z = 3947.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	[3015] = { config_id = 3015, gadget_id = 70330435, pos = { x = -2441.484, y = 336.681, z = 3940.665 }, rot = { x = 0.888, y = 359.557, z = 359.098 }, level = 32, area_id = 26 },
	[3016] = { config_id = 3016, gadget_id = 70330435, pos = { x = -2466.821, y = 336.759, z = 3967.564 }, rot = { x = 3.895, y = 9.830, z = 1.102 }, level = 32, area_id = 26 },
	[3018] = { config_id = 3018, gadget_id = 70310196, pos = { x = -2455.021, y = 336.711, z = 3949.803 }, rot = { x = 0.000, y = 305.441, z = 0.000 }, level = 32, area_id = 26 },
	[3019] = { config_id = 3019, gadget_id = 70310196, pos = { x = -2452.836, y = 336.600, z = 3949.542 }, rot = { x = 0.000, y = 28.049, z = 0.000 }, level = 32, area_id = 26 },
	[3020] = { config_id = 3020, gadget_id = 70290513, pos = { x = -2453.495, y = 336.486, z = 3945.021 }, rot = { x = 0.000, y = 205.314, z = 0.000 }, level = 32, area_id = 26 },
	[3021] = { config_id = 3021, gadget_id = 70290492, pos = { x = -2466.781, y = 336.699, z = 3958.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	[3022] = { config_id = 3022, gadget_id = 70290492, pos = { x = -2446.383, y = 337.799, z = 3959.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	[3023] = { config_id = 3023, gadget_id = 70290492, pos = { x = -2457.417, y = 336.741, z = 3927.502 }, rot = { x = 39.601, y = 39.862, z = 147.715 }, level = 32, area_id = 26 },
	[3024] = { config_id = 3024, gadget_id = 70290491, pos = { x = -2453.604, y = 336.060, z = 3947.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 核心消失刷宝箱
	{ config_id = 1003025, name = "ANY_GADGET_DIE_3025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_3025", action = "action_EVENT_ANY_GADGET_DIE_3025" },
	-- 节点死对应特效消失
	{ config_id = 1003026, name = "GADGET_STATE_CHANGE_3026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3026", action = "action_EVENT_GADGET_STATE_CHANGE_3026" },
	-- 节点死对应特效消失
	{ config_id = 1003027, name = "GADGET_STATE_CHANGE_3027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3027", action = "action_EVENT_GADGET_STATE_CHANGE_3027" },
	-- 节点死对应特效消失
	{ config_id = 1003028, name = "GADGET_STATE_CHANGE_3028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3028", action = "action_EVENT_GADGET_STATE_CHANGE_3028" },
	-- 核心交互播镜头
	{ config_id = 1003029, name = "LUA_NOTIFY_3029", event = EventType.EVENT_LUA_NOTIFY, source = "", condition = "", action = "action_EVENT_LUA_NOTIFY_3029", trigger_count = 0 }
}

-- 点位
points = {
	-- 摄像机目標
	{ config_id = 3017, pos = { x = -2455.108, y = 336.458, z = 3950.668 }, rot = { x = 39.362, y = 208.086, z = 0.000 }, area_id = 26 },
	-- 摄像机位置
	{ config_id = 3030, pos = { x = -2441.470, y = 360.221, z = 3976.226 }, rot = { x = 39.362, y = 208.086, z = 0.000 }, area_id = 26 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 3009, gadget_id = 70310192, pos = { x = -2472.318, y = 333.207, z = 3942.776 }, rot = { x = 0.000, y = 157.612, z = 0.000 }, level = 32, area_id = 26 }
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
		gadgets = { 3003, 3004, 3005, 3006, 3007, 3008, 3010, 3011, 3012, 3013, 3014, 3015, 3016, 3018, 3019, 3020, 3021, 3022, 3023, 3024 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_3025", "GADGET_STATE_CHANGE_3026", "GADGET_STATE_CHANGE_3027", "GADGET_STATE_CHANGE_3028", "LUA_NOTIFY_3029" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 3002, 3010, 3015, 3016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 3002 },
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
function condition_EVENT_ANY_GADGET_DIE_3025(context, evt)
	if 3003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_3025(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133305003, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3026(context, evt)
	if 3004 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3027(context, evt)
	if 3005 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3028(context, evt)
	if 3006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_3029(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-2455.108, y=336.4581, z=3950.668}，持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2455.108, y=336.4581, z=3950.668}
	  local pos_follow = {x=13.638, y=28.7632, z=25.558}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"