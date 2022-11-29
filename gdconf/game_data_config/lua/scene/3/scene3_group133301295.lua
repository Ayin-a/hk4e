-- 基础信息
local base_info = {
	group_id = 133301295
}

-- Trigger变量
local defs = {
	door = 295005,
	galleryId = 19114,
	maxPickupTime = 90,
	minusTime = -30,
	challengeRegion = 295029,
	weatherId = 4057,
	fatherChallenge = 267,
	childChallenge = {268,269},
	transParam_Pos = {x = -933, y = 202, z = 3275},
	transParam_Rot = {x =1, y = 270, z = 2},
	transParam_Radius = 1,
	point_camera = 295030,
	gadget_lookEntity = 295005,
	look_duration = 2,
	visionType = 33010024
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 0,
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
	[295001] = { config_id = 295001, monster_id = 26090401, pos = { x = -923.949, y = 201.790, z = 3252.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	[295002] = { config_id = 295002, monster_id = 26090401, pos = { x = -918.956, y = 201.790, z = 3255.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	[295003] = { config_id = 295003, monster_id = 26090401, pos = { x = -919.782, y = 201.790, z = 3250.519 }, rot = { x = 0.000, y = 17.529, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	[295021] = { config_id = 295021, monster_id = 26090401, pos = { x = -945.544, y = 231.394, z = 3285.596 }, rot = { x = 0.000, y = 17.529, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	[295027] = { config_id = 295027, monster_id = 26090401, pos = { x = -950.711, y = 231.988, z = 3290.740 }, rot = { x = 0.000, y = 17.529, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	[295031] = { config_id = 295031, monster_id = 26120101, pos = { x = -945.152, y = 232.591, z = 3295.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 201, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[295004] = { config_id = 295004, gadget_id = 70220105, pos = { x = -907.246, y = 207.962, z = 3256.310 }, rot = { x = 352.224, y = 175.943, z = 2.288 }, level = 30, area_id = 23 },
	[295005] = { config_id = 295005, gadget_id = 70310205, pos = { x = -936.831, y = 202.690, z = 3274.501 }, rot = { x = 2.250, y = 261.868, z = 359.678 }, level = 30, area_id = 23 },
	[295006] = { config_id = 295006, gadget_id = 70220104, pos = { x = -946.976, y = 201.790, z = 3275.098 }, rot = { x = 358.214, y = 359.944, z = 3.577 }, level = 30, area_id = 23 },
	[295007] = { config_id = 295007, gadget_id = 70220104, pos = { x = -942.533, y = 201.986, z = 3285.724 }, rot = { x = 358.212, y = 359.958, z = 2.684 }, level = 30, area_id = 23 },
	[295008] = { config_id = 295008, gadget_id = 70220104, pos = { x = -933.030, y = 202.634, z = 3286.561 }, rot = { x = 2.984, y = 14.494, z = 19.609 }, level = 30, area_id = 23 },
	[295009] = { config_id = 295009, gadget_id = 70220104, pos = { x = -924.472, y = 202.150, z = 3264.658 }, rot = { x = 358.246, y = 359.824, z = 11.483 }, level = 30, area_id = 23 },
	[295010] = { config_id = 295010, gadget_id = 70220104, pos = { x = -925.631, y = 201.992, z = 3279.810 }, rot = { x = 2.679, y = 359.916, z = 356.424 }, level = 30, area_id = 23 },
	[295011] = { config_id = 295011, gadget_id = 70220104, pos = { x = -921.038, y = 204.765, z = 3252.790 }, rot = { x = 9.134, y = 342.368, z = 1.876 }, level = 30, area_id = 23 },
	[295012] = { config_id = 295012, gadget_id = 70220104, pos = { x = -909.339, y = 210.704, z = 3245.301 }, rot = { x = 22.795, y = 1.665, z = 3.863 }, level = 30, area_id = 23 },
	[295013] = { config_id = 295013, gadget_id = 70220104, pos = { x = -913.559, y = 216.259, z = 3233.950 }, rot = { x = 2.993, y = 359.695, z = 357.333 }, level = 30, area_id = 23 },
	[295014] = { config_id = 295014, gadget_id = 70220104, pos = { x = -924.954, y = 224.106, z = 3236.173 }, rot = { x = 355.390, y = 359.563, z = 341.919 }, level = 30, area_id = 23 },
	[295015] = { config_id = 295015, gadget_id = 70220104, pos = { x = -939.153, y = 230.614, z = 3249.298 }, rot = { x = 14.813, y = 358.740, z = 353.743 }, level = 30, area_id = 23 },
	[295016] = { config_id = 295016, gadget_id = 70220104, pos = { x = -947.830, y = 231.394, z = 3279.302 }, rot = { x = 4.465, y = 0.070, z = 1.790 }, level = 30, area_id = 23 },
	[295017] = { config_id = 295017, gadget_id = 70220104, pos = { x = -933.468, y = 216.355, z = 3274.948 }, rot = { x = 0.000, y = 359.916, z = 0.000 }, level = 30, area_id = 23 },
	[295018] = { config_id = 295018, gadget_id = 70220104, pos = { x = -948.469, y = 232.679, z = 3297.094 }, rot = { x = 1.797, y = 359.906, z = 4.462 }, level = 30, area_id = 23 },
	[295019] = { config_id = 295019, gadget_id = 70220104, pos = { x = -945.028, y = 234.420, z = 3300.092 }, rot = { x = 2.683, y = 359.958, z = 358.210 }, level = 30, area_id = 23 },
	[295020] = { config_id = 295020, gadget_id = 70220104, pos = { x = -942.059, y = 232.642, z = 3297.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[295022] = { config_id = 295022, gadget_id = 70220103, pos = { x = -949.388, y = 234.972, z = 3258.749 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[295023] = { config_id = 295023, gadget_id = 70220105, pos = { x = -949.399, y = 232.781, z = 3258.801 }, rot = { x = 359.934, y = 284.489, z = 355.535 }, level = 30, area_id = 23 },
	[295024] = { config_id = 295024, gadget_id = 70211121, pos = { x = -936.937, y = 202.824, z = 3274.591 }, rot = { x = 358.400, y = 83.505, z = 1.648 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[295025] = { config_id = 295025, gadget_id = 70220103, pos = { x = -920.765, y = 203.089, z = 3252.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[295032] = { config_id = 295032, gadget_id = 70950145, pos = { x = -936.480, y = 204.639, z = 3274.598 }, rot = { x = 0.000, y = 85.386, z = 0.000 }, level = 33, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 23 },
	[295033] = { config_id = 295033, gadget_id = 70310148, pos = { x = -933.691, y = 202.743, z = 3275.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23 },
	-- 挂按钮用的
	[295034] = { config_id = 295034, gadget_id = 70950145, pos = { x = -930.901, y = 203.388, z = 3273.255 }, rot = { x = 0.000, y = 147.490, z = 0.000 }, level = 33, worktop_config = { init_options = { 758 } }, area_id = 23 }
}

-- 区域
regions = {
	[295026] = { config_id = 295026, shape = RegionShape.SPHERE, radius = 5, pos = { x = -920.677, y = 201.790, z = 3251.120 }, area_id = 23 },
	[295029] = { config_id = 295029, shape = RegionShape.SPHERE, radius = 60, pos = { x = -940.982, y = 225.404, z = 3275.304 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1295026, name = "ENTER_REGION_295026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_295026" },
	{ config_id = 1295028, name = "GADGET_STATE_CHANGE_295028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_295028", action = "action_EVENT_GADGET_STATE_CHANGE_295028" },
	-- 开宝箱时改变406的变量
	{ config_id = 1295035, name = "GADGET_STATE_CHANGE_295035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_295035", action = "action_EVENT_GADGET_STATE_CHANGE_295035", trigger_count = 0 },
	-- 保底，groupload判断doorstate=2
	{ config_id = 1295036, name = "GROUP_LOAD_295036", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_295036", action = "action_EVENT_GROUP_LOAD_295036", trigger_count = 0 }
}

-- 点位
points = {
	[295030] = { config_id = 295030, pos = { x = -925.253, y = 207.614, z = 3271.368 }, rot = { x = 0.000, y = 324.402, z = 0.000 }, area_id = 23 }
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
	end_suite = 0,
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
		gadgets = { 295005 },
		regions = { 295029 },
		triggers = { "GADGET_STATE_CHANGE_295028", "GADGET_STATE_CHANGE_295035", "GROUP_LOAD_295036" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 295021, 295027, 295031 },
		gadgets = { 295004, 295006, 295007, 295008, 295009, 295010, 295011, 295012, 295013, 295014, 295015, 295016, 295017, 295018, 295019, 295020, 295022, 295023, 295025 },
		regions = { 295026, 295029 },
		triggers = { "ENTER_REGION_295026", "GADGET_STATE_CHANGE_295028", "GADGET_STATE_CHANGE_295035" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 295024 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_295035" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 295001, 295002, 295003 },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_295035" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 295032, 295033, 295034 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_295035" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_295026(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 295001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 295002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 295003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_295028(context, evt)
	if 295005 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_295028(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_295035(context, evt)
	if 295024 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_295035(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "open", 1, 133301406) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-910.7786, y=202.1271, z=3292.091}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-910.7786, y=202.1271, z=3292.091}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_295036(context, evt)
	-- 判断变量"doorStatus"为2
	if ScriptLib.GetGroupVariableValue(context, "doorStatus") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_295036(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "open", 1, 133301406) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V3_0/Dreamland"
require "V3_0/CameraLook"