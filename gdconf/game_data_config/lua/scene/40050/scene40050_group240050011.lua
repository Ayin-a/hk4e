-- 基础信息
local base_info = {
	group_id = 240050011
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
	{ config_id = 11001, gadget_id = 70360122, pos = { x = 23.605, y = 55.824, z = -81.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, interact_id = 76 },
	{ config_id = 11002, gadget_id = 70350293, pos = { x = 23.644, y = 55.850, z = -81.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 43, is_use_point_array = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1011003, name = "GADGET_STATE_CHANGE_11003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11003", action = "action_EVENT_GADGET_STATE_CHANGE_11003", trigger_count = 0 },
	{ config_id = 1011004, name = "GADGET_STATE_CHANGE_11004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11004", action = "action_EVENT_GADGET_STATE_CHANGE_11004", trigger_count = 0 },
	{ config_id = 1011005, name = "GADGET_STATE_CHANGE_11005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11005", action = "action_EVENT_GADGET_STATE_CHANGE_11005", trigger_count = 0 },
	{ config_id = 1011006, name = "TIME_AXIS_PASS_11006", event = EventType.EVENT_TIME_AXIS_PASS, source = "opendoor", condition = "condition_EVENT_TIME_AXIS_PASS_11006", action = "action_EVENT_TIME_AXIS_PASS_11006", trigger_count = 0 },
	{ config_id = 1011007, name = "GROUP_LOAD_11007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_11007", action = "action_EVENT_GROUP_LOAD_11007", trigger_count = 0 },
	{ config_id = 1011008, name = "VARIABLE_CHANGE_11008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_11008", action = "action_EVENT_VARIABLE_CHANGE_11008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = true },
	{ config_id = 2, name = "opendoor", value = 0, no_refresh = true }
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
		gadgets = { 11002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_11003", "GADGET_STATE_CHANGE_11004", "GADGET_STATE_CHANGE_11005", "TIME_AXIS_PASS_11006", "GROUP_LOAD_11007", "VARIABLE_CHANGE_11008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 11001, 11002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_11003", "GADGET_STATE_CHANGE_11004", "GADGET_STATE_CHANGE_11005", "TIME_AXIS_PASS_11006", "VARIABLE_CHANGE_11008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11003(context, evt)
	-- 检测config_id为11002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11003(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 11002, 1, {1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 创建标识为"opendoor"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "opendoor", {3}, false)
	
	
	-- 针对当前group内变量名为 "opendoor" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "opendoor", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11004(context, evt)
	if 11001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11004(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11005(context, evt)
	-- 检测config_id为11002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"open"为0
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11005(context, evt)
	-- 调用提示id为 500660214 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 500660214) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_11006(context, evt)
	if "opendoor" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_11006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7226615") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_11007(context, evt)
	-- 判断变量"opendoor"为1
	if ScriptLib.GetGroupVariableValue(context, "opendoor") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_11007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7226615") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_11008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11008(context, evt)
	-- 将configid为 11001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end