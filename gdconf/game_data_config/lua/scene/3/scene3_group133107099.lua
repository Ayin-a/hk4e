-- 基础信息
local base_info = {
	group_id = 133107099
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
	{ config_id = 99001, gadget_id = 70710107, pos = { x = -549.703, y = 248.552, z = 438.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, interact_id = 5, area_id = 7 },
	{ config_id = 99002, gadget_id = 70710107, pos = { x = -551.462, y = 248.552, z = 436.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, interact_id = 5, area_id = 7 },
	{ config_id = 99003, gadget_id = 70710107, pos = { x = -553.173, y = 248.552, z = 435.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, interact_id = 5, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1099004, name = "GADGET_STATE_CHANGE_99004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_99004", action = "action_EVENT_GADGET_STATE_CHANGE_99004" },
	{ config_id = 1099005, name = "GADGET_STATE_CHANGE_99005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_99005", action = "action_EVENT_GADGET_STATE_CHANGE_99005" },
	{ config_id = 1099006, name = "GADGET_STATE_CHANGE_99006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_99006", action = "action_EVENT_GADGET_STATE_CHANGE_99006" }
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
		gadgets = { 99001, 99002, 99003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_99004", "GADGET_STATE_CHANGE_99005", "GADGET_STATE_CHANGE_99006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_99004(context, evt)
	if 99001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_99004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310709602") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_99005(context, evt)
	if 99002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_99005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310709602") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_99006(context, evt)
	if 99003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_99006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310709602") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end