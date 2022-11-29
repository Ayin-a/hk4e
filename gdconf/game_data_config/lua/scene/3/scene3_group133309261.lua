-- 基础信息
local base_info = {
	group_id = 133309261
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 261002,
	gadget_fireBase1 = 261001,
	gadget_fire1 = 261003,
	gadget_fireBase2 = 0,
	gadget_fire2 = 0,
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
	{ config_id = 261001, gadget_id = 70330279, pos = { x = -2370.217, y = 7.212, z = 5314.786 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 261002, gadget_id = 70330278, pos = { x = -2378.498, y = 16.728, z = 5244.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 261003, gadget_id = 70330257, pos = { x = -2370.217, y = 8.984, z = 5314.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900090, persistent = true, area_id = 27 },
	{ config_id = 261006, gadget_id = 70330278, pos = { x = -2378.498, y = 16.728, z = 5227.197 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1261004, name = "VARIABLE_CHANGE_261004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_261004", action = "action_EVENT_VARIABLE_CHANGE_261004" },
	{ config_id = 1261005, name = "GROUP_LOAD_261005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_261005", action = "action_EVENT_GROUP_LOAD_261005", trigger_count = 0 },
	-- 玩法完成
	{ config_id = 1261007, name = "GADGET_STATE_CHANGE_261007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_261007", action = "action_EVENT_GADGET_STATE_CHANGE_261007" },
	-- 玩法完成
	{ config_id = 1261008, name = "GROUP_LOAD_261008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_261008", action = "action_EVENT_GROUP_LOAD_261008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1261009, name = "GADGET_STATE_CHANGE_261009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_261009", action = "action_EVENT_GADGET_STATE_CHANGE_261009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "active", value = 0, no_refresh = true }
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
		gadgets = { 261001, 261002, 261006 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_261004", "GROUP_LOAD_261005", "GADGET_STATE_CHANGE_261007", "GROUP_LOAD_261008", "GADGET_STATE_CHANGE_261009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_261004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"active"为1
	if ScriptLib.GetGroupVariableValue(context, "active") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_261004(context, evt)
	-- 将configid为 261001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "active" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "active", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_261005(context, evt)
	-- 判断变量"active"为1
	if ScriptLib.GetGroupVariableValue(context, "active") ~= 1 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133309261, 261001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_261005(context, evt)
	-- 将configid为 261001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "active" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "active", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_261007(context, evt)
	if 261002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_261007(context, evt)
	-- 将本组内变量名为 "torch3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "torch3", 1, 133309497) then
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
function condition_EVENT_GROUP_LOAD_261008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309261, 261002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_261008(context, evt)
	-- 将本组内变量名为 "torch3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "torch3", 1, 133309497) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_261009(context, evt)
	if 261001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_261009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"