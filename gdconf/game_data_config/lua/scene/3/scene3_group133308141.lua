-- 基础信息
local base_info = {
	group_id = 133308141
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
	{ config_id = 141001, gadget_id = 70211012, pos = { x = -2041.322, y = 160.366, z = 5550.816 }, rot = { x = 0.000, y = 91.735, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 141002, gadget_id = 70330416, pos = { x = -2036.148, y = 160.585, z = 5550.902 }, rot = { x = 0.000, y = 269.978, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 141003, gadget_id = 70330333, pos = { x = -2021.192, y = 160.411, z = 5560.791 }, rot = { x = 0.000, y = 224.715, z = 0.000 }, level = 32, isOneoff = true, persistent = true, worktop_config = { is_persistent = true, init_options = { } }, area_id = 27 },
	{ config_id = 141004, gadget_id = 70360286, pos = { x = -2021.236, y = 162.071, z = 5560.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1141005, name = "GADGET_CREATE_141005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_141005", action = "action_EVENT_GADGET_CREATE_141005", trigger_count = 0 },
	{ config_id = 1141006, name = "SELECT_OPTION_141006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_141006", action = "action_EVENT_SELECT_OPTION_141006", trigger_count = 0 },
	{ config_id = 1141007, name = "GROUP_LOAD_141007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_141007", action = "action_EVENT_GROUP_LOAD_141007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "end", value = 0, no_refresh = true }
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
		gadgets = { 141001, 141002, 141003, 141004 },
		regions = { },
		triggers = { "GADGET_CREATE_141005", "SELECT_OPTION_141006", "GROUP_LOAD_141007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_141005(context, evt)
	if 141003 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"end"为0
	if ScriptLib.GetGroupVariableValue(context, "end") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_141005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308141, 141004, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_141006(context, evt)
	-- 判断是gadgetid 141004 option_id 7
	if 141004 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_141006(context, evt)
	-- 将本组内变量名为 "end" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "end", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 141003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 141003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 141002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 141002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 141001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 141001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133308141 ；指定config：141004；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308141, 141004, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_141007(context, evt)
	-- 判断变量"end"为1
	if ScriptLib.GetGroupVariableValue(context, "end") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_141007(context, evt)
	-- 将configid为 141003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 141003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 141002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 141002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 141001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 141001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133308141 ；指定config：141004；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308141, 141004, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end