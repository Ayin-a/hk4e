-- 基础信息
local base_info = {
	group_id = 133308236
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
	-- a
	{ config_id = 236001, gadget_id = 70211101, pos = { x = -1461.652, y = 1.482, z = 4737.288 }, rot = { x = 0.000, y = 9.846, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	-- b
	{ config_id = 236002, gadget_id = 70211101, pos = { x = -1428.315, y = 1.522, z = 4753.629 }, rot = { x = 359.899, y = 8.642, z = -0.002 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1236003, name = "GADGET_STATE_CHANGE_236003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_236003", action = "action_EVENT_GADGET_STATE_CHANGE_236003" },
	{ config_id = 1236004, name = "GROUP_LOAD_236004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_236004", action = "action_EVENT_GROUP_LOAD_236004", trigger_count = 0 },
	{ config_id = 1236005, name = "GROUP_LOAD_236005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_236005", action = "action_EVENT_GROUP_LOAD_236005", trigger_count = 0 },
	{ config_id = 1236006, name = "GADGET_STATE_CHANGE_236006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_236006", action = "action_EVENT_GADGET_STATE_CHANGE_236006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "finisha", value = 0, no_refresh = true },
	{ config_id = 2, name = "finishb", value = 0, no_refresh = true }
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
		gadgets = { 236001, 236002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_236003", "GROUP_LOAD_236004", "GROUP_LOAD_236005", "GADGET_STATE_CHANGE_236006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_236003(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133308236, 236001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_236003(context, evt)
	-- 将本组内变量名为 "finisha" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finisha", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7329101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_236004(context, evt)
	-- 判断变量"finisha"为1
	if ScriptLib.GetGroupVariableValue(context, "finisha") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_236004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7329101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_236005(context, evt)
	-- 判断变量"finishb"为1
	if ScriptLib.GetGroupVariableValue(context, "finishb") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_236005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7329201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_236006(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133308236, 236002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_236006(context, evt)
	-- 将本组内变量名为 "finishb" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishb", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7329201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end