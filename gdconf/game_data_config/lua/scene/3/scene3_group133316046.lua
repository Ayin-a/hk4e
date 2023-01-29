-- 基础信息
local base_info = {
	group_id = 133316046
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
	{ config_id = 46001, gadget_id = 70330401, pos = { x = 442.551, y = 282.361, z = 6264.362 }, rot = { x = 35.443, y = 357.438, z = 351.995 }, level = 1, area_id = 30 },
	{ config_id = 46003, gadget_id = 70330401, pos = { x = 500.008, y = 279.710, z = 6278.012 }, rot = { x = 9.288, y = 358.528, z = 3.555 }, level = 1, area_id = 30 },
	{ config_id = 46004, gadget_id = 70330401, pos = { x = 434.141, y = 274.318, z = 6305.056 }, rot = { x = 7.161, y = 358.372, z = 12.806 }, level = 1, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1046002, name = "GADGET_STATE_CHANGE_46002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46002", action = "action_EVENT_GADGET_STATE_CHANGE_46002" },
	{ config_id = 1046005, name = "GADGET_STATE_CHANGE_46005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46005", action = "action_EVENT_GADGET_STATE_CHANGE_46005" },
	{ config_id = 1046006, name = "GADGET_STATE_CHANGE_46006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46006", action = "action_EVENT_GADGET_STATE_CHANGE_46006" },
	{ config_id = 1046007, name = "VARIABLE_CHANGE_46007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_46007", action = "action_EVENT_VARIABLE_CHANGE_46007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "start_count", value = 0, no_refresh = true }
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
		gadgets = { 46001, 46003, 46004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_46002", "GADGET_STATE_CHANGE_46005", "GADGET_STATE_CHANGE_46006", "VARIABLE_CHANGE_46007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_46002(context, evt)
	if 46001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46002(context, evt)
	-- 针对当前group内变量名为 "start_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_46005(context, evt)
	if 46003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46005(context, evt)
	-- 针对当前group内变量名为 "start_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_46006(context, evt)
	if 46004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46006(context, evt)
	-- 针对当前group内变量名为 "start_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_46007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"start_count"为3
	if ScriptLib.GetGroupVariableValue(context, "start_count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_46007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7331806") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end