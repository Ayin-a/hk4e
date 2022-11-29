-- 基础信息
local base_info = {
	group_id = 133309192
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 192002,
	gadget_fireBase1 = 192001,
	gadget_fire1 = 192003,
	gadget_fireBase2 = 192004,
	gadget_fire2 = 192005,
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
	{ config_id = 192001, gadget_id = 70330279, pos = { x = -2618.980, y = -88.701, z = 5684.808 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 192002, gadget_id = 70330278, pos = { x = -2627.000, y = -74.421, z = 5752.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 192003, gadget_id = 70330257, pos = { x = -2618.980, y = -86.934, z = 5684.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900043, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 192004, gadget_id = 70330279, pos = { x = -2668.940, y = -70.733, z = 5743.972 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 192005, gadget_id = 70330257, pos = { x = -2668.940, y = -68.944, z = 5743.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900044, persistent = true, area_id = 27 },
	{ config_id = 192008, gadget_id = 70330278, pos = { x = -2627.000, y = -74.421, z = 5736.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1192006, name = "VARIABLE_CHANGE_192006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_192006", action = "action_EVENT_VARIABLE_CHANGE_192006" },
	-- 玩法完成
	{ config_id = 1192007, name = "GADGET_STATE_CHANGE_192007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_192007", action = "action_EVENT_GADGET_STATE_CHANGE_192007" },
	-- 保底
	{ config_id = 1192009, name = "GROUP_LOAD_192009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_192009", action = "action_EVENT_GROUP_LOAD_192009", trigger_count = 0 },
	-- 玩法完成
	{ config_id = 1192010, name = "GROUP_LOAD_192010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_192010", action = "action_EVENT_GROUP_LOAD_192010", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1192011, name = "GADGET_STATE_CHANGE_192011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_192011", action = "action_EVENT_GADGET_STATE_CHANGE_192011" },
	-- 玩法进度埋点
	{ config_id = 1192012, name = "GADGET_STATE_CHANGE_192012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_192012", action = "action_EVENT_GADGET_STATE_CHANGE_192012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "active_count", value = 0, no_refresh = true }
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
		gadgets = { 192001, 192002, 192004, 192008 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_192006", "GADGET_STATE_CHANGE_192007", "GROUP_LOAD_192009", "GROUP_LOAD_192010", "GADGET_STATE_CHANGE_192011", "GADGET_STATE_CHANGE_192012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_192006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"active_count"为2
	if ScriptLib.GetGroupVariableValue(context, "active_count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_192006(context, evt)
	-- 将configid为 192001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 192001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_192007(context, evt)
	if 192002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_192007(context, evt)
	-- 将本组内变量名为 "torch1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "torch1", 1, 133309499) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
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
function condition_EVENT_GROUP_LOAD_192009(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133309192, 192001) then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133309071, 71002) then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133309071, 71003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_192009(context, evt)
	-- 将configid为 192001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 192001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_192010(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309192, 192002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_192010(context, evt)
	-- 将本组内变量名为 "torch1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "torch1", 1, 133309499) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_192011(context, evt)
	if 192001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_192011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_192012(context, evt)
	if 192004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_192012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"