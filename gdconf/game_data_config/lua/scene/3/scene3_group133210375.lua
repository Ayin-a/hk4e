-- 基础信息
local base_info = {
	group_id = 133210375
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
	{ config_id = 375001, gadget_id = 70360167, pos = { x = -3555.366, y = 176.047, z = -1151.032 }, rot = { x = 2.295, y = 312.121, z = 3.347 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 375013, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3556.453, y = 176.047, z = -1150.314 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- 激活尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1375002, name = "GADGET_STATE_CHANGE_375002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_375002", action = "action_EVENT_GADGET_STATE_CHANGE_375002", trigger_count = 0 },
	-- 关闭尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1375003, name = "GADGET_STATE_CHANGE_375003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_375003", action = "action_EVENT_GADGET_STATE_CHANGE_375003", trigger_count = 0 },
	-- 激活后1秒执行，实际变化
	{ config_id = 1375004, name = "TIME_AXIS_PASS_375004", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_375004", action = "action_EVENT_TIME_AXIS_PASS_375004", trigger_count = 0 },
	-- 关闭后1秒执行，实际变化
	{ config_id = 1375005, name = "TIME_AXIS_PASS_375005", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_375005", action = "action_EVENT_TIME_AXIS_PASS_375005", trigger_count = 0 },
	-- 尊像加载，且是关闭时
	{ config_id = 1375006, name = "GADGET_CREATE_375006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_375006", action = "action_EVENT_GADGET_CREATE_375006", trigger_count = 0 },
	-- 点击激活时，改状态
	{ config_id = 1375007, name = "SELECT_OPTION_375007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_375007", action = "action_EVENT_SELECT_OPTION_375007", trigger_count = 0 },
	-- 激活后5秒执行，加关闭按钮
	{ config_id = 1375008, name = "TIME_AXIS_PASS_375008", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_375008", action = "action_EVENT_TIME_AXIS_PASS_375008", trigger_count = 0 },
	-- 关闭后5秒执行，加激活按钮
	{ config_id = 1375009, name = "TIME_AXIS_PASS_375009", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_375009", action = "action_EVENT_TIME_AXIS_PASS_375009", trigger_count = 0 },
	-- 点击关闭时，改状态
	{ config_id = 1375010, name = "SELECT_OPTION_375010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_375010", action = "action_EVENT_SELECT_OPTION_375010", trigger_count = 0 },
	-- 尊像加载，且是开启时
	{ config_id = 1375011, name = "GADGET_CREATE_375011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_375011", action = "action_EVENT_GADGET_CREATE_375011", trigger_count = 0 },
	-- 尊像从锁定变为关闭时
	{ config_id = 1375012, name = "GADGET_STATE_CHANGE_375012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_375012", action = "action_EVENT_GADGET_STATE_CHANGE_375012", trigger_count = 0 },
	{ config_id = 1375013, name = "ENTER_REGION_375013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_375013", action = "action_EVENT_ENTER_REGION_375013", trigger_count = 0 }
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
		gadgets = { 375001 },
		regions = { 375013 },
		triggers = { "GADGET_STATE_CHANGE_375002", "GADGET_STATE_CHANGE_375003", "TIME_AXIS_PASS_375004", "TIME_AXIS_PASS_375005", "GADGET_CREATE_375006", "SELECT_OPTION_375007", "TIME_AXIS_PASS_375008", "TIME_AXIS_PASS_375009", "SELECT_OPTION_375010", "GADGET_CREATE_375011", "GADGET_STATE_CHANGE_375012", "ENTER_REGION_375013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_375002(context, evt)
	-- 检测config_id为375001的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 375001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_375002(context, evt)
	-- 创建标识为"changestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "changestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_375003(context, evt)
	-- 检测config_id为375001的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 375001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_375003(context, evt)
	-- 创建标识为"revivestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "revivestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_375004(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_375004(context, evt)
	-- 将本组内变量名为 "GadgetCreate" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GadgetCreate", 1, 133210376) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_375005(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_375005(context, evt)
	-- 将本组内变量名为 "GadgetCreate" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GadgetCreate", 0, 133210376) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_375006(context, evt)
	if 375001 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_375006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210375, 375001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_375007(context, evt)
	-- 判断是gadgetid 375001 option_id 61
	if 375001 ~= evt.param1 then
		return false	
	end
	
	if 61 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_375007(context, evt)
	-- 将configid为 375001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 375001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210375 ；指定config：375001；物件身上指定option：61；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210375, 375001, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_375008(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_375008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210375, 375001, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_375009(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_375009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210375, 375001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_375010(context, evt)
	-- 判断是gadgetid 375001 option_id 62
	if 375001 ~= evt.param1 then
		return false	
	end
	
	if 62 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_375010(context, evt)
	-- 将configid为 375001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 375001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210375 ；指定config：375001；物件身上指定option：62；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210375, 375001, 62) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_375011(context, evt)
	if 375001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_375011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210375, 375001, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_375012(context, evt)
	-- 检测config_id为375001的gadget是否从GadgetState.Default变为GadgetState.GearStop
	if 375001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_375012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210375, 375001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_375013(context, evt)
	if evt.param1 ~= 375013 then return false end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133210375, 375001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_375013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end