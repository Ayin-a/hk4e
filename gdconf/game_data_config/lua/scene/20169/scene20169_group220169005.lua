-- 基础信息
local base_info = {
	group_id = 220169005
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
	{ config_id = 5001, gadget_id = 70290141, pos = { x = 28.952, y = 65.783, z = -87.105 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 5002, gadget_id = 70290141, pos = { x = -13.086, y = 54.575, z = -73.675 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 5003, gadget_id = 70290141, pos = { x = 10.896, y = 71.990, z = -94.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5007, gadget_id = 70360001, pos = { x = 28.952, y = 66.486, z = -87.105 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5008, gadget_id = 70360001, pos = { x = -13.086, y = 55.266, z = -73.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5009, gadget_id = 70360001, pos = { x = 10.896, y = 72.694, z = -94.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5013, gadget_id = 70220048, pos = { x = 13.059, y = 71.990, z = -93.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5014, gadget_id = 70220048, pos = { x = 8.502, y = 71.990, z = -94.620 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1 },
	{ config_id = 5015, gadget_id = 70220050, pos = { x = 8.666, y = 71.990, z = -93.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5016, gadget_id = 70220051, pos = { x = 14.253, y = 71.990, z = -92.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5017, gadget_id = 70211101, pos = { x = 11.070, y = 71.990, z = -93.705 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005004, name = "GADGET_CREATE_5004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5004", action = "action_EVENT_GADGET_CREATE_5004" },
	{ config_id = 1005005, name = "GADGET_CREATE_5005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5005", action = "action_EVENT_GADGET_CREATE_5005" },
	{ config_id = 1005006, name = "GADGET_CREATE_5006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5006", action = "action_EVENT_GADGET_CREATE_5006" },
	{ config_id = 1005010, name = "SELECT_OPTION_5010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5010", action = "action_EVENT_SELECT_OPTION_5010" },
	{ config_id = 1005011, name = "SELECT_OPTION_5011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5011", action = "action_EVENT_SELECT_OPTION_5011" },
	{ config_id = 1005012, name = "SELECT_OPTION_5012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5012", action = "action_EVENT_SELECT_OPTION_5012" }
}

-- 变量
variables = {
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
		gadgets = { 5013, 5014, 5015, 5016, 5017 },
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
function condition_EVENT_GADGET_CREATE_5004(context, evt)
	if 5007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {73}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_5005(context, evt)
	if 5008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {73}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_5006(context, evt)
	if 5009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {73}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5010(context, evt)
	-- 判断是gadgetid 5007 option_id 73
	if 5007 ~= evt.param1 then
		return false	
	end
	
	if 73 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5010(context, evt)
	-- 将configid为 5001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220169005 ；指定config：5007；物件身上指定option：73；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220169005, 5007, 73) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5011(context, evt)
	-- 判断是gadgetid 5008 option_id 73
	if 5008 ~= evt.param1 then
		return false	
	end
	
	if 73 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5011(context, evt)
	-- 将configid为 5002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220169005 ；指定config：5008；物件身上指定option：73；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220169005, 5008, 73) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5012(context, evt)
	-- 判断是gadgetid 5009 option_id 73
	if 5009 ~= evt.param1 then
		return false	
	end
	
	if 73 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5012(context, evt)
	-- 将configid为 5003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220169005 ；指定config：5009；物件身上指定option：73；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220169005, 5009, 73) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end