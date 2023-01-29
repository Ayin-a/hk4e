-- 基础信息
local base_info = {
	group_id = 133316075
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
	{ config_id = 75006, gadget_id = 70360001, pos = { x = 626.434, y = 384.510, z = 6875.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, worktop_config = { init_options = { 442 } }, area_id = 30 },
	{ config_id = 75007, gadget_id = 70360001, pos = { x = 626.294, y = 384.396, z = 6867.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, worktop_config = { init_options = { 442 } }, area_id = 30 },
	{ config_id = 75008, gadget_id = 70360001, pos = { x = 631.547, y = 385.388, z = 6875.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, worktop_config = { init_options = { 442 } }, area_id = 30 },
	{ config_id = 75009, gadget_id = 70360001, pos = { x = 632.003, y = 385.248, z = 6867.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, worktop_config = { init_options = { 442 } }, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1075010, name = "SELECT_OPTION_75010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_75010", action = "action_EVENT_SELECT_OPTION_75010" },
	{ config_id = 1075011, name = "SELECT_OPTION_75011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_75011", action = "action_EVENT_SELECT_OPTION_75011" },
	{ config_id = 1075012, name = "SELECT_OPTION_75012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_75012", action = "action_EVENT_SELECT_OPTION_75012" },
	{ config_id = 1075013, name = "SELECT_OPTION_75013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_75013", action = "action_EVENT_SELECT_OPTION_75013" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 75006, 75007, 75008, 75009 },
		regions = { },
		triggers = { "SELECT_OPTION_75010", "SELECT_OPTION_75011", "SELECT_OPTION_75012", "SELECT_OPTION_75013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_75010(context, evt)
	-- 判断是gadgetid 75006 option_id 442
	if 75006 ~= evt.param1 then
		return false	
	end
	
	if 442 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_75010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7328513") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_75011(context, evt)
	-- 判断是gadgetid 75007 option_id 442
	if 75007 ~= evt.param1 then
		return false	
	end
	
	if 442 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_75011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7328514") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_75012(context, evt)
	-- 判断是gadgetid 75008 option_id 442
	if 75008 ~= evt.param1 then
		return false	
	end
	
	if 442 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_75012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7328515") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_75013(context, evt)
	-- 判断是gadgetid 75009 option_id 442
	if 75009 ~= evt.param1 then
		return false	
	end
	
	if 442 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_75013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7328516") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end