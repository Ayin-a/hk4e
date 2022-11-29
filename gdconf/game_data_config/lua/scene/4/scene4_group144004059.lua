-- 基础信息
local base_info = {
	group_id = 144004059
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
	{ config_id = 59001, gadget_id = 70370273, pos = { x = -344.921, y = 201.541, z = -620.853 }, rot = { x = 0.000, y = 59.348, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 59002, gadget_id = 70360286, pos = { x = -344.921, y = 201.541, z = -620.853 }, rot = { x = 0.000, y = 96.382, z = 0.000 }, level = 1, area_id = 100 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1059003, name = "GADGET_CREATE_59003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_59003", action = "action_EVENT_GADGET_CREATE_59003", trigger_count = 0 },
	{ config_id = 1059004, name = "SELECT_OPTION_59004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_59004", action = "action_EVENT_SELECT_OPTION_59004", trigger_count = 0 },
	{ config_id = 1059005, name = "TIME_AXIS_PASS_59005", event = EventType.EVENT_TIME_AXIS_PASS, source = "createOption", condition = "", action = "action_EVENT_TIME_AXIS_PASS_59005", trigger_count = 0 }
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
		gadgets = { 59001, 59002 },
		regions = { },
		triggers = { "GADGET_CREATE_59003", "SELECT_OPTION_59004", "TIME_AXIS_PASS_59005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_59003(context, evt)
	if 59002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_59003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004059, 59002, {66}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_59004(context, evt)
	-- 判断是gadgetid 59002 option_id 66
	if 59002 ~= evt.param1 then
		return false	
	end
	
	if 66 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_59004(context, evt)
	-- 停止标识为"createOption"的时间轴
	ScriptLib.EndTimeAxis(context, "createOption")
	
	
	-- 删除指定group： 144004059 ；指定config：59002；物件身上指定option：66；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144004059, 59002, 66) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-344,y=201,z=-620}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400054, pos, 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 创建标识为"createOption"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "createOption", {4}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_59005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004059, 59002, {66}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end