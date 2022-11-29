-- 基础信息
local base_info = {
	group_id = 133210171
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
	{ config_id = 171001, gadget_id = 70350081, pos = { x = -3545.115, y = 197.776, z = -1173.080 }, rot = { x = 0.000, y = 39.967, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 激活播CS
	{ config_id = 1171002, name = "GADGET_STATE_CHANGE_171002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_171002", action = "action_EVENT_GADGET_STATE_CHANGE_171002" },
	-- default创建时加操作台
	{ config_id = 1171003, name = "GADGET_CREATE_171003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_171003", action = "action_EVENT_GADGET_CREATE_171003", trigger_count = 0 },
	-- 操作台交互
	{ config_id = 1171004, name = "SELECT_OPTION_171004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_171004", action = "action_EVENT_SELECT_OPTION_171004", trigger_count = 0 },
	-- 水面降1次后解锁
	{ config_id = 1171005, name = "VARIABLE_CHANGE_171005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_171005", action = "action_EVENT_VARIABLE_CHANGE_171005" },
	-- 水面降一次后解锁
	{ config_id = 1171006, name = "GROUP_LOAD_171006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_171006", action = "action_EVENT_GROUP_LOAD_171006", trigger_count = 0 },
	-- 解锁时加操作台
	{ config_id = 1171007, name = "GADGET_STATE_CHANGE_171007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_171007", action = "action_EVENT_GADGET_STATE_CHANGE_171007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "WaterDown", value = 0, no_refresh = true }
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
		gadgets = { 171001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_171002", "GADGET_CREATE_171003", "SELECT_OPTION_171004", "VARIABLE_CHANGE_171005", "GROUP_LOAD_171006", "GADGET_STATE_CHANGE_171007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_171002(context, evt)
	if 171001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_171002(context, evt)
	-- 将本组内变量名为 "WaterDown" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "WaterDown", 2, 133210074) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为321007402 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 321007402, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_171003(context, evt)
	if 171001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_171003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210171, 171001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_171004(context, evt)
	-- 判断是gadgetid 171001 option_id 7
	if 171001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_171004(context, evt)
	-- 将configid为 171001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210171 ；指定config：171001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210171, 171001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "WaterDown" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "WaterDown", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_171005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"WaterDown"为1
	if ScriptLib.GetGroupVariableValue(context, "WaterDown") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_171005(context, evt)
	-- 将configid为 171001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_171006(context, evt)
	-- 判断变量"WaterDown"为1
	if ScriptLib.GetGroupVariableValue(context, "WaterDown") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_171006(context, evt)
	-- 将configid为 171001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_171007(context, evt)
	-- 检测config_id为171001的gadget是否从GadgetState.GearStop变为GadgetState.Default
	if 171001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_171007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210171, 171001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end