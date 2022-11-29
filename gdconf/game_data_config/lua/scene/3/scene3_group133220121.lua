-- 基础信息
local base_info = {
	group_id = 133220121
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
	{ config_id = 121007, gadget_id = 70360079, pos = { x = -2254.993, y = 193.936, z = -4299.748 }, rot = { x = 0.000, y = 246.895, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 121008, gadget_id = 70350081, pos = { x = -2256.795, y = 188.457, z = -4305.018 }, rot = { x = 358.438, y = 270.212, z = 355.800 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 121014, gadget_id = 70360001, pos = { x = -2257.156, y = 189.698, z = -4304.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1121009, name = "GADGET_CREATE_121009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_121009", action = "action_EVENT_GADGET_CREATE_121009", trigger_count = 0 },
	{ config_id = 1121010, name = "SELECT_OPTION_121010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_121010", action = "action_EVENT_SELECT_OPTION_121010" },
	{ config_id = 1121011, name = "GROUP_LOAD_121011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_121011", action = "action_EVENT_GROUP_LOAD_121011", trigger_count = 0 },
	{ config_id = 1121012, name = "GROUP_LOAD_121012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_121012", action = "action_EVENT_GROUP_LOAD_121012", trigger_count = 0 },
	{ config_id = 1121015, name = "VARIABLE_CHANGE_121015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_121015", action = "action_EVENT_VARIABLE_CHANGE_121015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = true },
	{ config_id = 2, name = "waterdown", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 121001, monster_id = 24020301, pos = { x = -2202.256, y = 188.152, z = -4328.124 }, rot = { x = 0.000, y = 328.743, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
		{ config_id = 121002, monster_id = 24020401, pos = { x = -2211.360, y = 188.084, z = -4312.220 }, rot = { x = 0.000, y = 215.242, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
		{ config_id = 121005, monster_id = 24020301, pos = { x = -2196.116, y = 183.997, z = -4346.571 }, rot = { x = 2.078, y = 339.885, z = 356.233 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
		{ config_id = 121006, monster_id = 24020401, pos = { x = -2231.889, y = 188.080, z = -4316.885 }, rot = { x = 0.000, y = 343.235, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 }
	},
	gadgets = {
		{ config_id = 121004, gadget_id = 70900387, pos = { x = -2248.298, y = 188.532, z = -4303.148 }, rot = { x = 359.031, y = 108.809, z = 5.749 }, level = 27, area_id = 11 }
	},
	triggers = {
		{ config_id = 1121003, name = "GADGET_STATE_CHANGE_121003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "", trigger_count = 0 },
		{ config_id = 1121013, name = "VARIABLE_CHANGE_121013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_121013", action = "", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 121007, 121008, 121014 },
		regions = { },
		triggers = { "GADGET_CREATE_121009", "SELECT_OPTION_121010", "GROUP_LOAD_121011", "GROUP_LOAD_121012", "VARIABLE_CHANGE_121015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 121007, 121008, 121014 },
		regions = { },
		triggers = { "GADGET_CREATE_121009", "SELECT_OPTION_121010", "GROUP_LOAD_121011", "GROUP_LOAD_121012", "VARIABLE_CHANGE_121015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_121009(context, evt)
	if 121014 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"waterdown"为1
	if ScriptLib.GetGroupVariableValue(context, "waterdown") ~= 1 then
			return false
	end
	
	-- 判断变量"open"为0
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_121009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220121, 121014, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_121010(context, evt)
	-- 判断是gadgetid 121014 option_id 7
	if 121014 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_121010(context, evt)
	-- 删除指定group： 133220121 ；指定config：121014；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220121, 121014, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 121008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 121007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "open", 1, 133220467) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_121011(context, evt)
	-- 判断变量"open"为0
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_121011(context, evt)
	-- 将configid为 121007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 121008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_121012(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_121012(context, evt)
	-- 将configid为 121007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 121008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_121015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"waterdown"为1
	if ScriptLib.GetGroupVariableValue(context, "waterdown") ~= 1 then
			return false
	end
	
	-- 判断变量"open"为0
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_121015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220121, 121014, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end