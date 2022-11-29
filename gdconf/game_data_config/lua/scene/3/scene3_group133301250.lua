-- 基础信息
local base_info = {
	group_id = 133301250
}

-- Trigger变量
local defs = {
	gadget_CoreID = 250005,
	monster_BossID = 250002,
	gadget_Point_1 = 250006,
	gadget_Point_2 = 250007,
	gadget_Point_3 = 250008,
	target_x = -58,
	target_y = 285.1,
	target_z = 3195.1,
	camera_x = -65.25,
	camera_y = 287.38,
	camera_z = 3211.92,
	duration = 5,
	point_camera = 250013,
	gadget_lookEntity = 250005,
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
	[250001] = { config_id = 250001, monster_id = 26090501, pos = { x = -54.139, y = 284.958, z = 3198.802 }, rot = { x = 0.000, y = 55.724, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 22 },
	[250002] = { config_id = 250002, monster_id = 26120201, pos = { x = -54.331, y = 284.924, z = 3196.551 }, rot = { x = 0.000, y = 62.972, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, affix = { 6116, 6117 }, isElite = true, pose_id = 201, area_id = 22, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[250003] = { config_id = 250003, monster_id = 26090501, pos = { x = -52.625, y = 285.149, z = 3195.857 }, rot = { x = 0.000, y = 66.708, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[250004] = { config_id = 250004, gadget_id = 70211111, pos = { x = -60.582, y = 284.898, z = 3196.027 }, rot = { x = 2.096, y = 295.529, z = 2.939 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	[250005] = { config_id = 250005, gadget_id = 70310193, pos = { x = -58.005, y = 285.103, z = 3195.072 }, rot = { x = 356.999, y = 278.243, z = 3.490 }, level = 33, persistent = true, area_id = 22 },
	[250006] = { config_id = 250006, gadget_id = 70310195, pos = { x = -80.448, y = 288.085, z = 3217.410 }, rot = { x = 11.931, y = 199.943, z = 12.284 }, level = 33, persistent = true, area_id = 22 },
	[250007] = { config_id = 250007, gadget_id = 70310195, pos = { x = -42.606, y = 289.193, z = 3207.000 }, rot = { x = 351.834, y = 38.953, z = 317.703 }, level = 33, persistent = true, area_id = 22 },
	[250008] = { config_id = 250008, gadget_id = 70310195, pos = { x = -75.785, y = 293.110, z = 3176.845 }, rot = { x = 3.235, y = 225.398, z = 354.918 }, level = 33, persistent = true, area_id = 22 },
	[250009] = { config_id = 250009, gadget_id = 70310192, pos = { x = -57.220, y = 289.799, z = 3186.766 }, rot = { x = 354.779, y = 58.506, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[250010] = { config_id = 250010, gadget_id = 70310192, pos = { x = -72.388, y = 287.399, z = 3207.324 }, rot = { x = 0.000, y = 221.602, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[250011] = { config_id = 250011, gadget_id = 70310192, pos = { x = -90.535, y = 284.875, z = 3188.443 }, rot = { x = 306.419, y = 8.805, z = 355.851 }, level = 33, persistent = true, area_id = 22 },
	[250012] = { config_id = 250012, gadget_id = 70310191, pos = { x = -47.270, y = 286.019, z = 3197.167 }, rot = { x = 2.356, y = 304.994, z = 359.737 }, level = 33, persistent = true, area_id = 22 },
	[250015] = { config_id = 250015, gadget_id = 70310197, pos = { x = -43.114, y = 294.121, z = 3191.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	[250017] = { config_id = 250017, gadget_id = 70310198, pos = { x = -84.894, y = 284.811, z = 3194.219 }, rot = { x = 356.257, y = 323.455, z = 2.070 }, level = 33, area_id = 22 },
	[250019] = { config_id = 250019, gadget_id = 70310198, pos = { x = -53.167, y = 287.358, z = 3206.962 }, rot = { x = 359.517, y = 268.900, z = 4.249 }, level = 27, area_id = 22 },
	[250020] = { config_id = 250020, gadget_id = 70310196, pos = { x = -59.527, y = 286.193, z = 3196.754 }, rot = { x = 0.000, y = 321.084, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[250021] = { config_id = 250021, gadget_id = 70310196, pos = { x = -56.810, y = 286.440, z = 3195.344 }, rot = { x = 0.000, y = 79.424, z = 359.241 }, level = 33, persistent = true, area_id = 22 },
	[250022] = { config_id = 250022, gadget_id = 70290513, pos = { x = -59.710, y = 286.289, z = 3193.433 }, rot = { x = 346.491, y = 220.890, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[250023] = { config_id = 250023, gadget_id = 70290492, pos = { x = -80.448, y = 288.085, z = 3217.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[250024] = { config_id = 250024, gadget_id = 70310197, pos = { x = -50.466, y = 285.110, z = 3197.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	[250025] = { config_id = 250025, gadget_id = 70310197, pos = { x = -74.013, y = 285.648, z = 3207.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	[250026] = { config_id = 250026, gadget_id = 70290491, pos = { x = -58.005, y = 285.103, z = 3195.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[250032] = { config_id = 250032, gadget_id = 70310197, pos = { x = -41.880, y = 287.277, z = 3191.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	[250033] = { config_id = 250033, gadget_id = 70310197, pos = { x = -78.633, y = 286.215, z = 3195.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	[250034] = { config_id = 250034, gadget_id = 70310197, pos = { x = -54.188, y = 286.312, z = 3201.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 核心交互播镜头
	{ config_id = 1250014, name = "LUA_NOTIFY_250014", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_250014" },
	{ config_id = 1250016, name = "MONSTER_BATTLE_250016", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_250016", action = "action_EVENT_MONSTER_BATTLE_250016" },
	{ config_id = 1250018, name = "ANY_MONSTER_DIE_250018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_250018", action = "action_EVENT_ANY_MONSTER_DIE_250018" },
	-- 核心消失刷宝箱
	{ config_id = 1250027, name = "ANY_GADGET_DIE_250027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_250027", action = "action_EVENT_ANY_GADGET_DIE_250027" },
	-- 节点死对应特效消失
	{ config_id = 1250028, name = "GADGET_STATE_CHANGE_250028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_250028", action = "action_EVENT_GADGET_STATE_CHANGE_250028" },
	-- 节点死对应特效消失
	{ config_id = 1250029, name = "GADGET_STATE_CHANGE_250029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_250029", action = "action_EVENT_GADGET_STATE_CHANGE_250029" },
	-- 节点死对应特效消失
	{ config_id = 1250030, name = "GADGET_STATE_CHANGE_250030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_250030", action = "action_EVENT_GADGET_STATE_CHANGE_250030" },
	-- 核心交互播镜头
	{ config_id = 1250031, name = "LUA_NOTIFY_250031", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_250031", trigger_count = 0 }
}

-- 点位
points = {
	-- 摄像机位置
	[250013] = { config_id = 250013, pos = { x = -65.250, y = 287.380, z = 3211.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 22 }
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
		gadgets = { 250005, 250006, 250007, 250008, 250009, 250010, 250011, 250012, 250017, 250019, 250020, 250021, 250022, 250023, 250026 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_250027", "GADGET_STATE_CHANGE_250028", "GADGET_STATE_CHANGE_250029", "GADGET_STATE_CHANGE_250030", "LUA_NOTIFY_250031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 250001, 250002, 250003 },
		gadgets = { 250024, 250025, 250033 },
		regions = { },
		triggers = { "MONSTER_BATTLE_250016", "ANY_MONSTER_DIE_250018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 250004, 250017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 250004 },
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
function action_EVENT_LUA_NOTIFY_250014(context, evt)
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

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_250016(context, evt)
	if 250002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_250016(context, evt)
	-- 将configid为 250012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为250015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 250015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为250025的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 250025 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为250032的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 250032 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为250033的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 250033 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为250034的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 250034 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_250018(context, evt)
	--判断死亡怪物的configid是否为 250002
	if evt.param1 ~= 250002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_250018(context, evt)
	-- 将configid为 250012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_250027(context, evt)
	if 250005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_250027(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301250, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_250028(context, evt)
	if 250006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_250028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 250020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_250029(context, evt)
	if 250007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_250029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 250021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_250030(context, evt)
	if 250008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_250030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 250022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_250031(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"