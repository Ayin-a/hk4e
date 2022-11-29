-- 基础信息
local base_info = {
	group_id = 133210031
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
	{ config_id = 31001, gadget_id = 70360167, pos = { x = -3992.027, y = 200.927, z = -1060.489 }, rot = { x = 0.000, y = 208.289, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 31013, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3992.027, y = 200.955, z = -1060.489 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- 激活尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1031002, name = "GADGET_STATE_CHANGE_31002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_31002", action = "action_EVENT_GADGET_STATE_CHANGE_31002", trigger_count = 0 },
	-- 关闭尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1031003, name = "GADGET_STATE_CHANGE_31003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_31003", action = "action_EVENT_GADGET_STATE_CHANGE_31003", trigger_count = 0 },
	-- 激活后1秒执行，实际变化
	{ config_id = 1031004, name = "TIME_AXIS_PASS_31004", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_31004", action = "action_EVENT_TIME_AXIS_PASS_31004", trigger_count = 0 },
	-- 关闭后1秒执行，实际变化
	{ config_id = 1031005, name = "TIME_AXIS_PASS_31005", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_31005", action = "action_EVENT_TIME_AXIS_PASS_31005", trigger_count = 0 },
	-- 尊像加载，且是关闭时
	{ config_id = 1031006, name = "GADGET_CREATE_31006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_31006", action = "action_EVENT_GADGET_CREATE_31006", trigger_count = 0 },
	-- 点击激活时，改状态
	{ config_id = 1031007, name = "SELECT_OPTION_31007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_31007", action = "action_EVENT_SELECT_OPTION_31007", trigger_count = 0 },
	-- 激活后5秒执行，加关闭按钮
	{ config_id = 1031008, name = "TIME_AXIS_PASS_31008", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_31008", action = "action_EVENT_TIME_AXIS_PASS_31008", trigger_count = 0 },
	-- 关闭后5秒执行，加激活按钮
	{ config_id = 1031009, name = "TIME_AXIS_PASS_31009", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_31009", action = "action_EVENT_TIME_AXIS_PASS_31009", trigger_count = 0 },
	-- 点击关闭时，改状态
	{ config_id = 1031010, name = "SELECT_OPTION_31010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_31010", action = "action_EVENT_SELECT_OPTION_31010", trigger_count = 0 },
	-- 尊像加载，且是开启时
	{ config_id = 1031011, name = "GADGET_CREATE_31011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_31011", action = "action_EVENT_GADGET_CREATE_31011", trigger_count = 0 },
	-- 尊像从锁定变为关闭时
	{ config_id = 1031012, name = "GADGET_STATE_CHANGE_31012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_31012", action = "action_EVENT_GADGET_STATE_CHANGE_31012", trigger_count = 0 },
	{ config_id = 1031013, name = "ENTER_REGION_31013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_31013", action = "action_EVENT_ENTER_REGION_31013", trigger_count = 0 },
	{ config_id = 1031014, name = "VARIABLE_CHANGE_31014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_31014", action = "action_EVENT_VARIABLE_CHANGE_31014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "success", value = 0, no_refresh = true }
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
		gadgets = { 31001 },
		regions = { 31013 },
		triggers = { "GADGET_STATE_CHANGE_31002", "GADGET_STATE_CHANGE_31003", "TIME_AXIS_PASS_31004", "TIME_AXIS_PASS_31005", "GADGET_CREATE_31006", "SELECT_OPTION_31007", "TIME_AXIS_PASS_31008", "TIME_AXIS_PASS_31009", "SELECT_OPTION_31010", "GADGET_CREATE_31011", "GADGET_STATE_CHANGE_31012", "ENTER_REGION_31013", "VARIABLE_CHANGE_31014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_31002(context, evt)
	-- 检测config_id为31001的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 31001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_31002(context, evt)
	-- 创建标识为"changestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "changestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_31003(context, evt)
	-- 检测config_id为31001的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 31001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_31003(context, evt)
	-- 创建标识为"revivestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "revivestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_31004(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_31004(context, evt)
	-- 改变指定group组133210001中， configid为1007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133210001, 1007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_31005(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_31005(context, evt)
	-- 改变指定group组133210001中， configid为1007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133210001, 1007, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_31006(context, evt)
	if 31001 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_31006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210031, 31001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_31007(context, evt)
	-- 判断是gadgetid 31001 option_id 61
	if 31001 ~= evt.param1 then
		return false	
	end
	
	if 61 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_31007(context, evt)
	-- 将configid为 31001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210031 ；指定config：31001；物件身上指定option：61；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210031, 31001, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_31008(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_31008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210031, 31001, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_31009(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_31009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210031, 31001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_31010(context, evt)
	-- 判断是gadgetid 31001 option_id 62
	if 31001 ~= evt.param1 then
		return false	
	end
	
	if 62 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_31010(context, evt)
	-- 将configid为 31001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210031 ；指定config：31001；物件身上指定option：62；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210031, 31001, 62) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_31011(context, evt)
	if 31001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_31011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210031, 31001, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_31012(context, evt)
	-- 检测config_id为31001的gadget是否从GadgetState.Default变为GadgetState.GearStop
	if 31001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_31012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210031, 31001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_31013(context, evt)
	if evt.param1 ~= 31013 then return false end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133210031, 31001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_31013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_31014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_31014(context, evt)
	-- 将configid为 31001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210031 ；指定config：31001；物件身上指定option：62；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210031, 31001, 62) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	end
	
	-- 删除指定group： 133210031 ；指定config：31001；物件身上指定option：61；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210031, 31001, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	end
	
	-- 停止标识为"changestate"的时间轴
	ScriptLib.EndTimeAxis(context, "changestate")
	
	
	return 0
end