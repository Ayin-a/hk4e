-- 基础信息
local base_info = {
	group_id = 133313172
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
	{ config_id = 172001, gadget_id = 70330436, pos = { x = -701.183, y = -275.670, z = 6004.481 }, rot = { x = 0.000, y = 82.721, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 172002, gadget_id = 70330262, pos = { x = -710.717, y = -273.514, z = 5989.962 }, rot = { x = 0.000, y = 343.173, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 172003, gadget_id = 70330262, pos = { x = -708.963, y = -278.282, z = 6007.460 }, rot = { x = 0.000, y = 313.090, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 172007, gadget_id = 70330436, pos = { x = -696.987, y = -268.176, z = 6005.152 }, rot = { x = 7.088, y = 82.721, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 172008, gadget_id = 70330262, pos = { x = -704.243, y = -279.549, z = 5995.635 }, rot = { x = 0.000, y = 241.189, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1172004, name = "ANY_GADGET_DIE_172004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_172004", action = "action_EVENT_ANY_GADGET_DIE_172004" },
	{ config_id = 1172005, name = "ANY_GADGET_DIE_172005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_172005", action = "action_EVENT_ANY_GADGET_DIE_172005" },
	{ config_id = 1172006, name = "VARIABLE_CHANGE_172006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_172006", action = "action_EVENT_VARIABLE_CHANGE_172006" },
	{ config_id = 1172009, name = "ANY_GADGET_DIE_172009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_172009", action = "action_EVENT_ANY_GADGET_DIE_172009" },
	{ config_id = 1172010, name = "GROUP_LOAD_172010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_172010", action = "action_EVENT_GROUP_LOAD_172010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "progress", value = 0, no_refresh = true }
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
		gadgets = { 172001, 172002, 172003, 172007, 172008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_172004", "ANY_GADGET_DIE_172005", "VARIABLE_CHANGE_172006", "ANY_GADGET_DIE_172009", "GROUP_LOAD_172010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_172004(context, evt)
	if 172002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_172004(context, evt)
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_172005(context, evt)
	if 172003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_172005(context, evt)
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_172006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"progress"为3
	if ScriptLib.GetGroupVariableValue(context, "progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_172006(context, evt)
	-- 将configid为 172001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 172001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 172007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 172007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "unlock_4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock_4", 1, 133313171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_172009(context, evt)
	if 172008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_172009(context, evt)
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_172010(context, evt)
	-- 判断变量"progress"为3
	if ScriptLib.GetGroupVariableValue(context, "progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_172010(context, evt)
	-- 将configid为 172001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 172001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 172007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 172007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "unlock_4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock_4", 1, 133313171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end