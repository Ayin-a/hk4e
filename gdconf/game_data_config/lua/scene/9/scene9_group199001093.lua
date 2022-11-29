-- 基础信息
local base_info = {
	group_id = 199001093
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
	-- persitent
	{ config_id = 93002, gadget_id = 70350004, pos = { x = 195.734, y = 134.480, z = 298.740 }, rot = { x = 0.000, y = 5.936, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 93003, gadget_id = 70360170, pos = { x = 199.068, y = 136.390, z = 295.787 }, rot = { x = 89.367, y = 212.151, z = 338.336 }, level = 20, persistent = true, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- Load时监听变量来删除按钮选项
	{ config_id = 1093001, name = "GROUP_LOAD_93001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_93001", action = "action_EVENT_GROUP_LOAD_93001", trigger_count = 0 },
	-- 门关and拉杆load，出现按键
	{ config_id = 1093005, name = "GADGET_CREATE_93005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_93005", action = "action_EVENT_GADGET_CREATE_93005", trigger_count = 0 },
	-- 按键开门，删除按键
	{ config_id = 1093006, name = "SELECT_OPTION_93006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_93006", action = "action_EVENT_SELECT_OPTION_93006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasDoorOpened", value = 0, no_refresh = true }
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
		gadgets = { 93002, 93003 },
		regions = { },
		triggers = { "GROUP_LOAD_93001", "GADGET_CREATE_93005", "SELECT_OPTION_93006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_93001(context, evt)
	-- 判断变量"hasDoorOpened"为1
	if ScriptLib.GetGroupVariableValue(context, "hasDoorOpened") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_93001(context, evt)
	-- 将configid为 93003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 199001093 ；指定config：93003；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 199001093, 93003, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_93005(context, evt)
	if 93002 ~= evt.param1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 199001093, 93002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_93005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199001093, 93003, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_93006(context, evt)
	-- 判断是gadgetid 93003 option_id 1
	if 93003 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_93006(context, evt)
	-- 将本组内变量名为 "hasDoorOpened" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasDoorOpened", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "DoorOpen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "DoorOpen", 1, 199001008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 93002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 93003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 199001093 ；指定config：93003；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 199001093, 93003, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199001008, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end