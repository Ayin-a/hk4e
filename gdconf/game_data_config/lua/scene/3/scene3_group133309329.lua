-- 基础信息
local base_info = {
	group_id = 133309329
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 329002,
	gadget_fireBase1 = 329001,
	gadget_fire1 = 329003,
	gadget_fireBase2 = 329004,
	gadget_fire2 = 329005,
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
	{ config_id = 329001, gadget_id = 70330279, pos = { x = -2426.472, y = 61.937, z = 5296.999 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 329002, gadget_id = 70330278, pos = { x = -2534.436, y = 48.816, z = 5308.057 }, rot = { x = 2.319, y = 87.322, z = 8.391 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 329003, gadget_id = 70330257, pos = { x = -2426.472, y = 63.737, z = 5296.999 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, route_id = 330900116, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 329004, gadget_id = 70330279, pos = { x = -2471.966, y = 63.450, z = 5286.994 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 329005, gadget_id = 70330257, pos = { x = -2471.966, y = 65.250, z = 5286.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900117, persistent = true, area_id = 27 },
	{ config_id = 329006, gadget_id = 70211121, pos = { x = -2536.259, y = 49.602, z = 5297.792 }, rot = { x = 0.000, y = 91.771, z = 0.000 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1329007, name = "VARIABLE_CHANGE_329007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_329007", action = "action_EVENT_VARIABLE_CHANGE_329007" },
	-- 保底
	{ config_id = 1329008, name = "GROUP_LOAD_329008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_329008", action = "action_EVENT_GROUP_LOAD_329008", trigger_count = 0 },
	-- 存在火种
	{ config_id = 1329009, name = "SELECT_OPTION_329009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_329009", action = "action_EVENT_SELECT_OPTION_329009", trigger_count = 0 },
	-- 处于第二基座时
	{ config_id = 1329010, name = "GADGET_STATE_CHANGE_329010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_329010", action = "action_EVENT_GADGET_STATE_CHANGE_329010", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1329011, name = "GADGET_STATE_CHANGE_329011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_329011", action = "action_EVENT_GADGET_STATE_CHANGE_329011" },
	-- 玩法进度埋点
	{ config_id = 1329012, name = "GADGET_STATE_CHANGE_329012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_329012", action = "action_EVENT_GADGET_STATE_CHANGE_329012" },
	-- 火种销毁
	{ config_id = 1329013, name = "ANY_GADGET_DIE_329013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_329013", action = "action_EVENT_ANY_GADGET_DIE_329013", trigger_count = 0 },
	-- 有火种解锁
	{ config_id = 1329014, name = "VARIABLE_CHANGE_329014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_329014", action = "action_EVENT_VARIABLE_CHANGE_329014", trigger_count = 0 },
	-- 无火种解锁
	{ config_id = 1329015, name = "VARIABLE_CHANGE_329015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_329015", action = "action_EVENT_VARIABLE_CHANGE_329015", trigger_count = 0 },
	-- 锁定基座1保底
	{ config_id = 1329016, name = "VARIABLE_CHANGE_329016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_329016", action = "action_EVENT_VARIABLE_CHANGE_329016", trigger_count = 0 },
	-- 火炬激活
	{ config_id = 1329017, name = "GADGET_STATE_CHANGE_329017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_329017", action = "action_EVENT_GADGET_STATE_CHANGE_329017" },
	-- 火炬激活保底
	{ config_id = 1329018, name = "GROUP_LOAD_329018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_329018", action = "action_EVENT_GROUP_LOAD_329018", trigger_count = 0 },
	-- 玩法完成解锁
	{ config_id = 1329020, name = "VARIABLE_CHANGE_329020", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_329020", action = "action_EVENT_VARIABLE_CHANGE_329020", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "sparkAlive", value = 0, no_refresh = false },
	{ config_id = 2, name = "isLocked", value = 1, no_refresh = false },
	{ config_id = 3, name = "activeCount1", value = 0, no_refresh = true },
	{ config_id = 4, name = "activeCount2", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1329019, name = "GROUP_LOAD_329019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_329019", action = "action_EVENT_GROUP_LOAD_329019", trigger_count = 0 }
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
		gadgets = { 329001, 329002, 329004 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_329007", "GROUP_LOAD_329008", "SELECT_OPTION_329009", "GADGET_STATE_CHANGE_329010", "GADGET_STATE_CHANGE_329011", "GADGET_STATE_CHANGE_329012", "ANY_GADGET_DIE_329013", "VARIABLE_CHANGE_329014", "VARIABLE_CHANGE_329015", "VARIABLE_CHANGE_329016", "GADGET_STATE_CHANGE_329017", "GROUP_LOAD_329018", "VARIABLE_CHANGE_329020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_329007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activeCount1"为1
	if ScriptLib.GetGroupVariableValue(context, "activeCount1") ~= 1 then
			return false
	end
	
	-- 判断变量"activeCount2"为1
	if ScriptLib.GetGroupVariableValue(context, "activeCount2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_329007(context, evt)
	-- 创建id为329006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 329006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
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
function condition_EVENT_GROUP_LOAD_329008(context, evt)
	-- 判断变量"activeCount1"为1
	if ScriptLib.GetGroupVariableValue(context, "activeCount1") ~= 1 then
			return false
	end
	
	-- 判断变量"activeCount2"为1
	if ScriptLib.GetGroupVariableValue(context, "activeCount2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_329008(context, evt)
	-- 创建id为329006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 329006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_329009(context, evt)
	-- 判断是gadgetid 329001 option_id 430
	if 329001 ~= evt.param1 then
		return false	
	end
	
	if 430 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_329009(context, evt)
	-- 将本组内变量名为 "sparkAlive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "sparkAlive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_329010(context, evt)
	if 329004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_329010(context, evt)
	-- 将本组内变量名为 "sparkReach" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "sparkReach", 1, 133309331) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_329011(context, evt)
	if 329001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_329011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_329012(context, evt)
	if 329004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_329012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_329013(context, evt)
	if 329003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_329013(context, evt)
	-- 将本组内变量名为 "sparkAlive" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "sparkAlive", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_329014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isLocked"为0
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 0 then
			return false
	end
	
	-- 判断变量"sparkAlive"为1
	if ScriptLib.GetGroupVariableValue(context, "sparkAlive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_329014(context, evt)
	-- 将configid为 329001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 329001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_329015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isLocked"为0
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 0 then
			return false
	end
	
	-- 判断变量"sparkAlive"为0
	if ScriptLib.GetGroupVariableValue(context, "sparkAlive") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_329015(context, evt)
	-- 将configid为 329001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 329001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_329016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isLocked"为1
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 1 then
			return false
	end
	
	if GadgetState.GearStop == ScriptLib.GetGadgetStateByConfigId(context, 133309329, 329001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_329016(context, evt)
	-- 将configid为 329001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 329001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_329017(context, evt)
	if 329002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_329017(context, evt)
	-- 将本组内变量名为 "activeCount1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "activeCount1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_329018(context, evt)
	if 329002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_329018(context, evt)
	-- 将本组内变量名为 "activeCount1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "activeCount1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_329020(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isLocked"为2
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_329020(context, evt)
	-- 将configid为 329001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 329001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"