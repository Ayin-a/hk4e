-- 基础信息
local base_info = {
	group_id = 133302529
}

-- Trigger变量
local defs = {
	point_camera = 529009,
	gadget_lookEntity = 529001,
	look_duration = 3
}

-- DEFS_MISCS
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
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[529001] = { config_id = 529001, gadget_id = 70330236, pos = { x = -68.658, y = 229.391, z = 2085.999 }, rot = { x = 0.000, y = 290.738, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[529002] = { config_id = 529002, gadget_id = 70330236, pos = { x = -70.102, y = 170.507, z = 2086.834 }, rot = { x = 0.000, y = 133.182, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 1号门trigger 下面参数为传送后坐标
	[529003] = { config_id = 529003, gadget_id = 70290264, pos = { x = -68.658, y = 229.710, z = 2085.999 }, rot = { x = 0.000, y = 290.738, z = 0.000 }, level = 27, area_id = 20 },
	-- 2号门trigger 下面参数为传送后坐标
	[529004] = { config_id = 529004, gadget_id = 70290264, pos = { x = -70.102, y = 170.507, z = 2086.834 }, rot = { x = 0.000, y = 133.182, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2号门成功时注目
	{ config_id = 1529005, name = "GADGET_STATE_CHANGE_529005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_529005", action = "action_EVENT_GADGET_STATE_CHANGE_529005" },
	-- 1号门触发
	{ config_id = 1529006, name = "GADGET_STATE_CHANGE_529006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_529006", action = "action_EVENT_GADGET_STATE_CHANGE_529006", trigger_count = 0 },
	-- 2号门触发
	{ config_id = 1529007, name = "GADGET_STATE_CHANGE_529007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_529007", action = "action_EVENT_GADGET_STATE_CHANGE_529007", trigger_count = 0 },
	-- 1号门成功时注目
	{ config_id = 1529008, name = "GADGET_STATE_CHANGE_529008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_529008", action = "action_EVENT_GADGET_STATE_CHANGE_529008" }
}

-- 点位
points = {
	[529009] = { config_id = 529009, pos = { x = -76.470, y = 233.836, z = 2089.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 }
}

-- 变量
variables = {
	{ config_id = 1, name = "first", value = 0, no_refresh = true }
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
		gadgets = { 529001, 529002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_529005", "GADGET_STATE_CHANGE_529006", "GADGET_STATE_CHANGE_529007", "GADGET_STATE_CHANGE_529008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 529001, 529002, 529003, 529004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_529005", "GADGET_STATE_CHANGE_529006", "GADGET_STATE_CHANGE_529007", "GADGET_STATE_CHANGE_529008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_529005(context, evt)
	if 529001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_529005(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_529006(context, evt)
	if 529001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_529006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302529, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 529002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 529002, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_STATE_CHANGE_529007(context, evt)
	if 529002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_529007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302529, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 529001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 529001, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_STATE_CHANGE_529008(context, evt)
	if 529002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_529008(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-68.65826, y=230.71, z=2085.999}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-68.65826, y=230.71, z=2085.999}
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