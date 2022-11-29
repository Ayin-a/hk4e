-- 基础信息
local base_info = {
	group_id = 220138002
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
	{ config_id = 2001, gadget_id = 71700418, pos = { x = 3.785, y = 57.777, z = 156.211 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2002, gadget_id = 70710745, pos = { x = 3.785, y = 59.154, z = 156.211 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2006, gadget_id = 70360001, pos = { x = 3.785, y = 59.161, z = 156.211 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002003, name = "GADGET_CREATE_2003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2003", action = "action_EVENT_GADGET_CREATE_2003", trigger_count = 0 },
	{ config_id = 1002005, name = "SELECT_OPTION_2005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2005", action = "action_EVENT_SELECT_OPTION_2005", trigger_count = 0 },
	{ config_id = 1002008, name = "GROUP_LOAD_2008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_2008", trigger_count = 0 }
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
		gadgets = { 2001, 2002 },
		regions = { },
		triggers = { "GROUP_LOAD_2008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2001, 2002, 2006 },
		regions = { },
		triggers = { "GADGET_CREATE_2003", "SELECT_OPTION_2005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_2003(context, evt)
	if 2006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220138002, 2006, {195}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2005(context, evt)
	-- 判断是gadgetid 2006 option_id 195
	if 2006 ~= evt.param1 then
		return false	
	end
	
	if 195 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_2008(context, evt)
		    if ScriptLib.GetHostQuestState(context,4007201)==2 then
			ScriptLib.RefreshGroup(context, { group_id = 220138002, suite = 2 }) 
			end
		
		return 0
end