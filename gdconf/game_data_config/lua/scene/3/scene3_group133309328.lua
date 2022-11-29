-- 基础信息
local base_info = {
	group_id = 133309328
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 328002,
	gadget_fireBase1 = 328001,
	gadget_fire1 = 328003,
	gadget_fireBase2 = 328005,
	gadget_fire2 = 328009,
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
	{ config_id = 328001, gadget_id = 70330313, pos = { x = -2644.358, y = 36.686, z = 5284.090 }, rot = { x = 0.000, y = 307.047, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 328002, gadget_id = 70330278, pos = { x = -2534.200, y = 49.346, z = 5287.795 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 328003, gadget_id = 70330257, pos = { x = -2644.357, y = 38.651, z = 5284.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900114, persistent = true, area_id = 27 },
	{ config_id = 328004, gadget_id = 70330225, pos = { x = -2594.736, y = 40.594, z = 5314.113 }, rot = { x = 0.000, y = 345.058, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 328005, gadget_id = 70330279, pos = { x = -2567.691, y = 54.908, z = 5293.349 }, rot = { x = 0.000, y = 90.037, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 328009, gadget_id = 70330257, pos = { x = -2567.691, y = 56.708, z = 5293.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900115, persistent = true, area_id = 27 },
	{ config_id = 328016, gadget_id = 70330282, pos = { x = -2560.198, y = 55.854, z = 5297.803 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, server_global_value_config = {SGV_ChiWangLevelRequire = 5}, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1328006, name = "GADGET_STATE_CHANGE_328006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_328006", action = "action_EVENT_GADGET_STATE_CHANGE_328006", trigger_count = 0 },
	-- 等待开门
	{ config_id = 1328007, name = "SELECT_OPTION_328007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_328007", action = "action_EVENT_SELECT_OPTION_328007" },
	-- 玩法开始埋点
	{ config_id = 1328008, name = "GADGET_STATE_CHANGE_328008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_328008", action = "action_EVENT_GADGET_STATE_CHANGE_328008" },
	-- 玩法完成埋点
	{ config_id = 1328010, name = "GADGET_STATE_CHANGE_328010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_328010", action = "action_EVENT_GADGET_STATE_CHANGE_328010" },
	-- 开门
	{ config_id = 1328011, name = "TIME_AXIS_PASS_328011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_328011", action = "action_EVENT_TIME_AXIS_PASS_328011" },
	-- 玩法完成行为
	{ config_id = 1328012, name = "GADGET_STATE_CHANGE_328012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_328012", action = "action_EVENT_GADGET_STATE_CHANGE_328012" },
	-- 开门保底
	{ config_id = 1328013, name = "GROUP_LOAD_328013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_328013", action = "action_EVENT_GROUP_LOAD_328013", trigger_count = 0 },
	-- 玩法进度埋点
	{ config_id = 1328014, name = "GADGET_STATE_CHANGE_328014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_328014", action = "action_EVENT_GADGET_STATE_CHANGE_328014" },
	-- 运营埋点
	{ config_id = 1328015, name = "GADGET_STATE_CHANGE_328015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_328015", action = "action_EVENT_GADGET_STATE_CHANGE_328015" },
	-- 玩法完成保底
	{ config_id = 1328017, name = "GROUP_LOAD_328017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_328017", action = "action_EVENT_GROUP_LOAD_328017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isOpen", value = 0, no_refresh = true }
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
		gadgets = { 328001, 328002, 328004, 328005, 328016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_328006", "SELECT_OPTION_328007", "GADGET_STATE_CHANGE_328008", "GADGET_STATE_CHANGE_328010", "TIME_AXIS_PASS_328011", "GADGET_STATE_CHANGE_328012", "GROUP_LOAD_328013", "GADGET_STATE_CHANGE_328014", "GADGET_STATE_CHANGE_328015", "GROUP_LOAD_328017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_328006(context, evt)
	-- 检测config_id为328001的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 328001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_328006(context, evt)
	-- 将configid为 328001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 328001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_328007(context, evt)
	-- 判断是gadgetid 328005 option_id 430
	if 328005 ~= evt.param1 then
		return false	
	end
	
	if 430 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"isOpen"为0
	if ScriptLib.GetGroupVariableValue(context, "isOpen") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_328007(context, evt)
	-- 将本组内变量名为 "isOpen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isOpen", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"openGate"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "openGate", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_328008(context, evt)
	if 328001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_328008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_328010(context, evt)
	if 328002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_328010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_328011(context, evt)
	if "openGate" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_328011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5021, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 328016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_328012(context, evt)
	if 328002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_328012(context, evt)
	-- 将本组内变量名为 "activeCount2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "activeCount2", 1, 133309329) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_328013(context, evt)
	-- 判断变量"isOpen"为1
	if ScriptLib.GetGroupVariableValue(context, "isOpen") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_328013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5021, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 328016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_328014(context, evt)
	if 328005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_328014(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_328015(context, evt)
	-- 检测config_id为328001的gadget是否从GadgetState.GearAction2变为GadgetState.GearStart
	if 328001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_328015(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330313) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_328017(context, evt)
	if 328002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_328017(context, evt)
	-- 将本组内变量名为 "activeCount2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "activeCount2", 1, 133309329) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"