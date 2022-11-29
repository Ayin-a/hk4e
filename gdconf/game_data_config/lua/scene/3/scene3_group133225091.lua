-- 基础信息
local base_info = {
	group_id = 133225091
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
	{ config_id = 91002, gadget_id = 70230052, pos = { x = -6337.317, y = 260.878, z = -2536.196 }, rot = { x = 79.368, y = 144.227, z = 57.231 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 91003, gadget_id = 70230054, pos = { x = -6337.140, y = 260.038, z = -2536.411 }, rot = { x = 324.897, y = 343.556, z = 297.694 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 91004, gadget_id = 70230057, pos = { x = -6336.546, y = 256.243, z = -2537.198 }, rot = { x = 70.870, y = 165.802, z = 97.747 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 91005, gadget_id = 70230055, pos = { x = -6336.451, y = 257.637, z = -2536.882 }, rot = { x = 80.607, y = 71.121, z = 343.955 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 91006, gadget_id = 70230056, pos = { x = -6336.965, y = 258.851, z = -2536.801 }, rot = { x = 58.346, y = 111.503, z = 25.560 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 显示符文2
	{ config_id = 1091001, name = "TIME_AXIS_PASS_91001", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_91001", action = "action_EVENT_TIME_AXIS_PASS_91001", trigger_count = 11 },
	{ config_id = 1091007, name = "VARIABLE_CHANGE_91007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_91007", action = "action_EVENT_VARIABLE_CHANGE_91007" },
	{ config_id = 1091008, name = "VARIABLE_CHANGE_91008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_91008", action = "action_EVENT_VARIABLE_CHANGE_91008" },
	-- 显示符文6
	{ config_id = 1091009, name = "TIME_AXIS_PASS_91009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_91009", action = "action_EVENT_TIME_AXIS_PASS_91009" },
	{ config_id = 1091010, name = "VARIABLE_CHANGE_91010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_91010", action = "action_EVENT_VARIABLE_CHANGE_91010" },
	-- 显示符文7
	{ config_id = 1091011, name = "TIME_AXIS_PASS_91011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_91011", action = "action_EVENT_TIME_AXIS_PASS_91011", trigger_count = 0 },
	-- 显示所有符文
	{ config_id = 1091012, name = "VARIABLE_CHANGE_91012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_91012", action = "action_EVENT_VARIABLE_CHANGE_91012" },
	{ config_id = 1091013, name = "TIME_AXIS_PASS_91013", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_91013", action = "action_EVENT_TIME_AXIS_PASS_91013" },
	-- 符文创建保底
	{ config_id = 1091014, name = "GROUP_LOAD_91014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_91014", action = "action_EVENT_GROUP_LOAD_91014", trigger_count = 0 },
	-- 符文创建保底
	{ config_id = 1091015, name = "GROUP_LOAD_91015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_91015", action = "action_EVENT_GROUP_LOAD_91015", trigger_count = 0 },
	-- 符文创建保底
	{ config_id = 1091016, name = "GROUP_LOAD_91016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_91016", action = "action_EVENT_GROUP_LOAD_91016", trigger_count = 0 },
	-- 符文创建保底
	{ config_id = 1091017, name = "GROUP_LOAD_91017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_91017", action = "action_EVENT_GROUP_LOAD_91017", trigger_count = 0 },
	-- 任务结束符文隐藏
	{ config_id = 1091018, name = "QUEST_FINISH_91018", event = EventType.EVENT_QUEST_FINISH, source = "7216618", condition = "", action = "action_EVENT_QUEST_FINISH_91018" }
}

-- 变量
variables = {
	{ config_id = 1, name = "decal_finish_1", value = 0, no_refresh = true },
	{ config_id = 2, name = "decal_finish_2", value = 0, no_refresh = true },
	{ config_id = 3, name = "decal_finish_3", value = 0, no_refresh = true },
	{ config_id = 4, name = "total_progress", value = 0, no_refresh = true },
	{ config_id = 5, name = "decal_create_1", value = 0, no_refresh = true },
	{ config_id = 6, name = "decal_create_2", value = 0, no_refresh = true },
	{ config_id = 7, name = "decal_create_3", value = 0, no_refresh = true },
	{ config_id = 8, name = "decal_create_all", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		triggers = { "TIME_AXIS_PASS_91001", "VARIABLE_CHANGE_91007", "VARIABLE_CHANGE_91008", "TIME_AXIS_PASS_91009", "VARIABLE_CHANGE_91010", "TIME_AXIS_PASS_91011", "VARIABLE_CHANGE_91012", "TIME_AXIS_PASS_91013", "GROUP_LOAD_91014", "GROUP_LOAD_91015", "GROUP_LOAD_91016", "GROUP_LOAD_91017", "QUEST_FINISH_91018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 解谜完成空suit,
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
function condition_EVENT_TIME_AXIS_PASS_91001(context, evt)
	if "Decal_Start" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_91001(context, evt)
	-- 创建id为91002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "decal_create_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "decal_create_1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 停止标识为"Decal_Start"的时间轴
	ScriptLib.EndTimeAxis(context, "Decal_Start")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_91007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"decal_finish_1"为1
	if ScriptLib.GetGroupVariableValue(context, "decal_finish_1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_91007(context, evt)
	-- 针对当前group内变量名为 "total_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "total_progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建标识为"Decal_Start"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Decal_Start", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_91008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"decal_finish_2"为1
	if ScriptLib.GetGroupVariableValue(context, "decal_finish_2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_91008(context, evt)
	-- 针对当前group内变量名为 "total_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "total_progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建标识为"Decal_Start_2"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Decal_Start_2", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_91009(context, evt)
	if "Decal_Start_2" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_91009(context, evt)
	-- 创建id为91006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "decal_create_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "decal_create_2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 停止标识为"Decal_Start_2"的时间轴
	ScriptLib.EndTimeAxis(context, "Decal_Start_2")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_91010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"decal_finish_3"为1
	if ScriptLib.GetGroupVariableValue(context, "decal_finish_3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_91010(context, evt)
	-- 针对当前group内变量名为 "total_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "total_progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建标识为"Decal_Start_3"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Decal_Start_3", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_91011(context, evt)
	if "Decal_Start_3" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_91011(context, evt)
	-- 创建id为91004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "decal_create_3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "decal_create_3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 停止标识为"Decal_Start_3"的时间轴
	ScriptLib.EndTimeAxis(context, "Decal_Start_3")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_91012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"total_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "total_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_91012(context, evt)
	-- 创建标识为"Decal_Show_All"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Decal_Show_All", {4}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_91013(context, evt)
	if "Decal_Show_All" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_91013(context, evt)
	-- 将本组内变量名为 "decal_create_all" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "decal_create_all", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为91003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为91005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_91014(context, evt)
	-- 判断变量"decal_finish_1"为1
	if ScriptLib.GetGroupVariableValue(context, "decal_finish_1") ~= 1 then
			return false
	end
	
	-- 判断变量"decal_create_1"为0
	if ScriptLib.GetGroupVariableValue(context, "decal_create_1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_91014(context, evt)
	-- 创建id为91002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "decal_create_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "decal_create_1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_91015(context, evt)
	-- 判断变量"decal_finish_2"为1
	if ScriptLib.GetGroupVariableValue(context, "decal_finish_2") ~= 1 then
			return false
	end
	
	-- 判断变量"decal_create_2"为0
	if ScriptLib.GetGroupVariableValue(context, "decal_create_2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_91015(context, evt)
	-- 创建id为91006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "decal_create_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "decal_create_2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_91016(context, evt)
	-- 判断变量"decal_finish_3"为1
	if ScriptLib.GetGroupVariableValue(context, "decal_finish_3") ~= 1 then
			return false
	end
	
	-- 判断变量"decal_create_3"为0
	if ScriptLib.GetGroupVariableValue(context, "decal_create_3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_91016(context, evt)
	-- 创建id为91004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "decal_create_3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "decal_create_3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_91017(context, evt)
	-- 判断变量"decal_create_all"为0
	if ScriptLib.GetGroupVariableValue(context, "decal_create_all") ~= 0 then
			return false
	end
	
	-- 判断变量"total_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "total_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_91017(context, evt)
	-- 创建id为91003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为91005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "decal_create_all" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "decal_create_all", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_91018(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133225091, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end