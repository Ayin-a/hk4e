-- 基础信息
local base_info = {
	group_id = 111102055
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 55002, monster_id = 21010101, pos = { x = 1413.485, y = 302.754, z = -1300.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 50, drop_tag = "丘丘人", pose_logic_state = "SGV_InitialPose", pose_dict = {[1]=9002,[2]=9003} },
	{ config_id = 55003, monster_id = 21010101, pos = { x = 1409.330, y = 303.625, z = -1300.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 55001, gadget_id = 70350081, pos = { x = 1407.914, y = 303.808, z = -1289.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1055004, name = "GADGET_CREATE_55004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_55004", action = "action_EVENT_GADGET_CREATE_55004", trigger_count = 0 },
	{ config_id = 1055005, name = "SELECT_OPTION_55005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_55005", action = "action_EVENT_SELECT_OPTION_55005", trigger_count = 0 },
	{ config_id = 1055006, name = "SELECT_OPTION_55006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_55006", action = "action_EVENT_SELECT_OPTION_55006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "SGV_InitialPose", value = 0, no_refresh = false, variable_type = 1 }
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
		gadgets = { 55001 },
		regions = { },
		triggers = { "GADGET_CREATE_55004", "SELECT_OPTION_55005", "SELECT_OPTION_55006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 55002, 55003 },
		gadgets = { 55001 },
		regions = { },
		triggers = { "GADGET_CREATE_55004", "SELECT_OPTION_55005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_55004(context, evt)
	if 55001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_55004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111102055, 55001, {7,11}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_55005(context, evt)
	-- 判断是gadgetid 55001 option_id 7
	if 55001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_55005(context, evt)
	local temp=ScriptLib.GetGroupLogicStateValue(context,"SGV_InitialPose")
	temp=temp+1
	ScriptLib.SetGroupLogicStateValue(context,"SGV_InitialPose",temp)
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_55006(context, evt)
	-- 判断是gadgetid 55001 option_id 11
	if 55001 ~= evt.param1 then
		return false	
	end
	
	if 11 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_55006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111102055, 2)
	
	return 0
end