-- 基础信息
local base_info = {
	group_id = 133107205
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
	{ config_id = 205002, gadget_id = 70500000, pos = { x = -819.343, y = 251.500, z = 620.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9183, isOneoff = true, persistent = true, area_id = 7 },
	{ config_id = 205004, gadget_id = 70500000, pos = { x = -849.450, y = 213.594, z = 673.228 }, rot = { x = 26.548, y = 12.535, z = 18.496 }, level = 1, point_type = 9183, isOneoff = true, persistent = true, area_id = 8 },
	{ config_id = 205009, gadget_id = 70500000, pos = { x = -801.608, y = 247.142, z = 657.620 }, rot = { x = 350.690, y = 358.485, z = 15.146 }, level = 1, point_type = 9183, isOneoff = true, persistent = true, area_id = 7 },
	{ config_id = 205010, gadget_id = 70500000, pos = { x = -842.963, y = 239.078, z = 620.668 }, rot = { x = 5.662, y = 350.432, z = 21.963 }, level = 1, point_type = 9183, isOneoff = true, persistent = true, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1205001, name = "GATHER_205001", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_205001", action = "action_EVENT_GATHER_205001" },
	{ config_id = 1205003, name = "GATHER_205003", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_205003", action = "action_EVENT_GATHER_205003" },
	{ config_id = 1205005, name = "GROUP_REFRESH_205005", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_205005", action = "action_EVENT_GROUP_REFRESH_205005", trigger_count = 0 },
	{ config_id = 1205006, name = "VARIABLE_CHANGE_205006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_205006", action = "action_EVENT_VARIABLE_CHANGE_205006", trigger_count = 0 },
	{ config_id = 1205007, name = "VARIABLE_CHANGE_205007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_205007", action = "action_EVENT_VARIABLE_CHANGE_205007", trigger_count = 0 },
	{ config_id = 1205008, name = "GROUP_REFRESH_205008", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_205008", action = "action_EVENT_GROUP_REFRESH_205008", trigger_count = 0 },
	{ config_id = 1205011, name = "GATHER_205011", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_205011", action = "action_EVENT_GATHER_205011" },
	{ config_id = 1205012, name = "GATHER_205012", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_205012", action = "action_EVENT_GATHER_205012" },
	{ config_id = 1205013, name = "VARIABLE_CHANGE_205013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_205013", action = "action_EVENT_VARIABLE_CHANGE_205013", trigger_count = 0 },
	{ config_id = 1205014, name = "VARIABLE_CHANGE_205014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_205014", action = "action_EVENT_VARIABLE_CHANGE_205014", trigger_count = 0 },
	{ config_id = 1205015, name = "GROUP_REFRESH_205015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_205015", action = "action_EVENT_GROUP_REFRESH_205015", trigger_count = 0 },
	{ config_id = 1205016, name = "GROUP_REFRESH_205016", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_205016", action = "action_EVENT_GROUP_REFRESH_205016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "mine1", value = 0, no_refresh = true },
	{ config_id = 2, name = "mine2", value = 0, no_refresh = true },
	{ config_id = 3, name = "mine3", value = 0, no_refresh = true },
	{ config_id = 4, name = "mine4", value = 0, no_refresh = true }
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
		gadgets = { 205002, 205004, 205009, 205010 },
		regions = { },
		triggers = { "GATHER_205001", "GATHER_205003", "GROUP_REFRESH_205005", "VARIABLE_CHANGE_205006", "VARIABLE_CHANGE_205007", "GROUP_REFRESH_205008", "GATHER_205011", "GATHER_205012", "VARIABLE_CHANGE_205013", "VARIABLE_CHANGE_205014", "GROUP_REFRESH_205015", "GROUP_REFRESH_205016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_205001(context, evt)
	if 205002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_205001(context, evt)
	-- 将本组内变量名为 "mine1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "mine1", 1, 133107205) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_205003(context, evt)
	if 205004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_205003(context, evt)
	-- 将本组内变量名为 "mine2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "mine2", 1, 133107205) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_205005(context, evt)
	-- 判断变量"mine1"为1
	if ScriptLib.GetGroupVariableValue(context, "mine1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_205005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331072051") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_205006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"mine1"为1
	if ScriptLib.GetGroupVariableValue(context, "mine1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_205006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331072051") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_205007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"mine2"为1
	if ScriptLib.GetGroupVariableValue(context, "mine2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_205007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331072051") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_205008(context, evt)
	-- 判断变量"mine2"为1
	if ScriptLib.GetGroupVariableValue(context, "mine2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_205008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331072051") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_205011(context, evt)
	if 205009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_205011(context, evt)
	-- 将本组内变量名为 "mine3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "mine3", 1, 133107205) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_205012(context, evt)
	if 205010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_205012(context, evt)
	-- 将本组内变量名为 "mine4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "mine4", 1, 133107205) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_205013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"mine3"为1
	if ScriptLib.GetGroupVariableValue(context, "mine3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_205013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331072051") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_205014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"mine4"为1
	if ScriptLib.GetGroupVariableValue(context, "mine4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_205014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331072051") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_205015(context, evt)
	-- 判断变量"mine3"为1
	if ScriptLib.GetGroupVariableValue(context, "mine3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_205015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331072051") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_205016(context, evt)
	-- 判断变量"mine4"为1
	if ScriptLib.GetGroupVariableValue(context, "mine4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_205016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331072051") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end