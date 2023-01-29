-- 基础信息
local base_info = {
	group_id = 133313021
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
	{ config_id = 21001, gadget_id = 71700288, pos = { x = -774.869, y = -852.296, z = 5268.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 21002, gadget_id = 70950145, pos = { x = -774.614, y = -852.350, z = 5268.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1021003, name = "GADGET_CREATE_21003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_21003", action = "action_EVENT_GADGET_CREATE_21003", trigger_count = 0 },
	{ config_id = 1021004, name = "SELECT_OPTION_21004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_21004", action = "action_EVENT_SELECT_OPTION_21004", trigger_count = 0 }
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
		gadgets = { 21001, 21002 },
		regions = { },
		triggers = { "GADGET_CREATE_21003", "SELECT_OPTION_21004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 删除指定操作台的option
function TLA_del_work_options_by_group_configid(context, evt, group_id, config_id, option_id)
	-- 删除指定group： group_id ；指定config：config_id；物件身上指定option：option_id；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, group_id, config_id, option_id) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_21003(context, evt)
	if 21002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_21003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313021, 21002, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_21004(context, evt)
	-- 判断是gadgetid 21002 option_id 68
	if 21002 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_21004(context, evt)
	ScriptLib.AddQuestProgress(context, "Q7322009")
	
	TLA_del_work_options_by_group_configid(context, evt, 133313021, 21002, 68)
	
	return 0
end