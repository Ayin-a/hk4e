-- 基础信息
local base_info = {
	group_id = 133104217
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
	{ config_id = 217001, gadget_id = 70310001, pos = { x = 567.579, y = 218.594, z = 353.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 217002, gadget_id = 70310001, pos = { x = 393.652, y = 225.125, z = 350.993 }, rot = { x = 359.360, y = -0.002, z = 0.296 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 217003, gadget_id = 70310001, pos = { x = 135.424, y = 253.054, z = 243.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 217007, gadget_id = 70211111, pos = { x = 566.323, y = 209.169, z = 349.558 }, rot = { x = 0.000, y = 137.832, z = 0.000 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1217004, name = "GADGET_STATE_CHANGE_217004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_217004", action = "action_EVENT_GADGET_STATE_CHANGE_217004" },
	{ config_id = 1217005, name = "GADGET_STATE_CHANGE_217005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_217005", action = "action_EVENT_GADGET_STATE_CHANGE_217005" },
	{ config_id = 1217006, name = "GADGET_STATE_CHANGE_217006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_217006", action = "action_EVENT_GADGET_STATE_CHANGE_217006" },
	{ config_id = 1217008, name = "QUEST_FINISH_217008", event = EventType.EVENT_QUEST_FINISH, source = "2100810", condition = "", action = "" }
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
		-- description = suite_2,
		monsters = { },
		gadgets = { 217001, 217002, 217003, 217007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_217004", "GADGET_STATE_CHANGE_217005", "GADGET_STATE_CHANGE_217006", "QUEST_FINISH_217008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_217004(context, evt)
	if 217001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_217004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104217_progress1") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_217005(context, evt)
	if 217002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_217005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104217_progress2") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_217006(context, evt)
	if 217003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_217006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104217_progress3") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end