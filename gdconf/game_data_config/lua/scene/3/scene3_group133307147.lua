-- 基础信息
local base_info = {
	group_id = 133307147
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
	{ config_id = 147001, gadget_id = 70211112, pos = { x = -1977.616, y = 139.790, z = 5173.552 }, rot = { x = 0.000, y = 288.733, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 147002, gadget_id = 70220103, pos = { x = -1975.410, y = 142.263, z = 5172.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 土坡1
	{ config_id = 147003, gadget_id = 70330404, pos = { x = -2003.667, y = 136.226, z = 5202.393 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	-- 山脚3
	{ config_id = 147004, gadget_id = 70330404, pos = { x = -2001.775, y = 134.300, z = 5146.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	-- 水边2
	{ config_id = 147005, gadget_id = 70330404, pos = { x = -1939.881, y = 134.048, z = 5193.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 147006, gadget_id = 70330404, pos = { x = -1981.896, y = 134.618, z = 5171.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 147007, gadget_id = 70310198, pos = { x = -1986.529, y = 134.308, z = 5167.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 1
	{ config_id = 147009, gadget_id = 70330340, pos = { x = -2004.342, y = 135.673, z = 5203.405 }, rot = { x = 0.000, y = 9.434, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 3
	{ config_id = 147010, gadget_id = 70330340, pos = { x = -2002.102, y = 134.267, z = 5145.753 }, rot = { x = 0.000, y = 20.437, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2
	{ config_id = 147011, gadget_id = 70330340, pos = { x = -1938.540, y = 133.502, z = 5193.967 }, rot = { x = 0.000, y = 67.974, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1147008, name = "GADGET_STATE_CHANGE_147008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147008", action = "action_EVENT_GADGET_STATE_CHANGE_147008" },
	{ config_id = 1147012, name = "GROUP_LOAD_147012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_147012", action = "action_EVENT_GROUP_LOAD_147012", trigger_count = 0 },
	-- break1
	{ config_id = 1147013, name = "ANY_GADGET_DIE_147013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_147013", action = "action_EVENT_ANY_GADGET_DIE_147013", trigger_count = 0 },
	-- break2
	{ config_id = 1147014, name = "ANY_GADGET_DIE_147014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_147014", action = "action_EVENT_ANY_GADGET_DIE_147014", trigger_count = 0 },
	-- break3
	{ config_id = 1147015, name = "ANY_GADGET_DIE_147015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_147015", action = "action_EVENT_ANY_GADGET_DIE_147015", trigger_count = 0 },
	-- change1
	{ config_id = 1147016, name = "VARIABLE_CHANGE_147016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_147016", action = "action_EVENT_VARIABLE_CHANGE_147016", trigger_count = 0 },
	-- change2
	{ config_id = 1147017, name = "VARIABLE_CHANGE_147017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_147017", action = "action_EVENT_VARIABLE_CHANGE_147017", trigger_count = 0 },
	-- change3
	{ config_id = 1147018, name = "VARIABLE_CHANGE_147018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_147018", action = "action_EVENT_VARIABLE_CHANGE_147018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finished", value = 0, no_refresh = true },
	{ config_id = 2, name = "die1", value = 0, no_refresh = true },
	{ config_id = 3, name = "die2", value = 0, no_refresh = true },
	{ config_id = 4, name = "die3", value = 0, no_refresh = true },
	{ config_id = 5, name = "break1", value = 0, no_refresh = true },
	{ config_id = 6, name = "break2", value = 0, no_refresh = true },
	{ config_id = 7, name = "break3", value = 0, no_refresh = true }
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
		gadgets = { 147001, 147002, 147003, 147004, 147005, 147006, 147007, 147009, 147010, 147011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_147008", "GROUP_LOAD_147012", "ANY_GADGET_DIE_147013", "ANY_GADGET_DIE_147014", "ANY_GADGET_DIE_147015", "VARIABLE_CHANGE_147016", "VARIABLE_CHANGE_147017", "VARIABLE_CHANGE_147018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307147, 147003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307147, 147004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307147, 147005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307147, 147006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147008(context, evt)
	-- 将本组内变量名为 "finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 147001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_147012(context, evt)
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_147012(context, evt)
	-- 将configid为 147003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_147013(context, evt)
	if 147009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_147013(context, evt)
	-- 将本组内变量名为 "break1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "break1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_147014(context, evt)
	if 147011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_147014(context, evt)
	-- 将本组内变量名为 "break2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "break2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_147015(context, evt)
	if 147010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_147015(context, evt)
	-- 将本组内变量名为 "break3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "break3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_147016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"die1"为1
	if ScriptLib.GetGroupVariableValue(context, "die1") ~= 1 then
			return false
	end
	
	-- 判断变量"break1"为1
	if ScriptLib.GetGroupVariableValue(context, "break1") ~= 1 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133307147, 147003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_147016(context, evt)
	-- 将configid为 147003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_147017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"die2"为1
	if ScriptLib.GetGroupVariableValue(context, "die2") ~= 1 then
			return false
	end
	
	-- 判断变量"break2"为1
	if ScriptLib.GetGroupVariableValue(context, "break2") ~= 1 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133307147, 147005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_147017(context, evt)
	-- 将configid为 147005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_147018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"die3"为1
	if ScriptLib.GetGroupVariableValue(context, "die3") ~= 1 then
			return false
	end
	
	-- 判断变量"break3"为1
	if ScriptLib.GetGroupVariableValue(context, "break3") ~= 1 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133307147, 147004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_147018(context, evt)
	-- 将configid为 147004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end