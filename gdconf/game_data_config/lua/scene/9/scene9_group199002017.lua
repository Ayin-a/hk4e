-- 基础信息
local base_info = {
	group_id = 199002017
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
	{ config_id = 17001, gadget_id = 70360001, pos = { x = 211.999, y = 120.601, z = -174.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 17004, gadget_id = 70300118, pos = { x = 211.999, y = 120.252, z = -174.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1017002, name = "GADGET_CREATE_17002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_17002", action = "action_EVENT_GADGET_CREATE_17002", trigger_count = 0 },
	{ config_id = 1017003, name = "SELECT_OPTION_17003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_17003", action = "action_EVENT_SELECT_OPTION_17003", trigger_count = 0 }
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
		gadgets = { 17001, 17004 },
		regions = { },
		triggers = { "GADGET_CREATE_17002", "SELECT_OPTION_17003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_17002(context, evt)
	if 17001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_17002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199002017, 17001, {64}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_17003(context, evt)
	-- 判断是gadgetid 17001 option_id 64
	if 17001 ~= evt.param1 then
		return false	
	end
	
	if 64 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_17003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902113finished") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end