-- 基础信息
local base_info = {
	group_id = 133308009
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
	{ config_id = 9001, gadget_id = 71700288, pos = { x = -1442.965, y = 82.637, z = 4725.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 },
	{ config_id = 9002, gadget_id = 70360286, pos = { x = -1443.005, y = 82.626, z = 4725.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1009003, name = "GADGET_CREATE_9003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9003", action = "action_EVENT_GADGET_CREATE_9003", trigger_count = 0 },
	{ config_id = 1009004, name = "SELECT_OPTION_9004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9004", action = "action_EVENT_SELECT_OPTION_9004", trigger_count = 0 }
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
		gadgets = { 9001, 9002 },
		regions = { },
		triggers = { "GADGET_CREATE_9003", "SELECT_OPTION_9004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_9003(context, evt)
	if 9001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308009, 9002, {75}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9004(context, evt)
	-- 判断是gadgetid 9002 option_id 75
	if 9002 ~= evt.param1 then
		return false	
	end
	
	if 75 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7305509") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end