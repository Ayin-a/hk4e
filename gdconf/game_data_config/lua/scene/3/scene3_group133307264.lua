-- 基础信息
local base_info = {
	group_id = 133307264
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 264002,
	gadget_fireBase1 = 264001,
	gadget_fire1 = 264003,
	gadget_fireBase2 = 264004,
	gadget_fire2 = 264005,
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
	{ config_id = 264001, gadget_id = 70330279, pos = { x = -1467.577, y = -36.270, z = 5526.706 }, rot = { x = 352.225, y = 283.106, z = 7.381 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 264002, gadget_id = 70330278, pos = { x = -1371.227, y = -28.187, z = 5563.070 }, rot = { x = 0.000, y = 284.727, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 32 },
	-- 1号火种
	{ config_id = 264003, gadget_id = 70330257, pos = { x = -1467.503, y = -34.683, z = 5526.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330700065, persistent = true, area_id = 32 },
	-- 2号基座
	{ config_id = 264004, gadget_id = 70330279, pos = { x = -1408.457, y = -29.632, z = 5548.810 }, rot = { x = 355.158, y = 284.471, z = 359.637 }, level = 32, persistent = true, area_id = 32 },
	-- 2号火种
	{ config_id = 264005, gadget_id = 70330257, pos = { x = -1407.234, y = -29.125, z = 5549.591 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330700066, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1264007, name = "GADGET_STATE_CHANGE_264007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_264007", action = "action_EVENT_GADGET_STATE_CHANGE_264007" },
	-- 保底
	{ config_id = 1264008, name = "GROUP_LOAD_264008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_264008", action = "action_EVENT_GROUP_LOAD_264008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1264009, name = "GADGET_STATE_CHANGE_264009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_264009", action = "action_EVENT_GADGET_STATE_CHANGE_264009" },
	-- 玩法进度埋点
	{ config_id = 1264010, name = "GADGET_STATE_CHANGE_264010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_264010", action = "action_EVENT_GADGET_STATE_CHANGE_264010" },
	-- 解锁
	{ config_id = 1264011, name = "VARIABLE_CHANGE_264011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_264011", action = "action_EVENT_VARIABLE_CHANGE_264011" },
	-- 解锁保底
	{ config_id = 1264012, name = "GADGET_CREATE_264012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_264012", action = "action_EVENT_GADGET_CREATE_264012", trigger_count = 0 }
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
		gadgets = { 264001, 264002, 264004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_264007", "GROUP_LOAD_264008", "GADGET_STATE_CHANGE_264009", "GADGET_STATE_CHANGE_264010", "VARIABLE_CHANGE_264011", "GADGET_CREATE_264012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_264007(context, evt)
	if 264002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_264007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "fin_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "fin_2", 1, 133307262) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_264008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307264, 264002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_264008(context, evt)
	-- 将本组内变量名为 "fin_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "fin_2", 1, 133307262) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_264009(context, evt)
	if 264001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_264009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7022, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_264010(context, evt)
	if 264004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_264010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_264011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_264011(context, evt)
	-- 将configid为 264001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 264001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_264012(context, evt)
	if 264001 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_264012(context, evt)
	-- 将configid为 264001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 264001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"