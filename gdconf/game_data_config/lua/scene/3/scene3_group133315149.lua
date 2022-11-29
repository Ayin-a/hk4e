-- 基础信息
local base_info = {
	group_id = 133315149
}

-- Trigger变量
local defs = {
	point_camera = 149009,
	gadget_lookEntity = 149001,
	look_duration = 3
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
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[149001] = { config_id = 149001, gadget_id = 70330236, pos = { x = 144.844, y = 249.422, z = 2787.083 }, rot = { x = 359.984, y = 235.728, z = 359.956 }, level = 27, persistent = true, area_id = 20 },
	[149002] = { config_id = 149002, gadget_id = 70330236, pos = { x = 173.160, y = 199.842, z = 2797.221 }, rot = { x = -0.001, y = 257.270, z = 0.047 }, level = 27, persistent = true, area_id = 20 },
	-- 1号门trigger 下面参数为传送后坐标
	[149003] = { config_id = 149003, gadget_id = 70290264, pos = { x = 144.673, y = 250.033, z = 2787.183 }, rot = { x = 0.000, y = 225.134, z = 0.000 }, level = 27, area_id = 20 },
	-- 2号门trigger 下面参数为传送后坐标
	[149004] = { config_id = 149004, gadget_id = 70290264, pos = { x = 172.858, y = 200.247, z = 2797.024 }, rot = { x = 0.000, y = 258.446, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2号门成功时注目
	{ config_id = 1149005, name = "GADGET_STATE_CHANGE_149005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_149005", action = "action_EVENT_GADGET_STATE_CHANGE_149005" },
	-- 1号门触发
	{ config_id = 1149006, name = "GADGET_STATE_CHANGE_149006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_149006", action = "action_EVENT_GADGET_STATE_CHANGE_149006", trigger_count = 0 },
	-- 2号门触发
	{ config_id = 1149007, name = "GADGET_STATE_CHANGE_149007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_149007", action = "action_EVENT_GADGET_STATE_CHANGE_149007", trigger_count = 0 },
	-- 1号门成功时注目
	{ config_id = 1149008, name = "GADGET_STATE_CHANGE_149008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_149008", action = "action_EVENT_GADGET_STATE_CHANGE_149008" }
}

-- 点位
points = {
	[149009] = { config_id = 149009, pos = { x = 141.626, y = 255.966, z = 2778.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 }
}

-- 变量
variables = {
	{ config_id = 1, name = "first", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	npcs = {
		{ config_id = 149010, npc_id = 1, pos = { x = 170.440, y = 200.120, z = 2797.003 }, rot = { x = 0.000, y = 259.139, z = 0.000 }, area_id = 20 }
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
	end_suite = 2,
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
		gadgets = { 149001, 149002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_149005", "GADGET_STATE_CHANGE_149006", "GADGET_STATE_CHANGE_149007", "GADGET_STATE_CHANGE_149008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 149001, 149002, 149003, 149004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_149005", "GADGET_STATE_CHANGE_149006", "GADGET_STATE_CHANGE_149007", "GADGET_STATE_CHANGE_149008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_149005(context, evt)
	if 149001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_149005(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_149006(context, evt)
	if 149001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_149006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315149, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 149002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 149002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "first", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_149007(context, evt)
	if 149002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_149007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315149, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 149001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 149001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "first", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_149008(context, evt)
	if 149002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_149008(context, evt)
	-- 触发镜头注目，注目位置为坐标（173，199，2797），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=173, y=199, z=2797}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V3_0/CameraLook"