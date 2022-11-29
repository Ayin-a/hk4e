-- 基础信息
local base_info = {
	group_id = 133104313
}

-- Trigger变量
local defs = {
	gadget_trigger_01 = 313005,
	gadget_trigger_02 = 313008,
	gadget_trigger_03 = 313009,
	gadget_trigger_04 = 313010,
	gadget_trigger_05 = 313011,
	gadget_trigger_06 = 313012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 313001, monster_id = 20020101, pos = { x = 50.528, y = 271.204, z = 48.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_id = 1000100, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 313004, gadget_id = 70211121, pos = { x = 51.057, y = 271.204, z = 48.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 313005, gadget_id = 70900051, pos = { x = 47.345, y = 271.204, z = 67.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 7 },
	{ config_id = 313008, gadget_id = 70900051, pos = { x = 63.713, y = 271.278, z = 62.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 7 },
	{ config_id = 313009, gadget_id = 70900051, pos = { x = 61.758, y = 271.204, z = 41.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 7 },
	{ config_id = 313010, gadget_id = 70900051, pos = { x = 42.595, y = 271.204, z = 40.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 7 },
	{ config_id = 313011, gadget_id = 70900051, pos = { x = 42.999, y = 271.204, z = 57.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 7 },
	{ config_id = 313012, gadget_id = 70900051, pos = { x = 55.035, y = 271.204, z = 54.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1313002, name = "GADGET_STATE_CHANGE_313002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_313002", action = "action_EVENT_GADGET_STATE_CHANGE_313002" },
	{ config_id = 1313003, name = "GADGET_CREATE_313003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_313003", action = "action_EVENT_GADGET_CREATE_313003", trigger_count = 0 },
	{ config_id = 1313006, name = "ANY_MONSTER_DIE_313006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_313006", action = "action_EVENT_ANY_MONSTER_DIE_313006" },
	{ config_id = 1313013, name = "GADGET_STATE_CHANGE_313013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_313013", action = "action_EVENT_GADGET_STATE_CHANGE_313013", trigger_count = 0 },
	{ config_id = 1313014, name = "VARIABLE_CHANGE_313014", event = EventType.EVENT_VARIABLE_CHANGE, source = "activeCount", condition = "condition_EVENT_VARIABLE_CHANGE_313014", action = "action_EVENT_VARIABLE_CHANGE_313014", trigger_count = 0 },
	{ config_id = 1313015, name = "GADGET_CREATE_313015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_313015", action = "action_EVENT_GADGET_CREATE_313015", trigger_count = 0 },
	{ config_id = 1313016, name = "VARIABLE_CHANGE_313016", event = EventType.EVENT_VARIABLE_CHANGE, source = "activeCount", condition = "condition_EVENT_VARIABLE_CHANGE_313016", action = "action_EVENT_VARIABLE_CHANGE_313016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "activeCount", value = 0, no_refresh = true },
	{ config_id = 2, name = "isActive", value = 0, no_refresh = true },
	{ config_id = 3, name = "incorrect", value = 0, no_refresh = true },
	{ config_id = 4, name = "isfinish", value = 0, no_refresh = true },
	{ config_id = 5, name = "activeCountDummy", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1313007, name = "GADGET_CREATE_313007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_313007", action = "action_EVENT_GADGET_CREATE_313007", trigger_count = 0 }
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
	end_suite = 4,
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
		monsters = { },
		gadgets = { 313005, 313008, 313009, 313010, 313011, 313012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_313002", "GADGET_STATE_CHANGE_313013", "VARIABLE_CHANGE_313014", "GADGET_CREATE_313015", "VARIABLE_CHANGE_313016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 313001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_313006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 313004, 313005, 313008, 313009, 313010, 313011, 313012 },
		regions = { },
		triggers = { "GADGET_CREATE_313003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_313002(context, evt)
	if 313004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_313002(context, evt)
	-- 将本组内变量名为 "isfinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isfinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_313003(context, evt)
	if 313005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_313003(context, evt)
	-- 将configid为 313005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_313006(context, evt)
	if 313001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_313006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104313, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_313013(context, evt)
	-- 检测config_id为0的gadget是否从GadgetState.Default变为GadgetState.Default
	if defs.gadget_trigger_01 ~= evt.param2 and
	defs.gadget_trigger_02 ~= evt.param2 and
	defs.gadget_trigger_03 ~= evt.param2 and
	defs.gadget_trigger_04 ~= evt.param2 and
	defs.gadget_trigger_05 ~= evt.param2 and
	defs.gadget_trigger_06 ~= evt.param2 then
		return false
	end
	
	if GadgetState.GearStart ~= evt.param1 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_313013(context, evt)
	ScriptLib.ChangeGroupVariableValue(context, "activeCountDummy", 1)
	
	local count = ScriptLib.GetGroupVariableValue(context, "activeCountDummy")
	
	if count == 1 and defs.gadget_trigger_01 ~= evt.param2 then
	ScriptLib.SetGroupVariableValue(context,"incorrect",1)
	elseif
	count == 2 and defs.gadget_trigger_02 ~= evt.param2 then
	ScriptLib.SetGroupVariableValue(context,"incorrect",1)
	elseif
	count == 3 and defs.gadget_trigger_03 ~= evt.param2 then
	ScriptLib.SetGroupVariableValue(context,"incorrect",1)
	elseif
	count == 4 and defs.gadget_trigger_04 ~= evt.param2 then
	ScriptLib.SetGroupVariableValue(context,"incorrect",1)
	elseif
	count == 5 and defs.gadget_trigger_05 ~= evt.param2 then
	ScriptLib.SetGroupVariableValue(context,"incorrect",1)
	elseif
	count == 6 and defs.gadget_trigger_06 ~= evt.param2 then
	ScriptLib.SetGroupVariableValue(context,"incorrect",1)
	end
	
	ScriptLib.SetGroupVariableValue(context, "activeCount", count)
	
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_313014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activeCount"为6
	if ScriptLib.GetGroupVariableValue(context, "activeCount") ~= 6 then
			return false
	end
	
	-- 判断变量"incorrect"为0
	if ScriptLib.GetGroupVariableValue(context, "incorrect") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_313014(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104313, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_313015(context, evt)
	if 313005 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isfinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isfinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_313015(context, evt)
	-- 将configid为 313005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "activeCountDummy" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "activeCountDummy", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "activeCount" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "activeCount", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "incorrect" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "incorrect", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "isActive" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104313, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_313016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activeCount"为6
	if ScriptLib.GetGroupVariableValue(context, "activeCount") ~= 6 then
			return false
	end
	
	-- 判断变量"incorrect"为1
	if ScriptLib.GetGroupVariableValue(context, "incorrect") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_313016(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "activeCount" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "activeCount", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "activeCountDummy" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "activeCountDummy", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "isfinish" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isfinish", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "incorrect" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "incorrect", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 313005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104313, 2)
	
	return 0
end