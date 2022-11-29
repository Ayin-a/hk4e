-- 基础信息
local base_info = {
	group_id = 133104395
}

-- Trigger变量
local defs = {
	gadget_Trigger1 = 395001,
	gadget_Trigger2 = 395002,
	gadget_Trigger3 = 395003,
	gadget_Trigger4 = 395004,
	gadget_Trigger5 = 395005,
	gadget_Trigger6 = 395006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 395010, monster_id = 21020201, pos = { x = 306.953, y = 217.696, z = 147.876 }, rot = { x = 0.000, y = 266.492, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 },
	{ config_id = 395011, monster_id = 20011401, pos = { x = 304.864, y = 217.696, z = 150.454 }, rot = { x = 0.000, y = 181.470, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 },
	{ config_id = 395012, monster_id = 20011401, pos = { x = 300.100, y = 217.696, z = 149.892 }, rot = { x = 0.000, y = 198.197, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 },
	{ config_id = 395013, monster_id = 20011401, pos = { x = 300.888, y = 217.696, z = 144.778 }, rot = { x = 0.000, y = 327.398, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 },
	{ config_id = 395014, monster_id = 20011401, pos = { x = 305.069, y = 217.696, z = 145.090 }, rot = { x = 0.000, y = 326.100, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 },
	{ config_id = 395015, monster_id = 21030101, pos = { x = 299.656, y = 217.696, z = 144.609 }, rot = { x = 0.000, y = 16.906, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 },
	{ config_id = 395017, monster_id = 21011001, pos = { x = 296.142, y = 217.696, z = 142.669 }, rot = { x = 0.000, y = 32.148, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 },
	{ config_id = 395018, monster_id = 21010701, pos = { x = 311.028, y = 217.696, z = 143.987 }, rot = { x = 0.000, y = 302.956, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 },
	{ config_id = 395019, monster_id = 21011001, pos = { x = 309.243, y = 217.696, z = 152.587 }, rot = { x = 0.000, y = 217.999, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 },
	{ config_id = 395020, monster_id = 21010701, pos = { x = 294.259, y = 217.696, z = 150.952 }, rot = { x = 0.000, y = 125.330, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 },
	{ config_id = 395021, monster_id = 22010201, pos = { x = 298.532, y = 217.696, z = 147.010 }, rot = { x = 0.000, y = 76.042, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 },
	{ config_id = 395022, monster_id = 21030101, pos = { x = 299.569, y = 217.696, z = 149.329 }, rot = { x = 0.000, y = 126.951, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 395001, gadget_id = 70800001, pos = { x = 302.672, y = 217.576, z = 147.414 }, rot = { x = 0.000, y = 264.087, z = 0.000 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 395007, gadget_id = 70350006, pos = { x = 303.744, y = 221.420, z = 138.724 }, rot = { x = 0.000, y = 172.902, z = 180.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 395008, gadget_id = 70350006, pos = { x = 315.443, y = 221.512, z = 148.878 }, rot = { x = 0.000, y = 83.747, z = 180.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 395009, gadget_id = 70350006, pos = { x = 290.356, y = 221.496, z = 146.182 }, rot = { x = 0.000, y = 83.747, z = 180.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 395030, gadget_id = 70211121, pos = { x = 307.181, y = 217.576, z = 147.778 }, rot = { x = 0.000, y = 356.212, z = 0.000 }, level = 16, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 395031, gadget_id = 70211121, pos = { x = 298.596, y = 217.576, z = 146.957 }, rot = { x = 0.000, y = 355.426, z = 0.000 }, level = 16, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1395026, name = "GADGET_CREATE_395026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_395026", action = "action_EVENT_GADGET_CREATE_395026", trigger_count = 0 },
	{ config_id = 1395027, name = "ANY_MONSTER_DIE_395027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_395027", action = "action_EVENT_ANY_MONSTER_DIE_395027", trigger_count = 0 },
	{ config_id = 1395028, name = "ANY_MONSTER_DIE_395028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_395028", action = "action_EVENT_ANY_MONSTER_DIE_395028", trigger_count = 0 },
	{ config_id = 1395029, name = "ANY_MONSTER_DIE_395029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_395029", action = "action_EVENT_ANY_MONSTER_DIE_395029", trigger_count = 0 },
	{ config_id = 1395033, name = "SELECT_OPTION_395033", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_395033", action = "action_EVENT_SELECT_OPTION_395033", trigger_count = 0 },
	{ config_id = 1395034, name = "VARIABLE_CHANGE_395034", event = EventType.EVENT_VARIABLE_CHANGE, source = "TriggerCount", condition = "condition_EVENT_VARIABLE_CHANGE_395034", action = "action_EVENT_VARIABLE_CHANGE_395034", trigger_count = 0 },
	{ config_id = 1395035, name = "GADGET_CREATE_395035", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_395035", action = "action_EVENT_GADGET_CREATE_395035", trigger_count = 0 },
	{ config_id = 1395036, name = "GADGET_STATE_CHANGE_395036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_395036", action = "action_EVENT_GADGET_STATE_CHANGE_395036" },
	{ config_id = 1395037, name = "GADGET_STATE_CHANGE_395037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_395037", action = "action_EVENT_GADGET_STATE_CHANGE_395037" },
	{ config_id = 1395039, name = "VARIABLE_CHANGE_395039", event = EventType.EVENT_VARIABLE_CHANGE, source = "GetReward", condition = "condition_EVENT_VARIABLE_CHANGE_395039", action = "action_EVENT_VARIABLE_CHANGE_395039" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true },
	{ config_id = 2, name = "isFinished", value = 0, no_refresh = true },
	{ config_id = 3, name = "TriggerCount", value = 0, no_refresh = true },
	{ config_id = 4, name = "GetReward", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 6,
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
		gadgets = { 395001, 395007, 395008, 395009 },
		regions = { },
		triggers = { "GADGET_CREATE_395026", "SELECT_OPTION_395033", "VARIABLE_CHANGE_395034", "GADGET_CREATE_395035", "GADGET_STATE_CHANGE_395036", "GADGET_STATE_CHANGE_395037", "VARIABLE_CHANGE_395039" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 395011, 395012, 395013, 395014 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_395029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 395017, 395018, 395019, 395020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_395028" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 395010, 395015, 395021, 395022 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_395027" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { },
		gadgets = { 395007, 395008, 395009 },
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
function condition_EVENT_GADGET_CREATE_395026(context, evt)
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	if 395007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_395026(context, evt)
	-- 将configid为 395007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 395008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 395009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "TriggerCount" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "TriggerCount", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104395, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104395, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104395, 4)
	
	-- 将configid为 395001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104395, 395001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_395027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_395027(context, evt)
	-- 创建id为395030的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 395030 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为395031的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 395031 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 395007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 395008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 395009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_395028(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_395028(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104395, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104395, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_395029(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_395029(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104395, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104395, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_395033(context, evt)
	-- 判断是gadgetid 395001 option_id 7
	if 395001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_395033(context, evt)
	-- 针对当前group内变量名为 "TriggerCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "TriggerCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 删除指定group： 133104395 ；指定config：395001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104395, 395001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 395001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 395001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_395034(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"TriggerCount"为1
	if ScriptLib.GetGroupVariableValue(context, "TriggerCount") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_395034(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104395, 2)
	
	-- 将configid为 395007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 395008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 395009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_395035(context, evt)
	if 395007 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_395035(context, evt)
	-- 将configid为 395007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 395008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 395009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 395001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 395001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_395036(context, evt)
	if 395030 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_395036(context, evt)
	-- 针对当前group内变量名为 "GetReward" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "GetReward", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_395037(context, evt)
	if 395031 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_395037(context, evt)
	-- 针对当前group内变量名为 "GetReward" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "GetReward", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_395039(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GetReward"为2
	if ScriptLib.GetGroupVariableValue(context, "GetReward") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_395039(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104395, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end