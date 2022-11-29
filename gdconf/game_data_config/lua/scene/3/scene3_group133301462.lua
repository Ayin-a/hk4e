-- 基础信息
local base_info = {
	group_id = 133301462
}

-- Trigger变量
local defs = {
	point_camera = 462009,
	gadget_lookEntity = 462001,
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
	[462001] = { config_id = 462001, gadget_id = 70330236, pos = { x = -837.007, y = 10.476, z = 3134.764 }, rot = { x = 0.009, y = 177.983, z = 359.954 }, level = 30, persistent = true, area_id = 23 },
	[462002] = { config_id = 462002, gadget_id = 70330236, pos = { x = -838.032, y = -34.431, z = 3137.050 }, rot = { x = 359.990, y = 13.613, z = 359.954 }, level = 30, persistent = true, area_id = 23 },
	-- 1号门trigger 下面参数为传送后坐标
	[462003] = { config_id = 462003, gadget_id = 70290264, pos = { x = -837.892, y = -34.113, z = 3137.396 }, rot = { x = 2.147, y = 18.489, z = 358.874 }, level = 30, area_id = 23 },
	-- 2号门trigger 下面参数为传送后坐标
	[462004] = { config_id = 462004, gadget_id = 70290264, pos = { x = -837.040, y = 10.696, z = 3134.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2号门成功时注目
	{ config_id = 1462005, name = "GADGET_STATE_CHANGE_462005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_462005", action = "action_EVENT_GADGET_STATE_CHANGE_462005" },
	-- 1号门触发
	{ config_id = 1462006, name = "GADGET_STATE_CHANGE_462006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_462006", action = "action_EVENT_GADGET_STATE_CHANGE_462006", trigger_count = 0 },
	-- 2号门触发
	{ config_id = 1462007, name = "GADGET_STATE_CHANGE_462007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_462007", action = "action_EVENT_GADGET_STATE_CHANGE_462007", trigger_count = 0 },
	-- 1号门成功时注目
	{ config_id = 1462008, name = "GADGET_STATE_CHANGE_462008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_462008", action = "action_EVENT_GADGET_STATE_CHANGE_462008" }
}

-- 点位
points = {
	[462009] = { config_id = 462009, pos = { x = -836.053, y = 15.146, z = 3125.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
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
		gadgets = { 462001, 462002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_462005", "GADGET_STATE_CHANGE_462006", "GADGET_STATE_CHANGE_462007", "GADGET_STATE_CHANGE_462008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 462001, 462002, 462003, 462004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_462005", "GADGET_STATE_CHANGE_462006", "GADGET_STATE_CHANGE_462007", "GADGET_STATE_CHANGE_462008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_462005(context, evt)
	if 462001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_462005(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_462006(context, evt)
	if 462001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_462006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301462, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 462002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 462002, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_STATE_CHANGE_462007(context, evt)
	if 462002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_462007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301462, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 462001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 462001, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_STATE_CHANGE_462008(context, evt)
	if 462002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_462008(context, evt)
	-- 触发镜头注目，注目位置为坐标（-315.8381，223.0402，3557.383），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-315.8381, y=223.0402, z=3557.383}
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