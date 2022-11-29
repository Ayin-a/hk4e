-- 基础信息
local base_info = {
	group_id = 144004066
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
	{ config_id = 66001, gadget_id = 70900009, pos = { x = -713.454, y = 121.488, z = -14.282 }, rot = { x = 17.738, y = 359.086, z = 3.451 }, level = 1, state = GadgetState.GearStop, area_id = 103 },
	{ config_id = 66002, gadget_id = 70900039, pos = { x = -730.555, y = 122.539, z = 13.403 }, rot = { x = 327.935, y = 359.145, z = 347.195 }, level = 1, state = GadgetState.GearStop, area_id = 103 },
	{ config_id = 66003, gadget_id = 70900007, pos = { x = -718.965, y = 148.860, z = 19.746 }, rot = { x = 359.420, y = 173.558, z = 156.210 }, level = 1, state = GadgetState.GearStop, area_id = 103 },
	{ config_id = 66004, gadget_id = 70900049, pos = { x = -738.000, y = 148.877, z = -15.667 }, rot = { x = 359.659, y = 179.727, z = 179.053 }, level = 1, state = GadgetState.GearStop, area_id = 103 },
	{ config_id = 66014, gadget_id = 70900340, pos = { x = -706.654, y = 121.331, z = -14.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 66015, gadget_id = 70900340, pos = { x = -725.930, y = 120.629, z = -12.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 66016, gadget_id = 70900340, pos = { x = -717.789, y = 121.405, z = 5.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 66017, gadget_id = 70350240, pos = { x = -732.343, y = 120.624, z = 2.681 }, rot = { x = 0.000, y = 33.168, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 103 },
	{ config_id = 66018, gadget_id = 70350242, pos = { x = -723.572, y = 120.818, z = 9.245 }, rot = { x = 0.000, y = 23.896, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 103 },
	{ config_id = 66019, gadget_id = 70950076, pos = { x = -732.343, y = 124.473, z = 2.681 }, rot = { x = 0.000, y = 33.168, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	{ config_id = 66020, gadget_id = 70950078, pos = { x = -723.734, y = 124.610, z = 9.101 }, rot = { x = 0.000, y = 23.896, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	{ config_id = 66021, gadget_id = 70350243, pos = { x = -726.671, y = 120.565, z = 4.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 103 },
	{ config_id = 66022, gadget_id = 70950079, pos = { x = -726.671, y = 124.520, z = 4.662 }, rot = { x = 0.000, y = 28.758, z = 270.000 }, level = 1, state = GadgetState.GearStart, is_use_point_array = true, area_id = 103 },
	{ config_id = 66024, gadget_id = 70360001, pos = { x = -726.671, y = 120.565, z = 4.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 66031, gadget_id = 70900340, pos = { x = -691.787, y = 126.163, z = -0.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 66032, gadget_id = 70900340, pos = { x = -702.995, y = 147.219, z = 18.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1066005, name = "GADGET_STATE_CHANGE_66005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66005", action = "action_EVENT_GADGET_STATE_CHANGE_66005", trigger_count = 0 },
	-- 风方碑被激活
	{ config_id = 1066006, name = "GADGET_STATE_CHANGE_66006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66006", action = "action_EVENT_GADGET_STATE_CHANGE_66006", trigger_count = 0 },
	{ config_id = 1066007, name = "GADGET_STATE_CHANGE_66007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66007", action = "action_EVENT_GADGET_STATE_CHANGE_66007", trigger_count = 0 },
	{ config_id = 1066008, name = "GADGET_STATE_CHANGE_66008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66008", action = "action_EVENT_GADGET_STATE_CHANGE_66008", trigger_count = 0 },
	-- 冰方碑被正确顺序激活
	{ config_id = 1066009, name = "GADGET_STATE_CHANGE_66009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66009", action = "action_EVENT_GADGET_STATE_CHANGE_66009", trigger_count = 0 },
	{ config_id = 1066010, name = "GADGET_STATE_CHANGE_66010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66010", action = "action_EVENT_GADGET_STATE_CHANGE_66010", trigger_count = 0 },
	-- 火方碑被正确顺序激活
	{ config_id = 1066011, name = "GADGET_STATE_CHANGE_66011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66011", action = "action_EVENT_GADGET_STATE_CHANGE_66011", trigger_count = 0 },
	{ config_id = 1066012, name = "GADGET_STATE_CHANGE_66012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66012", action = "action_EVENT_GADGET_STATE_CHANGE_66012", trigger_count = 0 },
	-- 任务开始时重置
	{ config_id = 1066013, name = "QUEST_START_66013", event = EventType.EVENT_QUEST_START, source = "7900103", condition = "", action = "action_EVENT_QUEST_START_66013", trigger_count = 0 },
	{ config_id = 1066023, name = "GADGET_CREATE_66023", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_66023", action = "action_EVENT_GADGET_CREATE_66023", trigger_count = 0 },
	{ config_id = 1066025, name = "SELECT_OPTION_66025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_66025", action = "action_EVENT_SELECT_OPTION_66025", trigger_count = 0 },
	{ config_id = 1066026, name = "SELECT_OPTION_66026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_66026", action = "action_EVENT_SELECT_OPTION_66026", trigger_count = 0 },
	{ config_id = 1066027, name = "SELECT_OPTION_66027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_66027", action = "action_EVENT_SELECT_OPTION_66027", trigger_count = 0 },
	-- group刷新时重置状态
	{ config_id = 1066028, name = "GROUP_REFRESH_66028", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_66028", trigger_count = 0 },
	-- groupload判断是否激活过方碑，是则解锁
	{ config_id = 1066029, name = "GROUP_LOAD_66029", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_66029", action = "action_EVENT_GROUP_LOAD_66029", trigger_count = 0 },
	-- groupload判断是否完成过玩法，是则切为激活
	{ config_id = 1066030, name = "GROUP_LOAD_66030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_66030", action = "action_EVENT_GROUP_LOAD_66030", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "times", value = 0, no_refresh = false },
	{ config_id = 2, name = "correct", value = 0, no_refresh = false }
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
		gadgets = { 66001, 66002, 66003, 66004, 66014, 66015, 66016, 66017, 66018, 66019, 66020, 66021, 66022, 66024, 66031, 66032 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_66005", "GADGET_STATE_CHANGE_66006", "GADGET_STATE_CHANGE_66007", "GADGET_STATE_CHANGE_66008", "GADGET_STATE_CHANGE_66009", "GADGET_STATE_CHANGE_66010", "GADGET_STATE_CHANGE_66011", "GADGET_STATE_CHANGE_66012", "QUEST_START_66013", "GADGET_CREATE_66023", "SELECT_OPTION_66025", "SELECT_OPTION_66026", "SELECT_OPTION_66027", "GROUP_LOAD_66029", "GROUP_LOAD_66030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 66001, 66002, 66003, 66004, 66014, 66015, 66016 },
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
function condition_EVENT_GADGET_STATE_CHANGE_66005(context, evt)
	if 66001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66005(context, evt)
	-- 针对当前group内变量名为 "times" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "times", 1, 144004005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66006(context, evt)
	if 66002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66006(context, evt)
	-- 针对当前group内变量名为 "times" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "times", 1, 144004005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66007(context, evt)
	if 66003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66007(context, evt)
	-- 针对当前group内变量名为 "times" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "times", 1, 144004005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66008(context, evt)
	if 66004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66008(context, evt)
	-- 针对当前group内变量名为 "times" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "times", 1, 144004005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66009(context, evt)
	if 66001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"times"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "times", 144004005) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66009(context, evt)
	-- 针对当前group内变量名为 "correct" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "correct", 1, 144004005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66010(context, evt)
	if 66002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"times"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "times", 144004005) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66010(context, evt)
	-- 针对当前group内变量名为 "correct" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "correct", 1, 144004005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66011(context, evt)
	if 66003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"times"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "times", 144004005) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66011(context, evt)
	-- 针对当前group内变量名为 "correct" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "correct", 1, 144004005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66012(context, evt)
	if 66004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"times"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "times", 144004005) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66012(context, evt)
	-- 针对当前group内变量名为 "correct" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "correct", 1, 144004005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_66013(context, evt)
	-- 将本组内变量名为 "times" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "times", 0, 144004005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "correct" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "correct", 0, 144004005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 改变指定group组144004066中， configid为66001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_66023(context, evt)
	if 66024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_66023(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004066, 66024, {217,218,219}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_66025(context, evt)
	-- 判断是gadgetid 66024 option_id 217
	if 66024 ~= evt.param1 then
		return false	
	end
	
	if 217 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_66025(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 66022, 400400007, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_66026(context, evt)
	-- 判断是gadgetid 66024 option_id 218
	if 66024 ~= evt.param1 then
		return false	
	end
	
	if 218 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_66026(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 66022, 400400007, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_66027(context, evt)
	-- 判断是gadgetid 66024 option_id 219
	if 66024 ~= evt.param1 then
		return false	
	end
	
	if 219 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_66027(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 66022, 400400007, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_66028(context, evt)
	-- 将本组内变量名为 "times" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "times", 0, 144004005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "correct" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "correct", 0, 144004005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 改变指定group组144004066中， configid为66001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_66029(context, evt)
	-- 判断变量"interact"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "interact", 144004005) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_66029(context, evt)
	-- 将本组内变量名为 "times" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "times", 0, 144004005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "correct" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "correct", 0, 144004005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 改变指定group组144004066中， configid为66001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_66030(context, evt)
	-- 判断变量"complete"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "complete", 144004005) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_66030(context, evt)
	-- 改变指定group组144004066中， configid为66001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end