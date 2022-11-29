-- 基础信息
local base_info = {
	group_id = 133310098
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 98002,
	gadget_fireBase1 = 98001,
	gadget_fire1 = 98003,
	gadget_fireBase2 = 98004,
	gadget_fire2 = 98005,
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
	{ config_id = 98001, gadget_id = 70330279, pos = { x = -2285.985, y = 121.382, z = 5292.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 98002, gadget_id = 70330278, pos = { x = -2338.092, y = 101.048, z = 5249.030 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 98003, gadget_id = 70330257, pos = { x = -2285.986, y = 123.192, z = 5292.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331000028, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 98004, gadget_id = 70330279, pos = { x = -2314.022, y = 98.025, z = 5261.934 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 98005, gadget_id = 70330257, pos = { x = -2314.022, y = 99.822, z = 5261.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331000029, persistent = true, area_id = 27 },
	{ config_id = 98006, gadget_id = 70330416, pos = { x = -2316.042, y = 98.218, z = 5258.999 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1098007, name = "GADGET_STATE_CHANGE_98007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_98007", action = "action_EVENT_GADGET_STATE_CHANGE_98007" },
	-- 开门98006
	{ config_id = 1098008, name = "GADGET_STATE_CHANGE_98008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_98008", action = "action_EVENT_GADGET_STATE_CHANGE_98008" },
	-- 保底开98006
	{ config_id = 1098009, name = "GROUP_LOAD_98009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_98009", action = "action_EVENT_GROUP_LOAD_98009", trigger_count = 0 },
	-- 保底
	{ config_id = 1098010, name = "GROUP_LOAD_98010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_98010", action = "action_EVENT_GROUP_LOAD_98010", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1098011, name = "GADGET_STATE_CHANGE_98011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_98011", action = "action_EVENT_GADGET_STATE_CHANGE_98011" },
	-- 玩法进度埋点
	{ config_id = 1098012, name = "GADGET_STATE_CHANGE_98012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_98012", action = "action_EVENT_GADGET_STATE_CHANGE_98012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "opendoor", value = 0, no_refresh = true }
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
		gadgets = { 98001, 98002, 98004, 98006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_98007", "GADGET_STATE_CHANGE_98008", "GROUP_LOAD_98009", "GROUP_LOAD_98010", "GADGET_STATE_CHANGE_98011", "GADGET_STATE_CHANGE_98012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_98007(context, evt)
	if 98002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_98007(context, evt)
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
	if 0 ~= ScriptLib.AddQuestProgress(context, "7305315") then
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
function condition_EVENT_GADGET_STATE_CHANGE_98008(context, evt)
	if 98004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_98008(context, evt)
	-- 将本组内变量名为 "opendoor" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "opendoor", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 98006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5012, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_98009(context, evt)
	-- 判断变量"opendoor"为1
	if ScriptLib.GetGroupVariableValue(context, "opendoor") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_98009(context, evt)
	-- 将configid为 98006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5012, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_98010(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133310098, 98002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_98010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7305315") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_98011(context, evt)
	if 98001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_98011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_98012(context, evt)
	if 98004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_98012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"