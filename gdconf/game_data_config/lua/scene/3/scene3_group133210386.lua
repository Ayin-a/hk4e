-- 基础信息
local base_info = {
	group_id = 133210386
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
	{ config_id = 386001, gadget_id = 70360167, pos = { x = -3851.679, y = 199.797, z = -439.073 }, rot = { x = 0.000, y = 205.067, z = 0.000 }, level = 30, persistent = true, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 386014, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3851.679, y = 199.865, z = -439.073 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- 激活尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1386002, name = "GADGET_STATE_CHANGE_386002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_386002", action = "action_EVENT_GADGET_STATE_CHANGE_386002", trigger_count = 0 },
	-- 关闭尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1386003, name = "GADGET_STATE_CHANGE_386003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_386003", action = "action_EVENT_GADGET_STATE_CHANGE_386003", trigger_count = 0 },
	-- 激活后1秒执行，实际变化
	{ config_id = 1386004, name = "TIME_AXIS_PASS_386004", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_386004", action = "action_EVENT_TIME_AXIS_PASS_386004", trigger_count = 0 },
	-- 关闭后1秒执行，实际变化
	{ config_id = 1386005, name = "TIME_AXIS_PASS_386005", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_386005", action = "action_EVENT_TIME_AXIS_PASS_386005", trigger_count = 0 },
	-- 尊像加载，且是关闭时
	{ config_id = 1386006, name = "GADGET_CREATE_386006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_386006", action = "action_EVENT_GADGET_CREATE_386006", trigger_count = 0 },
	-- 点击激活时，改状态
	{ config_id = 1386007, name = "SELECT_OPTION_386007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_386007", action = "action_EVENT_SELECT_OPTION_386007", trigger_count = 0 },
	-- 激活后5秒执行，加关闭按钮
	{ config_id = 1386008, name = "TIME_AXIS_PASS_386008", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_386008", action = "action_EVENT_TIME_AXIS_PASS_386008", trigger_count = 0 },
	-- 关闭后5秒执行，加激活按钮
	{ config_id = 1386009, name = "TIME_AXIS_PASS_386009", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_386009", action = "action_EVENT_TIME_AXIS_PASS_386009", trigger_count = 0 },
	-- 点击关闭时，改状态
	{ config_id = 1386010, name = "SELECT_OPTION_386010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_386010", action = "action_EVENT_SELECT_OPTION_386010", trigger_count = 0 },
	-- 尊像加载，且是开启时
	{ config_id = 1386011, name = "GADGET_CREATE_386011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_386011", action = "action_EVENT_GADGET_CREATE_386011", trigger_count = 0 },
	-- 尊像从锁定变为关闭时
	{ config_id = 1386012, name = "GADGET_STATE_CHANGE_386012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_386012", action = "action_EVENT_GADGET_STATE_CHANGE_386012", trigger_count = 0 },
	-- 玩法完成
	{ config_id = 1386013, name = "VARIABLE_CHANGE_386013", event = EventType.EVENT_VARIABLE_CHANGE, source = "success", condition = "condition_EVENT_VARIABLE_CHANGE_386013", action = "action_EVENT_VARIABLE_CHANGE_386013" },
	{ config_id = 1386014, name = "ENTER_REGION_386014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_386014", action = "action_EVENT_ENTER_REGION_386014", trigger_count = 0 }
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
		gadgets = { 386001 },
		regions = { 386014 },
		triggers = { "GADGET_STATE_CHANGE_386002", "GADGET_STATE_CHANGE_386003", "TIME_AXIS_PASS_386004", "TIME_AXIS_PASS_386005", "GADGET_CREATE_386006", "SELECT_OPTION_386007", "TIME_AXIS_PASS_386008", "TIME_AXIS_PASS_386009", "SELECT_OPTION_386010", "GADGET_CREATE_386011", "GADGET_STATE_CHANGE_386012", "VARIABLE_CHANGE_386013", "ENTER_REGION_386014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_386002(context, evt)
	-- 检测config_id为386001的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 386001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_386002(context, evt)
	-- 创建标识为"changestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "changestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_386003(context, evt)
	-- 检测config_id为386001的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 386001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_386003(context, evt)
	-- 创建标识为"revivestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "revivestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_386004(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_386004(context, evt)
	-- 将本组内变量名为 "StateChange" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "StateChange", 1, 133210211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_386005(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_386005(context, evt)
	-- 将本组内变量名为 "StateChange" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "StateChange", 0, 133210211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_386006(context, evt)
	if 386001 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_386006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210386, 386001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_386007(context, evt)
	-- 判断是gadgetid 386001 option_id 61
	if 386001 ~= evt.param1 then
		return false	
	end
	
	if 61 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_386007(context, evt)
	-- 将configid为 386001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 386001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210386 ；指定config：386001；物件身上指定option：61；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210386, 386001, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_386008(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_386008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210386, 386001, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_386009(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_386009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210386, 386001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_386010(context, evt)
	-- 判断是gadgetid 386001 option_id 62
	if 386001 ~= evt.param1 then
		return false	
	end
	
	if 62 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_386010(context, evt)
	-- 将configid为 386001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 386001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210386 ；指定config：386001；物件身上指定option：62；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210386, 386001, 62) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_386011(context, evt)
	if 386001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_386011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210386, 386001, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_386012(context, evt)
	-- 检测config_id为386001的gadget是否从GadgetState.Default变为GadgetState.GearStop
	if 386001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_386012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210386, 386001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 调用提示id为 32100163 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100163) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "queststart" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "queststart", 2, 133210211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_386013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_386013(context, evt)
	-- 将configid为 386001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 386001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210386 ；指定config：386001；物件身上指定option：61；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210386, 386001, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133210386 ；指定config：386001；物件身上指定option：62；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210386, 386001, 62) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_386014(context, evt)
	if evt.param1 ~= 386014 then return false end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133210386, 386001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_386014(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end