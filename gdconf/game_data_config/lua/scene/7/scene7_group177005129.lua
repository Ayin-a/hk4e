-- 基础信息
local base_info = {
	group_id = 177005129
}

-- Trigger变量
local defs = {
	gadget_riddle_1 = 129001,
	gadget_riddle_2 = 129002,
	gadget_riddle_3 = 129003
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
	{ config_id = 129001, gadget_id = 70900008, pos = { x = 580.525, y = 205.687, z = 640.378 }, rot = { x = 354.848, y = 1.907, z = 3.926 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 210 },
	{ config_id = 129002, gadget_id = 70900008, pos = { x = 575.919, y = 206.646, z = 654.780 }, rot = { x = 354.638, y = 1.546, z = 4.876 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 210 },
	{ config_id = 129003, gadget_id = 70900008, pos = { x = 589.598, y = 208.792, z = 657.181 }, rot = { x = 353.017, y = 5.260, z = 6.258 }, level = 1, persistent = true, area_id = 210 },
	{ config_id = 129005, gadget_id = 70290291, pos = { x = 589.820, y = 207.195, z = 646.027 }, rot = { x = 1.261, y = 302.132, z = 6.394 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 129006, gadget_id = 70211161, pos = { x = 583.476, y = 206.955, z = 650.780 }, rot = { x = 2.308, y = 305.615, z = 6.198 }, level = 16, drop_tag = "渊下宫活动中级稻妻", isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1129004, name = "GADGET_STATE_CHANGE_129004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_129004", action = "action_EVENT_GADGET_STATE_CHANGE_129004" },
	{ config_id = 1129007, name = "GADGET_STATE_CHANGE_129007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_129007", action = "action_EVENT_GADGET_STATE_CHANGE_129007" },
	{ config_id = 1129013, name = "GADGET_STATE_CHANGE_129013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_129013", action = "action_EVENT_GADGET_STATE_CHANGE_129013" },
	{ config_id = 1129014, name = "VARIABLE_CHANGE_129014", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_129014", action = "action_EVENT_VARIABLE_CHANGE_129014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true }
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
		gadgets = { 129001, 129002, 129003, 129005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_129004", "GADGET_STATE_CHANGE_129007", "GADGET_STATE_CHANGE_129013", "VARIABLE_CHANGE_129014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_129004(context, evt)
	if 129001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_129004(context, evt)
	-- 针对当前group内变量名为 "State_Flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_129007(context, evt)
	if 129003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_129007(context, evt)
	-- 针对当前group内变量名为 "State_Flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_129013(context, evt)
	if 129002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_129013(context, evt)
	-- 针对当前group内变量名为 "State_Flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_129014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"State_Flag"为3
	if ScriptLib.GetGroupVariableValue(context, "State_Flag") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_129014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 129005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为129006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 129006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（589，207，646），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=589, y=207, z=646}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end