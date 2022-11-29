-- 基础信息
local base_info = {
	group_id = 133220567
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
	{ config_id = 567001, gadget_id = 70350081, pos = { x = -2176.333, y = 161.987, z = -4480.812 }, rot = { x = 0.000, y = 116.470, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1567002, name = "GROUP_LOAD_567002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_567002", action = "action_EVENT_GROUP_LOAD_567002", trigger_count = 0 },
	{ config_id = 1567003, name = "GROUP_LOAD_567003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_567003", action = "action_EVENT_GROUP_LOAD_567003", trigger_count = 0 },
	{ config_id = 1567004, name = "VARIABLE_CHANGE_567004", event = EventType.EVENT_VARIABLE_CHANGE, source = "successed", condition = "condition_EVENT_VARIABLE_CHANGE_567004", action = "action_EVENT_VARIABLE_CHANGE_567004" },
	{ config_id = 1567005, name = "SELECT_OPTION_567005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_567005", action = "action_EVENT_SELECT_OPTION_567005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "successed", value = 0, no_refresh = true },
	{ config_id = 2, name = "isFinished", value = 0, no_refresh = true }
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
		gadgets = { 567001 },
		regions = { },
		triggers = { "GROUP_LOAD_567002", "GROUP_LOAD_567003", "VARIABLE_CHANGE_567004", "SELECT_OPTION_567005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_567002(context, evt)
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_567002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220567, 567001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 567001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 567001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_567003(context, evt)
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	-- 判断变量"isFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_567003(context, evt)
	-- 解除当前场景中pointid 为%force_id%的地城入口的groupLimit状态
		ScriptLib.UnfreezeGroupLimit(context, 350)
	
	-- 将configid为 567001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 567001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_567004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_567004(context, evt)
	-- 将configid为 567001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 567001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220567, 567001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_567005(context, evt)
	-- 判断是gadgetid 567001 option_id 7
	if 567001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_567005(context, evt)
	-- 解除当前场景中pointid 为%force_id%的地城入口的groupLimit状态
		ScriptLib.UnfreezeGroupLimit(context, 350)
	
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133220567 ；指定config：567001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220567, 567001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 567001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 567001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end