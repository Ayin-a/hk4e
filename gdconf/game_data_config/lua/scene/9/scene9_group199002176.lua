-- 基础信息
local base_info = {
	group_id = 199002176
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
	{ config_id = 176001, gadget_id = 70310332, pos = { x = 612.928, y = 214.717, z = -427.865 }, rot = { x = 0.000, y = 86.188, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 401 },
	{ config_id = 176002, gadget_id = 70310332, pos = { x = 614.336, y = 214.724, z = -429.525 }, rot = { x = 0.000, y = 15.853, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 401 },
	{ config_id = 176003, gadget_id = 70310332, pos = { x = 617.105, y = 214.689, z = -420.106 }, rot = { x = 0.000, y = 233.679, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 401 },
	{ config_id = 176004, gadget_id = 70310332, pos = { x = 615.207, y = 214.701, z = -420.242 }, rot = { x = 0.000, y = 119.214, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 401 },
	{ config_id = 176005, gadget_id = 70310332, pos = { x = 607.039, y = 214.693, z = -427.678 }, rot = { x = 0.000, y = 266.843, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 401 },
	{ config_id = 176006, gadget_id = 70310332, pos = { x = 607.048, y = 214.688, z = -429.661 }, rot = { x = 0.000, y = 272.152, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 401 },
	{ config_id = 176007, gadget_id = 70360001, pos = { x = 613.242, y = 215.576, z = -428.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 421 } }, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1176008, name = "SELECT_OPTION_176008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_176008", action = "action_EVENT_SELECT_OPTION_176008", trigger_count = 0 },
	{ config_id = 1176009, name = "TIME_AXIS_PASS_176009", event = EventType.EVENT_TIME_AXIS_PASS, source = "option", condition = "condition_EVENT_TIME_AXIS_PASS_176009", action = "action_EVENT_TIME_AXIS_PASS_176009", trigger_count = 0 },
	{ config_id = 1176010, name = "GROUP_LOAD_176010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_176010", trigger_count = 0 }
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
		gadgets = { 176001, 176002, 176003, 176004, 176005, 176006, 176007 },
		regions = { },
		triggers = { "SELECT_OPTION_176008", "TIME_AXIS_PASS_176009", "GROUP_LOAD_176010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_176008(context, evt)
	-- 判断是gadgetid 176007 option_id 421
	if 176007 ~= evt.param1 then
		return false	
	end
	
	if 421 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_176008(context, evt)
	-- 调用提示id为 1111347 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111347) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建标识为"option"，时间节点为{15}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "option", {15}, false)
	
	
	-- 删除指定group： 199002176 ；指定config：176007；物件身上指定option：421；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 199002176, 176007, 421) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_176009(context, evt)
	if "option" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_176009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199002176, 176007, {421}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_176010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199002176, 176007, {421}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end