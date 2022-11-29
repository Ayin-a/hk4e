-- 基础信息
local base_info = {
	group_id = 133210464
}

-- Trigger变量
local defs = {
	group_ID = 133210464,
	gadget_fundation01 = 464001,
	gadget_hand01 = 464003,
	gadget_fundation02 = 464002,
	gadget_hand02 = 464004,
	gadget_fundation03 = 464007,
	gadget_hand03 = 464005,
	gadget_fundation04 = 0,
	gadget_hand04 = 0,
	gadget_fundation05 = 0,
	gadget_hand05 = 0,
	minDiscrapancy = 15
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
	-- #1
	{ config_id = 464001, gadget_id = 70950084, pos = { x = -3868.049, y = 251.039, z = -538.063 }, rot = { x = 0.000, y = 0.161, z = 0.000 }, level = 30, area_id = 17 },
	-- #2
	{ config_id = 464002, gadget_id = 70950084, pos = { x = -3864.951, y = 250.524, z = -539.594 }, rot = { x = 0.000, y = 59.132, z = 0.000 }, level = 30, area_id = 17 },
	-- #1
	{ config_id = 464003, gadget_id = 70950085, pos = { x = -3868.049, y = 251.039, z = -538.063 }, rot = { x = 0.000, y = 182.441, z = 0.000 }, level = 30, area_id = 17 },
	-- #2 初始带锁
	{ config_id = 464004, gadget_id = 70950085, pos = { x = -3864.951, y = 250.524, z = -539.594 }, rot = { x = 0.000, y = 237.117, z = 0.000 }, level = 30, state = GadgetState.GearStop, area_id = 17 },
	-- #3 初始带锁
	{ config_id = 464005, gadget_id = 70950085, pos = { x = -3867.932, y = 250.020, z = -545.355 }, rot = { x = 0.000, y = 342.475, z = 0.000 }, level = 30, state = GadgetState.GearStop, area_id = 17 },
	-- #3
	{ config_id = 464007, gadget_id = 70950084, pos = { x = -3867.932, y = 250.020, z = -545.355 }, rot = { x = 0.000, y = 180.314, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1464006, name = "VARIABLE_CHANGE_464006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_464006", action = "action_EVENT_VARIABLE_CHANGE_464006" },
	{ config_id = 1464008, name = "GROUP_LOAD_464008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_464008", action = "action_EVENT_GROUP_LOAD_464008", trigger_count = 0 }
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
		gadgets = { 464001, 464002, 464003, 464004, 464005, 464007 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_464006", "GROUP_LOAD_464008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_VARIABLE_CHANGE_464006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_464006(context, evt)
	-- 将本组内变量名为 "GadgetCreate" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GadgetCreate", 1, 133210300) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 1, 133210457) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 1, 133210461) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "success", 1, 133210459) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-3853.265，257.8549，-541.0959），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3853.265, y=257.8549, z=-541.0959}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 32100188 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100188) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_464008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133210459, 459001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_464008(context, evt)
	-- 将configid为 464004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 464004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 464005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 464005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/MagneticGear"