-- 基础信息
local base_info = {
	group_id = 133309121
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 121002,
	gadget_fireBase1 = 121001,
	gadget_fire1 = 121003,
	gadget_fireBase2 = 121004,
	gadget_fire2 = 121005,
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
	{ config_id = 121001, gadget_id = 70330279, pos = { x = -2320.618, y = -35.981, z = 5375.190 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 121002, gadget_id = 70330278, pos = { x = -2438.600, y = -29.239, z = 5388.790 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 1号火种
	{ config_id = 121003, gadget_id = 70330257, pos = { x = -2320.617, y = -34.173, z = 5375.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900067, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 121004, gadget_id = 70330279, pos = { x = -2413.208, y = -29.283, z = 5389.821 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 121005, gadget_id = 70330257, pos = { x = -2413.208, y = -27.508, z = 5389.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900068, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法开始埋点
	{ config_id = 1121006, name = "GADGET_STATE_CHANGE_121006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_121006", action = "action_EVENT_GADGET_STATE_CHANGE_121006" },
	-- 玩法完成
	{ config_id = 1121007, name = "GADGET_STATE_CHANGE_121007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_121007", action = "action_EVENT_GADGET_STATE_CHANGE_121007" },
	-- 玩法进度埋点
	{ config_id = 1121008, name = "GADGET_STATE_CHANGE_121008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_121008", action = "action_EVENT_GADGET_STATE_CHANGE_121008" },
	-- 完成微粒，解锁火种
	{ config_id = 1121009, name = "VARIABLE_CHANGE_121009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_121009", action = "action_EVENT_VARIABLE_CHANGE_121009" },
	-- 保底-完成微粒，解锁火种
	{ config_id = 1121010, name = "GROUP_LOAD_121010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_121010", action = "action_EVENT_GROUP_LOAD_121010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "weili", value = 0, no_refresh = true }
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
		gadgets = { 121001, 121002, 121004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_121006", "GADGET_STATE_CHANGE_121007", "GADGET_STATE_CHANGE_121008", "VARIABLE_CHANGE_121009", "GROUP_LOAD_121010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_121006(context, evt)
	if 121001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_121006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_121007(context, evt)
	if 121002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_121007(context, evt)
	-- 针对当前group内变量名为 "active_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "active_count", 1, 133309151) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
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
function condition_EVENT_GADGET_STATE_CHANGE_121008(context, evt)
	if 121004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_121008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_121009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"weili"为1
	if ScriptLib.GetGroupVariableValue(context, "weili") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_121009(context, evt)
	-- 将configid为 121001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_121010(context, evt)
	-- 判断变量"weili"为1
	if ScriptLib.GetGroupVariableValue(context, "weili") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_121010(context, evt)
	-- 将configid为 121001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"