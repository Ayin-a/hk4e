-- 基础信息
local base_info = {
	group_id = 166001475
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 475037, monster_id = 22070102, pos = { x = 682.466, y = 419.731, z = 759.026 }, rot = { x = 0.000, y = 242.168, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 101, area_id = 300 },
	{ config_id = 475038, monster_id = 22070201, pos = { x = 668.066, y = 419.948, z = 756.148 }, rot = { x = 0.000, y = 66.348, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 101, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 475001, gadget_id = 70360342, pos = { x = 674.374, y = 419.689, z = 773.486 }, rot = { x = 0.000, y = 195.865, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 475002, gadget_id = 70360342, pos = { x = 674.570, y = 420.358, z = 773.843 }, rot = { x = 322.574, y = 2.853, z = 8.413 }, level = 36, area_id = 300 },
	{ config_id = 475003, gadget_id = 70290282, pos = { x = 671.168, y = 419.164, z = 761.838 }, rot = { x = 270.000, y = 7.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 475004, gadget_id = 70310185, pos = { x = 677.101, y = 420.282, z = 765.750 }, rot = { x = 0.000, y = 231.855, z = 0.000 }, level = 36, state = GadgetState.GearStop, persistent = true, area_id = 300 },
	{ config_id = 475005, gadget_id = 70310185, pos = { x = 667.197, y = 420.282, z = 767.032 }, rot = { x = 0.000, y = 143.267, z = 0.000 }, level = 36, state = GadgetState.GearStop, persistent = true, area_id = 300 },
	{ config_id = 475006, gadget_id = 70310185, pos = { x = 665.901, y = 420.282, z = 757.176 }, rot = { x = 0.000, y = 52.018, z = 0.000 }, level = 36, state = GadgetState.GearStop, persistent = true, area_id = 300 },
	{ config_id = 475007, gadget_id = 70310185, pos = { x = 675.720, y = 420.278, z = 755.813 }, rot = { x = 0.000, y = 322.092, z = 0.000 }, level = 36, state = GadgetState.GearStop, persistent = true, area_id = 300 },
	{ config_id = 475008, gadget_id = 70290212, pos = { x = 670.235, y = 419.659, z = 752.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, interact_id = 88, area_id = 300 },
	{ config_id = 475009, gadget_id = 70290233, pos = { x = 665.257, y = 420.282, z = 756.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 475010, gadget_id = 70290233, pos = { x = 676.378, y = 420.282, z = 755.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 475011, gadget_id = 70290233, pos = { x = 666.452, y = 420.282, z = 766.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 475012, gadget_id = 70290233, pos = { x = 677.747, y = 420.282, z = 765.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 475013, gadget_id = 70290218, pos = { x = 679.300, y = 419.887, z = 753.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 475014, gadget_id = 70290218, pos = { x = 676.506, y = 420.036, z = 759.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 475015, gadget_id = 70290218, pos = { x = 675.157, y = 419.860, z = 753.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 475016, gadget_id = 70290218, pos = { x = 663.775, y = 419.832, z = 754.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 475017, gadget_id = 70290218, pos = { x = 663.475, y = 419.795, z = 758.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 475018, gadget_id = 70290218, pos = { x = 663.882, y = 420.118, z = 767.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 475019, gadget_id = 70290218, pos = { x = 672.518, y = 419.755, z = 770.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 475020, gadget_id = 70290218, pos = { x = 679.411, y = 419.815, z = 764.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 475021, gadget_id = 70290218, pos = { x = 675.404, y = 419.952, z = 766.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1475022, name = "ANY_GADGET_DIE_475022", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_475022", action = "action_EVENT_ANY_GADGET_DIE_475022" },
	{ config_id = 1475023, name = "ANY_GADGET_DIE_475023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_475023", action = "action_EVENT_ANY_GADGET_DIE_475023" },
	{ config_id = 1475024, name = "ANY_GADGET_DIE_475024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_475024", action = "action_EVENT_ANY_GADGET_DIE_475024" },
	{ config_id = 1475025, name = "VARIABLE_CHANGE_475025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_475025", action = "action_EVENT_VARIABLE_CHANGE_475025" },
	{ config_id = 1475026, name = "ANY_GADGET_DIE_475026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_475026", action = "action_EVENT_ANY_GADGET_DIE_475026" },
	{ config_id = 1475027, name = "ANY_GADGET_DIE_475027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_475027", action = "action_EVENT_ANY_GADGET_DIE_475027" },
	{ config_id = 1475028, name = "VARIABLE_CHANGE_475028", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_475028", action = "action_EVENT_VARIABLE_CHANGE_475028" },
	{ config_id = 1475029, name = "ANY_GADGET_DIE_475029", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_475029", action = "action_EVENT_ANY_GADGET_DIE_475029" },
	{ config_id = 1475030, name = "ANY_GADGET_DIE_475030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_475030", action = "action_EVENT_ANY_GADGET_DIE_475030" },
	{ config_id = 1475031, name = "VARIABLE_CHANGE_475031", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_475031", action = "action_EVENT_VARIABLE_CHANGE_475031" },
	{ config_id = 1475032, name = "ANY_GADGET_DIE_475032", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_475032", action = "action_EVENT_ANY_GADGET_DIE_475032" },
	{ config_id = 1475033, name = "ANY_GADGET_DIE_475033", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_475033", action = "action_EVENT_ANY_GADGET_DIE_475033" },
	{ config_id = 1475034, name = "VARIABLE_CHANGE_475034", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_475034", action = "action_EVENT_VARIABLE_CHANGE_475034" },
	{ config_id = 1475035, name = "VARIABLE_CHANGE_475035", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_475035", action = "action_EVENT_VARIABLE_CHANGE_475035" },
	{ config_id = 1475036, name = "TIME_AXIS_PASS_475036", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_475036", action = "action_EVENT_TIME_AXIS_PASS_475036" },
	{ config_id = 1475039, name = "ANY_MONSTER_DIE_475039", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_475039", action = "action_EVENT_ANY_MONSTER_DIE_475039" },
	{ config_id = 1475040, name = "GADGET_STATE_CHANGE_475040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_475040", action = "action_EVENT_GADGET_STATE_CHANGE_475040" },
	{ config_id = 1475041, name = "GROUP_LOAD_475041", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_475041", action = "action_EVENT_GROUP_LOAD_475041", trigger_count = 0 },
	{ config_id = 1475042, name = "GROUP_LOAD_475042", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_475042", action = "action_EVENT_GROUP_LOAD_475042", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "right", value = 0, no_refresh = true },
	{ config_id = 2, name = "left", value = 0, no_refresh = true },
	{ config_id = 3, name = "tright", value = 0, no_refresh = true },
	{ config_id = 4, name = "tleft", value = 0, no_refresh = true },
	{ config_id = 5, name = "done", value = 0, no_refresh = true },
	{ config_id = 6, name = "phase", value = 0, no_refresh = true }
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
		gadgets = { 475001, 475002, 475003, 475004, 475005, 475006, 475007, 475008, 475009, 475010, 475011, 475012 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_475022", "ANY_GADGET_DIE_475023", "ANY_GADGET_DIE_475024", "VARIABLE_CHANGE_475025", "ANY_GADGET_DIE_475026", "ANY_GADGET_DIE_475027", "VARIABLE_CHANGE_475028", "ANY_GADGET_DIE_475029", "ANY_GADGET_DIE_475030", "VARIABLE_CHANGE_475031", "ANY_GADGET_DIE_475032", "ANY_GADGET_DIE_475033", "VARIABLE_CHANGE_475034", "VARIABLE_CHANGE_475035", "TIME_AXIS_PASS_475036", "ANY_MONSTER_DIE_475039", "GADGET_STATE_CHANGE_475040", "GROUP_LOAD_475041", "GROUP_LOAD_475042" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 475013, 475014, 475015, 475016, 475017, 475018, 475019, 475020, 475021 },
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
function condition_EVENT_ANY_GADGET_DIE_475022(context, evt)
	if 475013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_475022(context, evt)
	-- 针对当前group内变量名为 "right" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "right", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_475023(context, evt)
	if 475014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_475023(context, evt)
	-- 针对当前group内变量名为 "right" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "right", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_475024(context, evt)
	if 475015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_475024(context, evt)
	-- 针对当前group内变量名为 "right" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "right", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_475025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"right"为3
	if ScriptLib.GetGroupVariableValue(context, "right") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_475025(context, evt)
	-- 针对当前group内变量名为 "done" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 475010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 475007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_475026(context, evt)
	if 475016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_475026(context, evt)
	-- 针对当前group内变量名为 "left" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "left", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_475027(context, evt)
	if 475017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_475027(context, evt)
	-- 针对当前group内变量名为 "left" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "left", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_475028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"left"为2
	if ScriptLib.GetGroupVariableValue(context, "left") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_475028(context, evt)
	-- 针对当前group内变量名为 "done" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 475009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 475006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_475029(context, evt)
	if 475018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_475029(context, evt)
	-- 针对当前group内变量名为 "tleft" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tleft", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_475030(context, evt)
	if 475019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_475030(context, evt)
	-- 针对当前group内变量名为 "tleft" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tleft", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_475031(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"tleft"为2
	if ScriptLib.GetGroupVariableValue(context, "tleft") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_475031(context, evt)
	-- 针对当前group内变量名为 "done" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 475011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 475005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_475032(context, evt)
	if 475020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_475032(context, evt)
	-- 针对当前group内变量名为 "tright" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tright", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_475033(context, evt)
	if 475021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_475033(context, evt)
	-- 针对当前group内变量名为 "tright" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tright", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_475034(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"tright"为2
	if ScriptLib.GetGroupVariableValue(context, "tright") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_475034(context, evt)
	-- 针对当前group内变量名为 "done" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 475004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 475012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_475035(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"done"为4
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_475035(context, evt)
	-- 将本组内变量名为 "phase" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "phase", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"monster"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "monster", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_475036(context, evt)
	if "monster" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_475036(context, evt)
	-- 创建id为475009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 475009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为475010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 475010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为475011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 475011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为475012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 475012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 475004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 475005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 475006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 475007 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475007, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 475037, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 475038, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将configid为 475003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_475039(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_475039(context, evt)
	-- 将本组内变量名为 "done" 的变量设置为 5
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "done", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 改变指定group组166001048中， configid为48004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 166001048, 48004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "phase" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "phase", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 475004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 475005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 475006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 475007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 475009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 475010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 475011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 475012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 475001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 475002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 475003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组166001048中， configid为48005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 166001048, 48005, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组166001048中， configid为48006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 166001048, 48006, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_475040(context, evt)
	if 475008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_475040(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001475, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_475041(context, evt)
	-- 判断变量"done"为5
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_475041(context, evt)
	-- 将configid为 475003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_475042(context, evt)
	-- 判断变量"phase"为1
	if ScriptLib.GetGroupVariableValue(context, "phase") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_475042(context, evt)
	-- 创建id为475009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 475009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为475010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 475010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为475011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 475011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为475012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 475012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 475004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 475005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 475006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 475007 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475007, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 475037, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 475038, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将configid为 475003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end