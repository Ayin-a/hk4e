-- 基础信息
local base_info = {
	group_id = 133310097
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 97002,
	gadget_fireBase1 = 97001,
	gadget_fire1 = 97003,
	gadget_fireBase2 = 97004,
	gadget_fire2 = 97005,
	gadget_fireBase3 = 97010,
	gadget_fire3 = 97011,
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
	{ config_id = 97001, gadget_id = 70330313, pos = { x = -2423.169, y = 125.786, z = 5269.080 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 97002, gadget_id = 70330278, pos = { x = -2364.000, y = 101.048, z = 5249.030 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 97003, gadget_id = 70330257, pos = { x = -2423.171, y = 127.643, z = 5269.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331000030, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 97004, gadget_id = 70330279, pos = { x = -2425.983, y = 97.937, z = 5239.007 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 97005, gadget_id = 70330257, pos = { x = -2425.983, y = 99.742, z = 5239.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331000031, persistent = true, area_id = 27 },
	{ config_id = 97006, gadget_id = 70330416, pos = { x = -2385.952, y = 98.213, z = 5259.076 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 3号基座
	{ config_id = 97010, gadget_id = 70330279, pos = { x = -2388.234, y = 97.944, z = 5256.923 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 3号火种
	{ config_id = 97011, gadget_id = 70330257, pos = { x = -2388.234, y = 99.720, z = 5256.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331000032, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1097007, name = "GADGET_STATE_CHANGE_97007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97007", action = "action_EVENT_GADGET_STATE_CHANGE_97007" },
	-- 开门97006
	{ config_id = 1097008, name = "GADGET_STATE_CHANGE_97008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97008", action = "action_EVENT_GADGET_STATE_CHANGE_97008" },
	-- 保底开97006
	{ config_id = 1097009, name = "GROUP_LOAD_97009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_97009", action = "action_EVENT_GROUP_LOAD_97009", trigger_count = 0 },
	-- 保底
	{ config_id = 1097012, name = "GROUP_LOAD_97012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_97012", action = "action_EVENT_GROUP_LOAD_97012", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1097013, name = "GADGET_STATE_CHANGE_97013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97013", action = "action_EVENT_GADGET_STATE_CHANGE_97013" },
	-- 玩法进度埋点
	{ config_id = 1097014, name = "GADGET_STATE_CHANGE_97014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97014", action = "action_EVENT_GADGET_STATE_CHANGE_97014" },
	-- 玩法进度埋点
	{ config_id = 1097015, name = "GADGET_STATE_CHANGE_97015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97015", action = "action_EVENT_GADGET_STATE_CHANGE_97015" },
	-- 被风扇吹灭播reminder
	{ config_id = 1097016, name = "GADGET_STATE_CHANGE_97016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97016", action = "action_EVENT_GADGET_STATE_CHANGE_97016" },
	-- 火种进入2号加变量
	{ config_id = 1097017, name = "GADGET_STATE_CHANGE_97017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97017", action = "action_EVENT_GADGET_STATE_CHANGE_97017" },
	-- 运营埋点
	{ config_id = 1097018, name = "GADGET_STATE_CHANGE_97018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97018", action = "action_EVENT_GADGET_STATE_CHANGE_97018" }
}

-- 变量
variables = {
	{ config_id = 1, name = "opendoor", value = 0, no_refresh = true },
	{ config_id = 2, name = "reminder", value = 0, no_refresh = true }
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
		gadgets = { 97001, 97002, 97004, 97006, 97010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_97007", "GADGET_STATE_CHANGE_97008", "GROUP_LOAD_97009", "GROUP_LOAD_97012", "GADGET_STATE_CHANGE_97013", "GADGET_STATE_CHANGE_97014", "GADGET_STATE_CHANGE_97015", "GADGET_STATE_CHANGE_97016", "GADGET_STATE_CHANGE_97017", "GADGET_STATE_CHANGE_97018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97007(context, evt)
	if 97002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97007(context, evt)
	-- 针对当前group内变量名为 "torch" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "torch", 1, 133310013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "reminder4" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "reminder4", 1, 133310287) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7305314") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97008(context, evt)
	if 97010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97008(context, evt)
	-- 将本组内变量名为 "opendoor" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "opendoor", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 97006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 97006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_97009(context, evt)
	-- 判断变量"opendoor"为1
	if ScriptLib.GetGroupVariableValue(context, "opendoor") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_97009(context, evt)
	-- 将configid为 97006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 97006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_97012(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133310097, 97002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_97012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7305314") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97013(context, evt)
	if 97001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97014(context, evt)
	if 97004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97014(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97015(context, evt)
	if 97010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97015(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97016(context, evt)
	-- 判断变量"reminder"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 1 then
			return false
	end
	
	-- 检测config_id为97004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 97004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97016(context, evt)
	-- 调用提示id为 1000060016 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000060016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97017(context, evt)
	if 97004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97017(context, evt)
	-- 将本组内变量名为 "reminder" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97018(context, evt)
	-- 检测config_id为97001的gadget是否从GadgetState.GearAction2变为GadgetState.GearStart
	if 97001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97018(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330313) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"