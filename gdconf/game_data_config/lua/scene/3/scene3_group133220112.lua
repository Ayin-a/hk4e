-- 基础信息
local base_info = {
	group_id = 133220112
}

-- Trigger变量
local defs = {
	group_id = 133220112,
	gadget_riddle_hint = 112001,
	gadget_riddle_1 = 112002,
	gadget_riddle_2 = 112003,
	gadget_riddle_3 = 112004,
	gadget_riddle_4 = 112005,
	gadget_chest = 112010
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
	{ config_id = 112001, gadget_id = 70310012, pos = { x = -2337.270, y = 226.114, z = -4258.039 }, rot = { x = 0.000, y = 336.936, z = 0.000 }, level = 19, persistent = true, area_id = 11 },
	{ config_id = 112002, gadget_id = 70900008, pos = { x = -2343.940, y = 226.176, z = -4255.366 }, rot = { x = 0.000, y = 334.134, z = 0.000 }, level = 19, persistent = true, area_id = 11 },
	{ config_id = 112003, gadget_id = 70900008, pos = { x = -2335.552, y = 225.215, z = -4234.998 }, rot = { x = 0.000, y = 310.577, z = 0.000 }, level = 19, state = GadgetState.GearStop, persistent = true, area_id = 11 },
	{ config_id = 112004, gadget_id = 70900008, pos = { x = -2269.901, y = 225.101, z = -4274.021 }, rot = { x = 0.000, y = 70.567, z = 0.000 }, level = 19, state = GadgetState.GearStop, persistent = true, area_id = 11 },
	{ config_id = 112005, gadget_id = 70900008, pos = { x = -2345.146, y = 229.061, z = -4289.130 }, rot = { x = 0.000, y = 83.675, z = 0.000 }, level = 19, persistent = true, area_id = 11 },
	{ config_id = 112006, gadget_id = 70211122, pos = { x = -2323.499, y = 219.880, z = -4256.846 }, rot = { x = 0.000, y = 269.641, z = 0.000 }, level = 26, drop_tag = "解谜高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 112010, gadget_id = 70350081, pos = { x = -2337.193, y = 226.563, z = -4258.012 }, rot = { x = 0.000, y = 207.167, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 11 },
	{ config_id = 112011, gadget_id = 70350279, pos = { x = -2326.630, y = 225.292, z = -4257.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 魔改了一下它的Action，让方碑变成default时计数不减一
	{ config_id = 1112007, name = "GADGET_STATE_CHANGE_112007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_112007", action = "action_EVENT_GADGET_STATE_CHANGE_112007", trigger_count = 0 },
	-- 魔改了一下defs的ID，让这个trigger成功时解锁交互机关
	{ config_id = 1112008, name = "VARIABLE_CHANGE_112008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_112008", action = "action_EVENT_VARIABLE_CHANGE_112008", trigger_count = 0 },
	{ config_id = 1112009, name = "GROUP_LOAD_112009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_112009", trigger_count = 0 },
	-- 保底，如果通用交互机关解锁了，就给它上操作台
	{ config_id = 1112012, name = "GADGET_CREATE_112012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_112012", action = "action_EVENT_GADGET_CREATE_112012" },
	{ config_id = 1112013, name = "GADGET_STATE_CHANGE_112013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_112013", action = "action_EVENT_GADGET_STATE_CHANGE_112013", trigger_count = 0 },
	-- 因为保底的存在，需要在按了按钮后给交互机关GearStart
	{ config_id = 1112014, name = "SELECT_OPTION_112014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_112014", action = "action_EVENT_SELECT_OPTION_112014", trigger_count = 0 },
	-- 保底，如果变量对了了，就给操作台上操作台
	{ config_id = 1112015, name = "GROUP_LOAD_112015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_112015", action = "action_EVENT_GROUP_LOAD_112015", trigger_count = 0 },
	-- 保底，如果变量对了了，就开门、将底座全亮、然后解锁宝箱
	{ config_id = 1112016, name = "GROUP_LOAD_112016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_112016", action = "action_EVENT_GROUP_LOAD_112016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true },
	{ config_id = 2, name = "isGearStart", value = 0, no_refresh = true }
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
		monsters = { },
		gadgets = { 112001, 112002, 112003, 112004, 112005, 112006, 112010, 112011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_112007", "VARIABLE_CHANGE_112008", "GROUP_LOAD_112009", "GADGET_CREATE_112012", "GADGET_STATE_CHANGE_112013", "SELECT_OPTION_112014", "GROUP_LOAD_112015", "GROUP_LOAD_112016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_112007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_112007(context, evt)
	if evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_112008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_112008(context, evt)
	if evt.param1 == 0 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Default)
	elseif evt.param1 == 1 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action01)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 2) 
	elseif evt.param1 == 2 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action02)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 3) 
	elseif evt.param1 == 3 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action03)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 4) 
	elseif evt.param1 == 4 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.GearStart)
	ScriptLib.MarkPlayerAction(context, 1003, 3, 5) 
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest, GadgetState.Default)
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_112009(context, evt)
	local sum = 0
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.GearStart then
	sum = sum + 1
	end
	ScriptLib.SetGroupVariableValue(context, "State_Flag", sum)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_112012(context, evt)
	if 112010 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_112012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220112, 112010, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_112013(context, evt)
	-- 检测config_id为112010的gadget是否从GadgetState.GearStop变为GadgetState.Default
	if 112010 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_112013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220112, 112010, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_112014(context, evt)
	-- 判断是gadgetid 112010 option_id 7
	if 112010 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_112014(context, evt)
	-- 删除指定group： 133220112 ；指定config：112010；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220112, 112010, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "isGearStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isGearStart", 1, 133220112) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 112010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 112010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 112011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 112011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 112006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 112006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_112015(context, evt)
	-- 判断变量"isGearStart"为0
	if ScriptLib.GetGroupVariableValue(context, "isGearStart") ~= 0 then
			return false
	end
	
	-- 判断变量"State_Flag"为4
	if ScriptLib.GetGroupVariableValue(context, "State_Flag") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_112015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220112, 112010, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_112016(context, evt)
	-- 判断变量"isGearStart"为1
	if ScriptLib.GetGroupVariableValue(context, "isGearStart") ~= 1 then
			return false
	end
	
	-- 判断变量"State_Flag"为4
	if ScriptLib.GetGroupVariableValue(context, "State_Flag") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_112016(context, evt)
	-- 将configid为 112011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 112011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 112010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 112010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 112006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 112006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end