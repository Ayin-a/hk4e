-- 基础信息
local base_info = {
	group_id = 133225163
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
	{ config_id = 163001, gadget_id = 70230051, pos = { x = -6274.066, y = 224.494, z = -2663.283 }, rot = { x = 78.440, y = 147.055, z = 314.763 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 163002, gadget_id = 70230052, pos = { x = -6272.801, y = 224.592, z = -2663.794 }, rot = { x = 63.104, y = 58.772, z = 243.370 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 163003, gadget_id = 70230056, pos = { x = -6271.782, y = 224.865, z = -2663.832 }, rot = { x = 67.829, y = 149.968, z = 297.441 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 163004, gadget_id = 70230053, pos = { x = -6270.697, y = 225.234, z = -2664.046 }, rot = { x = 71.440, y = 132.485, z = 297.406 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 163005, gadget_id = 70230055, pos = { x = -6269.406, y = 225.527, z = -2664.542 }, rot = { x = 49.719, y = 158.012, z = 317.687 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 显示符文1
	{ config_id = 1163006, name = "TIME_AXIS_PASS_163006", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_163006", action = "action_EVENT_TIME_AXIS_PASS_163006", trigger_count = 0 },
	{ config_id = 1163007, name = "VARIABLE_CHANGE_163007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_163007", action = "action_EVENT_VARIABLE_CHANGE_163007" },
	{ config_id = 1163008, name = "VARIABLE_CHANGE_163008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_163008", action = "action_EVENT_VARIABLE_CHANGE_163008" },
	-- 显示符文2
	{ config_id = 1163009, name = "TIME_AXIS_PASS_163009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_163009", action = "action_EVENT_TIME_AXIS_PASS_163009", trigger_count = 0 },
	{ config_id = 1163010, name = "VARIABLE_CHANGE_163010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_163010", action = "action_EVENT_VARIABLE_CHANGE_163010" },
	-- 显示符文6
	{ config_id = 1163011, name = "TIME_AXIS_PASS_163011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_163011", action = "action_EVENT_TIME_AXIS_PASS_163011", trigger_count = 0 },
	-- 显示所有符文
	{ config_id = 1163012, name = "VARIABLE_CHANGE_163012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_163012", action = "action_EVENT_VARIABLE_CHANGE_163012" },
	{ config_id = 1163013, name = "TIME_AXIS_PASS_163013", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_163013", action = "action_EVENT_TIME_AXIS_PASS_163013" },
	-- 符文创建保底
	{ config_id = 1163014, name = "GROUP_LOAD_163014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_163014", action = "action_EVENT_GROUP_LOAD_163014", trigger_count = 0 },
	-- 符文创建保底
	{ config_id = 1163015, name = "GROUP_LOAD_163015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_163015", action = "action_EVENT_GROUP_LOAD_163015", trigger_count = 0 },
	-- 符文创建保底
	{ config_id = 1163016, name = "GROUP_LOAD_163016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_163016", action = "action_EVENT_GROUP_LOAD_163016", trigger_count = 0 },
	-- 符文创建保底
	{ config_id = 1163017, name = "GROUP_LOAD_163017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_163017", action = "action_EVENT_GROUP_LOAD_163017", trigger_count = 0 },
	{ config_id = 1163018, name = "TIME_AXIS_PASS_163018", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_163018", action = "action_EVENT_TIME_AXIS_PASS_163018" }
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
		triggers = { "TIME_AXIS_PASS_163006", "VARIABLE_CHANGE_163007", "VARIABLE_CHANGE_163008", "TIME_AXIS_PASS_163009", "VARIABLE_CHANGE_163010", "TIME_AXIS_PASS_163011", "VARIABLE_CHANGE_163012", "TIME_AXIS_PASS_163013", "GROUP_LOAD_163014", "GROUP_LOAD_163015", "GROUP_LOAD_163016", "GROUP_LOAD_163017", "TIME_AXIS_PASS_163018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_163006(context, evt)
	if "Decal_Start" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_163006(context, evt)
	-- 创建id为163001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 163001 }) then
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
function condition_EVENT_VARIABLE_CHANGE_163007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"decal_finish_1"为1
	if ScriptLib.GetGroupVariableValue(context, "decal_finish_1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_163007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_163008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"decal_finish_2"为1
	if ScriptLib.GetGroupVariableValue(context, "decal_finish_2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_163008(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_163009(context, evt)
	if "Decal_Start_2" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_163009(context, evt)
	-- 创建id为163002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 163002 }) then
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
function condition_EVENT_VARIABLE_CHANGE_163010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"decal_finish_3"为1
	if ScriptLib.GetGroupVariableValue(context, "decal_finish_3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_163010(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_163011(context, evt)
	if "Decal_Start_3" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_163011(context, evt)
	-- 创建id为163003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 163003 }) then
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
function condition_EVENT_VARIABLE_CHANGE_163012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"total_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "total_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_163012(context, evt)
	-- 创建标识为"Decal_Show_All"，时间节点为{4,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Decal_Show_All", {4,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_163013(context, evt)
	if "Decal_Show_All" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_163013(context, evt)
	-- 创建id为163004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 163004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_163014(context, evt)
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
function action_EVENT_GROUP_LOAD_163014(context, evt)
	-- 创建id为163001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 163001 }) then
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
function condition_EVENT_GROUP_LOAD_163015(context, evt)
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
function action_EVENT_GROUP_LOAD_163015(context, evt)
	-- 创建id为163002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 163002 }) then
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
function condition_EVENT_GROUP_LOAD_163016(context, evt)
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
function action_EVENT_GROUP_LOAD_163016(context, evt)
	-- 创建id为163003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 163003 }) then
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
function condition_EVENT_GROUP_LOAD_163017(context, evt)
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
function action_EVENT_GROUP_LOAD_163017(context, evt)
	-- 创建id为163004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 163004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为163005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 163005 }) then
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

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_163018(context, evt)
	if "Decal_Show_All" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_163018(context, evt)
	-- 将本组内变量名为 "decal_create_all" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "decal_create_all", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为163005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 163005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end