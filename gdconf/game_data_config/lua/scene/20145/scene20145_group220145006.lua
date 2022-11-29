-- 基础信息
local base_info = {
	group_id = 220145006
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
	{ config_id = 6001, gadget_id = 70290484, pos = { x = 460.167, y = 95.733, z = 535.074 }, rot = { x = 0.000, y = 172.706, z = 0.000 }, level = 1 },
	{ config_id = 6002, gadget_id = 70290508, pos = { x = 460.167, y = 95.733, z = 535.074 }, rot = { x = 0.000, y = 172.706, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 6003, gadget_id = 70310200, pos = { x = 462.677, y = 100.000, z = 539.320 }, rot = { x = 0.000, y = 307.820, z = 0.000 }, level = 1 },
	{ config_id = 6004, gadget_id = 70310200, pos = { x = 454.947, y = 100.000, z = 536.607 }, rot = { x = 0.000, y = 19.242, z = 0.000 }, level = 1 },
	{ config_id = 6009, gadget_id = 70360001, pos = { x = 460.167, y = 95.733, z = 535.074 }, rot = { x = 0.000, y = 172.706, z = 0.000 }, level = 1, worktop_config = { init_options = { 220 } } },
	{ config_id = 6010, gadget_id = 70900201, pos = { x = 460.167, y = 98.389, z = 535.074 }, rot = { x = 0.000, y = 172.706, z = 0.000 }, level = 1 },
	{ config_id = 6011, gadget_id = 70310200, pos = { x = 460.555, y = 102.405, z = 530.402 }, rot = { x = 0.000, y = 346.170, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006005, name = "GADGET_STATE_CHANGE_6005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6005", action = "action_EVENT_GADGET_STATE_CHANGE_6005", trigger_count = 0 },
	{ config_id = 1006006, name = "GADGET_STATE_CHANGE_6006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6006", action = "action_EVENT_GADGET_STATE_CHANGE_6006", trigger_count = 0 },
	{ config_id = 1006007, name = "VARIABLE_CHANGE_6007", event = EventType.EVENT_VARIABLE_CHANGE, source = "sum", condition = "condition_EVENT_VARIABLE_CHANGE_6007", action = "action_EVENT_VARIABLE_CHANGE_6007", trigger_count = 0 },
	{ config_id = 1006008, name = "SELECT_OPTION_6008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6008", action = "action_EVENT_SELECT_OPTION_6008", trigger_count = 0 },
	{ config_id = 1006012, name = "GADGET_STATE_CHANGE_6012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6012", action = "action_EVENT_GADGET_STATE_CHANGE_6012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "sum", value = 0, no_refresh = false }
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
		gadgets = { 6001, 6002, 6003, 6004, 6010, 6011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_6005", "GADGET_STATE_CHANGE_6006", "VARIABLE_CHANGE_6007", "SELECT_OPTION_6008", "GADGET_STATE_CHANGE_6012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 6009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_6005(context, evt)
	if 6003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6005(context, evt)
	-- 针对当前group内变量名为 "sum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "sum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6006(context, evt)
	if 6004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6006(context, evt)
	-- 针对当前group内变量名为 "sum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "sum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"sum"为3
	if ScriptLib.GetGroupVariableValue(context, "sum") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6007(context, evt)
	-- 将configid为 6001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=460.5, y=96.39041, z=534.6149}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=460.5, y=96.39041, z=534.6149}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220145006, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6008(context, evt)
	-- 判断是gadgetid 6009 option_id 220
	if 6009 ~= evt.param1 then
		return false	
	end
	
	if 220 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6008(context, evt)
	-- 删除指定group： 220145006 ；指定config：6009；物件身上指定option：220；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220145006, 6009, 220) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 6002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "KeyNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "KeyNum", 1, 220145001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 6010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 调用提示id为 -993956595 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -993956595) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6012(context, evt)
	if 6011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6012(context, evt)
	-- 针对当前group内变量名为 "sum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "sum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end