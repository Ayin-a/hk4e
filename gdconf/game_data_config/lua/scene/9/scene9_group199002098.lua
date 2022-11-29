-- 基础信息
local base_info = {
	group_id = 199002098
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
	{ config_id = 98001, gadget_id = 70310175, pos = { x = 495.357, y = 121.338, z = -516.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStop, area_id = 401 },
	{ config_id = 98002, gadget_id = 70310175, pos = { x = 496.439, y = 121.332, z = -515.318 }, rot = { x = 0.000, y = 268.542, z = 0.000 }, level = 20, state = GadgetState.GearStop, area_id = 401 },
	{ config_id = 98003, gadget_id = 70310175, pos = { x = 494.347, y = 121.330, z = -514.468 }, rot = { x = 0.000, y = 138.259, z = 0.000 }, level = 20, state = GadgetState.GearStop, area_id = 401 },
	{ config_id = 98005, gadget_id = 70360001, pos = { x = 499.845, y = 120.813, z = -522.231 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	-- 首次进入区域后触发rmd
	{ config_id = 98004, shape = RegionShape.SPHERE, radius = 12, pos = { x = 495.088, y = 122.109, z = -515.514 }, area_id = 401 }
}

-- 触发器
triggers = {
	-- 首次进入区域后触发rmd
	{ config_id = 1098004, name = "ENTER_REGION_98004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_98004", action = "action_EVENT_ENTER_REGION_98004", trigger_count = 0 },
	-- 选择聆听按钮后创建stop2并删除按钮
	{ config_id = 1098006, name = "SELECT_OPTION_98006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_98006", action = "action_EVENT_SELECT_OPTION_98006", trigger_count = 0 },
	-- stop到期后创建操作台按钮
	{ config_id = 1098007, name = "TIME_AXIS_PASS_98007", event = EventType.EVENT_TIME_AXIS_PASS, source = "stop", condition = "condition_EVENT_TIME_AXIS_PASS_98007", action = "action_EVENT_TIME_AXIS_PASS_98007", trigger_count = 0 },
	-- stop2时间事件到期后恢复按钮
	{ config_id = 1098008, name = "TIME_AXIS_PASS_98008", event = EventType.EVENT_TIME_AXIS_PASS, source = "stop2", condition = "condition_EVENT_TIME_AXIS_PASS_98008", action = "action_EVENT_TIME_AXIS_PASS_98008", trigger_count = 0 },
	{ config_id = 1098009, name = "GROUP_LOAD_98009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_98009", action = "action_EVENT_GROUP_LOAD_98009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "listen", value = 0, no_refresh = true }
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
		gadgets = { 98001, 98002, 98003, 98005 },
		regions = { 98004 },
		triggers = { "ENTER_REGION_98004", "SELECT_OPTION_98006", "TIME_AXIS_PASS_98007", "TIME_AXIS_PASS_98008", "GROUP_LOAD_98009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_98004(context, evt)
	if evt.param1 ~= 98004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_98004(context, evt)
	-- 将本组内变量名为 "listen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "listen", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 1111325 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111325) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 98001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 98002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 98003 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98003, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"stop"，时间节点为{12}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "stop", {12}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_98006(context, evt)
	-- 判断是gadgetid 98005 option_id 421
	if 98005 ~= evt.param1 then
		return false	
	end
	
	if 421 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_98006(context, evt)
	-- 创建标识为"stop2"，时间节点为{24}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "stop2", {24}, false)
	
	
	-- 删除指定group： 199002098 ；指定config：98005；物件身上指定option：421；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 199002098, 98005, 421) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 调用提示id为 1111328 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111328) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 98001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 98002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 98003 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98003, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_98007(context, evt)
	if "stop" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_98007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199002098, 98005, {421}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 98001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 98002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 98003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_98008(context, evt)
	if "stop2" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_98008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199002098, 98005, {421}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 98001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 98002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 98003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_98009(context, evt)
	-- 判断变量"listen"为1
	if ScriptLib.GetGroupVariableValue(context, "listen") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_98009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199002098, 98005, {421}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end