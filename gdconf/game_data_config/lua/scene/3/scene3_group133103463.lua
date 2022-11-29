-- 基础信息
local base_info = {
	group_id = 133103463
}

-- Trigger变量
local defs = {
	duration = 45,
	kill_sum = 3,
	group_id = 133103463,
	gadget_controller_id = 463003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 463009, monster_id = 28050102, pos = { x = 725.798, y = 171.021, z = 1262.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "魔法生物", area_id = 6 },
	{ config_id = 463011, monster_id = 28050102, pos = { x = 762.706, y = 179.072, z = 1248.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "魔法生物", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 463001, gadget_id = 70330021, pos = { x = 748.105, y = 169.380, z = 1281.064 }, rot = { x = 0.000, y = 263.724, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 463002, gadget_id = 70330019, pos = { x = 747.219, y = 172.601, z = 1250.643 }, rot = { x = 0.000, y = 24.343, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 463004, gadget_id = 70330021, pos = { x = 766.291, y = 192.605, z = 1253.687 }, rot = { x = 0.000, y = 300.505, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 463005, gadget_id = 70330019, pos = { x = 750.638, y = 173.191, z = 1262.016 }, rot = { x = 0.000, y = 189.599, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 463006, gadget_id = 70330019, pos = { x = 745.898, y = 171.758, z = 1257.185 }, rot = { x = 0.000, y = 15.795, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 463007, gadget_id = 70330021, pos = { x = 767.943, y = 176.629, z = 1237.958 }, rot = { x = 0.000, y = 245.727, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 463008, gadget_id = 70211112, pos = { x = 750.429, y = 177.316, z = 1255.876 }, rot = { x = 0.000, y = 292.445, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 463010, gadget_id = 70690006, pos = { x = 750.665, y = 179.749, z = 1256.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1463003, name = "GADGET_CREATE_463003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_463003", action = "action_EVENT_GADGET_CREATE_463003", trigger_count = 0 },
	{ config_id = 1463012, name = "GADGET_CREATE_463012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_463012", action = "action_EVENT_GADGET_CREATE_463012", trigger_count = 0 },
	{ config_id = 1463013, name = "GADGET_CREATE_463013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_463013", action = "action_EVENT_GADGET_CREATE_463013", trigger_count = 0 },
	{ config_id = 1463014, name = "GROUP_LOAD_463014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_463014", action = "action_EVENT_GROUP_LOAD_463014", trigger_count = 0 },
	{ config_id = 1463017, name = "GADGET_STATE_CHANGE_463017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_463017", action = "action_EVENT_GADGET_STATE_CHANGE_463017" },
	{ config_id = 1463018, name = "GADGET_STATE_CHANGE_463018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_463018", action = "action_EVENT_GADGET_STATE_CHANGE_463018" },
	{ config_id = 1463019, name = "GADGET_STATE_CHANGE_463019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_463019", action = "action_EVENT_GADGET_STATE_CHANGE_463019" },
	{ config_id = 1463020, name = "VARIABLE_CHANGE_463020", event = EventType.EVENT_VARIABLE_CHANGE, source = "gears", condition = "condition_EVENT_VARIABLE_CHANGE_463020", action = "action_EVENT_VARIABLE_CHANGE_463020" }
}

-- 变量
variables = {
	{ config_id = 1, name = "gears", value = 0, no_refresh = true },
	{ config_id = 2, name = "g1", value = 0, no_refresh = true },
	{ config_id = 3, name = "g2", value = 0, no_refresh = true },
	{ config_id = 4, name = "g3", value = 0, no_refresh = true }
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
		-- description = suite_1,
		monsters = { 463009, 463011 },
		gadgets = { 463001, 463002, 463004, 463005, 463006, 463007, 463008 },
		regions = { },
		triggers = { "GADGET_CREATE_463003", "GADGET_CREATE_463012", "GADGET_CREATE_463013", "GROUP_LOAD_463014", "GADGET_STATE_CHANGE_463017", "GADGET_STATE_CHANGE_463018", "GADGET_STATE_CHANGE_463019", "VARIABLE_CHANGE_463020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 463010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_463003(context, evt)
	if 463002 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"g1"为0
	if ScriptLib.GetGroupVariableValue(context, "g1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_463003(context, evt)
	-- 将configid为 463002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 463002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_463012(context, evt)
	if 463005 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"g2"为0
	if ScriptLib.GetGroupVariableValue(context, "g2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_463012(context, evt)
	-- 将configid为 463005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 463005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_463013(context, evt)
	if 463006 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"g3"为0
	if ScriptLib.GetGroupVariableValue(context, "g3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_463013(context, evt)
	-- 将configid为 463006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 463006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_463014(context, evt)
	-- 判断变量"gears"为3
	if ScriptLib.GetGroupVariableValue(context, "gears") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_463014(context, evt)
	-- 将本组内变量名为 "g1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "g1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "g2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "g2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "g3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "g3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 463002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 463002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 463005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 463005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 463006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 463006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_463017(context, evt)
	if 463006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_463017(context, evt)
	-- 针对当前group内变量名为 "gears" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "gears", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "g3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "g3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_463018(context, evt)
	if 463002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_463018(context, evt)
	-- 针对当前group内变量名为 "gears" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "gears", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "g1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "g1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_463019(context, evt)
	if 463005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_463019(context, evt)
	-- 针对当前group内变量名为 "gears" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "gears", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "g2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "g2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_463020(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"gears"为3
	if ScriptLib.GetGroupVariableValue(context, "gears") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_463020(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103463, 2)
	
	-- 将configid为 463008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 463008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end