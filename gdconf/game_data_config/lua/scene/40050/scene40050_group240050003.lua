-- 基础信息
local base_info = {
	group_id = 240050003
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
	{ config_id = 3001, gadget_id = 70360288, pos = { x = 3.122, y = 64.671, z = -84.984 }, rot = { x = 0.000, y = 359.806, z = 0.000 }, level = 1 },
	{ config_id = 3002, gadget_id = 70360170, pos = { x = 1.066, y = 56.501, z = -85.786 }, rot = { x = 87.644, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3005, gadget_id = 70360001, pos = { x = 1.077, y = 56.495, z = -85.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3006, gadget_id = 70710521, pos = { x = 3.116, y = 54.411, z = -85.135 }, rot = { x = 0.000, y = 86.179, z = 0.000 }, level = 1 },
	{ config_id = 3007, gadget_id = 70710522, pos = { x = 3.150, y = 54.431, z = -82.473 }, rot = { x = 0.000, y = 178.782, z = 0.000 }, level = 1 },
	{ config_id = 3008, gadget_id = 70710522, pos = { x = 3.107, y = 55.513, z = -84.884 }, rot = { x = 353.465, y = 359.921, z = 3.476 }, level = 1 },
	{ config_id = 3009, gadget_id = 70900393, pos = { x = 4.219, y = 54.356, z = -80.586 }, rot = { x = 0.000, y = 12.063, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3010, gadget_id = 70900393, pos = { x = -1.797, y = 54.467, z = -84.537 }, rot = { x = 1.584, y = 26.618, z = 0.784 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003003, name = "GADGET_CREATE_3003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3003", action = "action_EVENT_GADGET_CREATE_3003", trigger_count = 0 },
	{ config_id = 1003004, name = "SELECT_OPTION_3004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3004", action = "action_EVENT_SELECT_OPTION_3004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = true }
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
		gadgets = { 3001, 3002, 3005, 3006, 3007, 3008, 3009, 3010 },
		regions = { },
		triggers = { "GADGET_CREATE_3003", "SELECT_OPTION_3004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_3003(context, evt)
	if 3005 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"open"为0
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240050003, 3005, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3004(context, evt)
	-- 判断是gadgetid 3005 option_id 7
	if 3005 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3004(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 240050003 ；指定config：3005；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240050003, 3005, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "open", 1, 240050003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end