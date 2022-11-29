-- 基础信息
local base_info = {
	group_id = 133309493
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 493002,
	gadget_fireBase1 = 493001,
	gadget_fire1 = 493003,
	gadget_fireBase2 = 493004,
	gadget_fire2 = 493005,
	gadget_fireBase3 = 0,
	gadget_fire3 = 0,
	gadget_fireBase4 = 0,
	gadget_fire4 = 0
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
	-- 1号基座
	{ config_id = 493001, gadget_id = 70330279, pos = { x = -2963.261, y = 171.061, z = 5398.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 493002, gadget_id = 70330278, pos = { x = -2962.806, y = 170.992, z = 5483.275 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 1号火种
	{ config_id = 493003, gadget_id = 70330257, pos = { x = -2963.261, y = 172.611, z = 5398.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900196, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 493004, gadget_id = 70330279, pos = { x = -2966.381, y = 171.026, z = 5456.069 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 493005, gadget_id = 70330257, pos = { x = -2966.381, y = 172.751, z = 5456.069 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, route_id = 330900197, persistent = true, area_id = 27 },
	-- 回程钩爪
	{ config_id = 493006, gadget_id = 70220103, pos = { x = -2963.027, y = 173.548, z = 5423.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 493009, gadget_id = 70330225, pos = { x = -2957.844, y = 172.992, z = 5482.968 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 493010, gadget_id = 70330225, pos = { x = -2972.833, y = 161.002, z = 5416.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成，开启双风扇 关闭间歇风扇
	{ config_id = 1493007, name = "GADGET_STATE_CHANGE_493007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_493007", action = "action_EVENT_GADGET_STATE_CHANGE_493007" },
	-- 保底
	{ config_id = 1493008, name = "GROUP_LOAD_493008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_493008", action = "action_EVENT_GROUP_LOAD_493008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1493011, name = "GADGET_STATE_CHANGE_493011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_493011", action = "action_EVENT_GADGET_STATE_CHANGE_493011" },
	-- 玩法进度埋点
	{ config_id = 1493012, name = "GADGET_STATE_CHANGE_493012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_493012", action = "action_EVENT_GADGET_STATE_CHANGE_493012" },
	{ config_id = 1493014, name = "VARIABLE_CHANGE_493014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_493014", action = "action_EVENT_VARIABLE_CHANGE_493014" },
	-- 补充保底
	{ config_id = 1493015, name = "GROUP_LOAD_493015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_493015", action = "action_EVENT_GROUP_LOAD_493015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "built", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1493013, name = "VARIABLE_CHANGE_493013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_493013", action = "action_EVENT_VARIABLE_CHANGE_493013" }
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
		gadgets = { 493001, 493002, 493004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_493007", "GROUP_LOAD_493008", "GADGET_STATE_CHANGE_493011", "GADGET_STATE_CHANGE_493012", "VARIABLE_CHANGE_493014", "GROUP_LOAD_493015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_493007(context, evt)
	if 493002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_493007(context, evt)
	-- 将本组内变量名为 "stop" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stop", 1, 133309761) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "isOn" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isOn", 1, 133309279) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建id为493009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 493009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为493006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 493006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为493010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 493010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 触发镜头注目，注目位置为坐标{x=-2957.591, y=172.9921, z=5482.968}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2957.591, y=172.9921, z=5482.968}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_493008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309493, 493002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_493008(context, evt)
	-- 将本组内变量名为 "stop" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stop", 1, 133309761) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_493011(context, evt)
	if 493001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_493011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7022, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_493012(context, evt)
	if 493004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_493012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_493014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"built"为1
	if ScriptLib.GetGroupVariableValue(context, "built") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_493014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 493010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 493009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_493015(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309493, 493002) then
		return false
	end
	
	-- 判断变量"built"为0
	if ScriptLib.GetGroupVariableValue(context, "built") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_493015(context, evt)
	-- 创建id为493009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 493009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为493010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 493010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"
require "V3_1/Engineer_Mark"