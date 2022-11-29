-- 基础信息
local base_info = {
	group_id = 133309191
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 191002,
	gadget_fireBase1 = 191001,
	gadget_fire1 = 191003,
	gadget_fireBase2 = 191004,
	gadget_fire2 = 191005,
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
	{ config_id = 191001, gadget_id = 70330279, pos = { x = -2668.998, y = -70.738, z = 5813.996 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 191002, gadget_id = 70330278, pos = { x = -2611.000, y = -74.421, z = 5752.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 191003, gadget_id = 70330257, pos = { x = -2668.998, y = -68.950, z = 5813.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900041, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 191004, gadget_id = 70330279, pos = { x = -2619.496, y = -70.733, z = 5813.492 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 191005, gadget_id = 70330257, pos = { x = -2619.496, y = -68.955, z = 5813.492 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, route_id = 330900042, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 建造基座触发怪
	{ config_id = 1191006, name = "GADGET_STATE_CHANGE_191006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_191006", action = "action_EVENT_GADGET_STATE_CHANGE_191006" },
	-- 玩法完成
	{ config_id = 1191007, name = "GADGET_STATE_CHANGE_191007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_191007", action = "action_EVENT_GADGET_STATE_CHANGE_191007" },
	-- 保底
	{ config_id = 1191008, name = "GROUP_LOAD_191008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_191008", action = "action_EVENT_GROUP_LOAD_191008", trigger_count = 0 },
	{ config_id = 1191009, name = "VARIABLE_CHANGE_191009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_191009", action = "action_EVENT_VARIABLE_CHANGE_191009" },
	{ config_id = 1191010, name = "GROUP_LOAD_191010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_191010", action = "action_EVENT_GROUP_LOAD_191010", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1191011, name = "GADGET_STATE_CHANGE_191011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_191011", action = "action_EVENT_GADGET_STATE_CHANGE_191011" },
	-- 玩法进度埋点
	{ config_id = 1191012, name = "GADGET_STATE_CHANGE_191012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_191012", action = "action_EVENT_GADGET_STATE_CHANGE_191012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "unlock", value = 0, no_refresh = true }
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
		gadgets = { 191001, 191002, 191004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_191006", "GADGET_STATE_CHANGE_191007", "GROUP_LOAD_191008", "VARIABLE_CHANGE_191009", "GROUP_LOAD_191010", "GADGET_STATE_CHANGE_191011", "GADGET_STATE_CHANGE_191012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_191006(context, evt)
	if 191001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_191006(context, evt)
	-- 将本组内变量名为 "created" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "created", 1, 133309093) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_191007(context, evt)
	if 191002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_191007(context, evt)
	-- 改变指定group组133309174中， configid为174020的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309174, 174020, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "waterdown" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "waterdown", 2, 133309174) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "torch2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "torch2", 1, 133309499) then
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
function condition_EVENT_GROUP_LOAD_191008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309191, 191002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_191008(context, evt)
	-- 将本组内变量名为 "waterdown" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "waterdown", 2, 133309174) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "torch2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "torch2", 1, 133309499) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_191009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_191009(context, evt)
	-- 将configid为 191001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_191010(context, evt)
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 1 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133309191, 191001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_191010(context, evt)
	-- 将configid为 191001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_191011(context, evt)
	if 191001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_191011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_191012(context, evt)
	if 191004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_191012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"