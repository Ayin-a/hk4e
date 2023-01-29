-- 基础信息
local base_info = {
	group_id = 199002106
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
	-- 夜鸦乘务员
	{ config_id = 106001, gadget_id = 70310332, pos = { x = 496.968, y = 194.939, z = -427.640 }, rot = { x = 0.000, y = 341.674, z = 0.000 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 106004, gadget_id = 70330296, pos = { x = 496.968, y = 194.939, z = -427.640 }, rot = { x = 0.000, y = 341.674, z = 0.000 }, level = 1, interact_id = 128, area_id = 401 },
	{ config_id = 106008, gadget_id = 70690011, pos = { x = 507.762, y = 181.713, z = -421.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106009, gadget_id = 70690001, pos = { x = 504.955, y = 204.298, z = -422.917 }, rot = { x = 270.160, y = 169.031, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106010, gadget_id = 70690011, pos = { x = 507.762, y = 189.940, z = -421.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106011, gadget_id = 70690001, pos = { x = 504.959, y = 212.298, z = -422.939 }, rot = { x = 270.158, y = 169.016, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106014, gadget_id = 70690001, pos = { x = 507.578, y = 201.022, z = -422.296 }, rot = { x = 346.447, y = 85.732, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106015, gadget_id = 70690001, pos = { x = 517.397, y = 202.768, z = -421.563 }, rot = { x = 348.005, y = 85.732, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106016, gadget_id = 70690001, pos = { x = 527.216, y = 204.515, z = -420.830 }, rot = { x = 344.060, y = 85.732, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106017, gadget_id = 70690001, pos = { x = 537.034, y = 206.261, z = -420.098 }, rot = { x = 356.641, y = 95.129, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106018, gadget_id = 70690001, pos = { x = 546.981, y = 206.174, z = -420.990 }, rot = { x = 0.233, y = 95.539, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106019, gadget_id = 70690001, pos = { x = 556.933, y = 206.005, z = -421.956 }, rot = { x = 0.969, y = 95.539, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106020, gadget_id = 70690001, pos = { x = 504.963, y = 220.298, z = -422.961 }, rot = { x = 270.160, y = 169.031, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106021, gadget_id = 70690001, pos = { x = 504.967, y = 228.298, z = -422.982 }, rot = { x = 270.160, y = 169.031, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106022, gadget_id = 70690001, pos = { x = 504.972, y = 236.298, z = -423.004 }, rot = { x = 270.158, y = 169.016, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106023, gadget_id = 70690001, pos = { x = 504.976, y = 244.298, z = -423.026 }, rot = { x = 270.160, y = 169.031, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106024, gadget_id = 70690001, pos = { x = 504.980, y = 252.298, z = -423.047 }, rot = { x = 270.158, y = 169.016, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106025, gadget_id = 70690001, pos = { x = 504.984, y = 260.298, z = -423.069 }, rot = { x = 270.160, y = 169.031, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106026, gadget_id = 70690001, pos = { x = 504.988, y = 268.298, z = -423.091 }, rot = { x = 275.769, y = 147.517, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106027, gadget_id = 70690001, pos = { x = 505.400, y = 275.876, z = -423.737 }, rot = { x = 328.821, y = 146.963, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106028, gadget_id = 70690001, pos = { x = 509.131, y = 280.018, z = -429.475 }, rot = { x = 328.821, y = 146.963, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106029, gadget_id = 70690001, pos = { x = 512.863, y = 284.160, z = -435.213 }, rot = { x = 328.821, y = 146.963, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106030, gadget_id = 70690001, pos = { x = 516.594, y = 288.301, z = -440.950 }, rot = { x = 328.821, y = 146.963, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106031, gadget_id = 70690001, pos = { x = 520.325, y = 292.443, z = -446.688 }, rot = { x = 328.821, y = 146.963, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106032, gadget_id = 70690001, pos = { x = 524.057, y = 296.584, z = -452.426 }, rot = { x = 328.822, y = 146.963, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106033, gadget_id = 70690001, pos = { x = 527.788, y = 300.726, z = -458.164 }, rot = { x = 341.990, y = 145.883, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106034, gadget_id = 70690001, pos = { x = 531.901, y = 303.110, z = -464.234 }, rot = { x = 0.075, y = 144.623, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106035, gadget_id = 70690001, pos = { x = 536.533, y = 303.100, z = -470.757 }, rot = { x = 0.075, y = 144.623, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106036, gadget_id = 70690001, pos = { x = 541.164, y = 303.089, z = -477.280 }, rot = { x = 0.075, y = 144.623, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106037, gadget_id = 70690001, pos = { x = 545.796, y = 303.079, z = -483.803 }, rot = { x = 0.075, y = 144.623, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106038, gadget_id = 70690001, pos = { x = 550.427, y = 303.068, z = -490.326 }, rot = { x = 0.075, y = 144.623, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106039, gadget_id = 70690001, pos = { x = 555.059, y = 303.058, z = -496.849 }, rot = { x = 0.075, y = 144.623, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 106040, gadget_id = 70690011, pos = { x = 505.101, y = 251.985, z = -421.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初见对话后流转B点state
	{ config_id = 1106002, name = "GADGETTALK_DONE_106002", event = EventType.EVENT_GADGETTALK_DONE, source = "6800312", condition = "", action = "action_EVENT_GADGETTALK_DONE_106002", trigger_count = 0 },
	-- 交付完成后流转talkstate
	{ config_id = 1106005, name = "GADGET_STATE_CHANGE_106005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_106005", trigger_count = 0 },
	-- 选择前往B点
	{ config_id = 1106006, name = "GADGETTALK_DONE_106006", event = EventType.EVENT_GADGETTALK_DONE, source = "6800331", condition = "condition_EVENT_GADGETTALK_DONE_106006", action = "action_EVENT_GADGETTALK_DONE_106006", trigger_count = 0 },
	-- 选择前往C点
	{ config_id = 1106007, name = "GADGETTALK_DONE_106007", event = EventType.EVENT_GADGETTALK_DONE, source = "6800332", condition = "condition_EVENT_GADGETTALK_DONE_106007", action = "action_EVENT_GADGETTALK_DONE_106007", trigger_count = 0 },
	{ config_id = 1106012, name = "TIME_AXIS_PASS_106012", event = EventType.EVENT_TIME_AXIS_PASS, source = "flyb", condition = "condition_EVENT_TIME_AXIS_PASS_106012", action = "action_EVENT_TIME_AXIS_PASS_106012", trigger_count = 0 },
	{ config_id = 1106013, name = "GADGETTALK_DONE_106013", event = EventType.EVENT_GADGETTALK_DONE, source = "6800313", condition = "", action = "action_EVENT_GADGETTALK_DONE_106013", trigger_count = 0 },
	{ config_id = 1106041, name = "TIME_AXIS_PASS_106041", event = EventType.EVENT_TIME_AXIS_PASS, source = "flyc", condition = "condition_EVENT_TIME_AXIS_PASS_106041", action = "action_EVENT_TIME_AXIS_PASS_106041", trigger_count = 0 },
	{ config_id = 1106042, name = "GROUP_LOAD_106042", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_106042", trigger_count = 0 },
	{ config_id = 1106043, name = "GROUP_REFRESH_106043", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_106043", trigger_count = 0 },
	{ config_id = 1106044, name = "VARIABLE_CHANGE_106044", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_106044", action = "action_EVENT_VARIABLE_CHANGE_106044", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "startb", value = 0, no_refresh = false },
	{ config_id = 2, name = "remove", value = 0, no_refresh = false },
	{ config_id = 3, name = "put", value = 0, no_refresh = true },
	{ config_id = 4, name = "state", value = 0, no_refresh = true },
	{ config_id = 5, name = "startc", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1106003, name = "GADGETTALK_DONE_106003", event = EventType.EVENT_GADGETTALK_DONE, source = "6800312", condition = "", action = "action_EVENT_GADGETTALK_DONE_106003", trigger_count = 0 }
	}
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
		gadgets = { 106001 },
		regions = { },
		triggers = { "GADGETTALK_DONE_106002", "GADGET_STATE_CHANGE_106005", "GADGETTALK_DONE_106006", "GADGETTALK_DONE_106007", "TIME_AXIS_PASS_106012", "GADGETTALK_DONE_106013", "TIME_AXIS_PASS_106041", "GROUP_LOAD_106042", "GROUP_REFRESH_106043", "VARIABLE_CHANGE_106044" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 前往B点的航线,
		monsters = { },
		gadgets = { 106008, 106014, 106015, 106016, 106017, 106018, 106019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 前往C点的航线,
		monsters = { },
		gadgets = { 106009, 106010, 106011, 106020, 106021, 106022, 106023, 106024, 106025, 106026, 106027, 106028, 106029, 106030, 106031, 106032, 106033, 106034, 106035, 106036, 106037, 106038, 106039, 106040 },
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

-- 触发操作
function action_EVENT_GADGETTALK_DONE_106002(context, evt)
	ScriptLib.SetGroupVariableValueByGroup(context, "state", 1, 199002143)
	
	ScriptLib.SetGroupVariableValueByGroup(context, "state", 1, 199002140)
	
	ScriptLib.SetGadgetTalkByConfigId(context, 199002140, 140001, 6800315)
	
	ScriptLib.SetGadgetTalkByConfigId(context, 199002143, 143001, 6800317)
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_106005(context, evt)
	if evt.param2 == 106004 and ScriptLib.GetGadgetStateByConfigId(context, 0, 106004) == 201 then
		ScriptLib.SetGroupVariableValue(context, "put", 1)
		
		ScriptLib.SetGadgetTalkByConfigId(context, 199002106, 106001, 6800325)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGETTALK_DONE_106006(context, evt)
	-- 判断变量"startb"为0
	if ScriptLib.GetGroupVariableValue(context, "startb") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_106006(context, evt)
	-- 将本组内变量名为 "appearA" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "appearA", 1, 199002193) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 1, 199002004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 1, 199002140) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 1, 199002143) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 1, 199002148) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "startb" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "startb", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "startc" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "startc", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"flyb"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "flyb", {60}, false)
	
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002106, 2)
	
	-- 停止标识为"flyc"的时间轴
	ScriptLib.EndTimeAxis(context, "flyc")
	
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199002106, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGETTALK_DONE_106007(context, evt)
	-- 判断变量"startc"为0
	if ScriptLib.GetGroupVariableValue(context, "startc") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_106007(context, evt)
	-- 将本组内变量名为 "appearA" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "appearA", 1, 199002193) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 1, 199002004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 1, 199002140) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 1, 199002143) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 1, 199002148) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "startc" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "startc", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "startb" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "startb", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"flyc"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "flyc", {60}, false)
	
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002106, 3)
	
	-- 停止标识为"flyb"的时间轴
	ScriptLib.EndTimeAxis(context, "flyb")
	
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199002106, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_106012(context, evt)
	if "flyb" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_106012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002106, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_106013(context, evt)
	-- 创建id为106004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 106004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_106041(context, evt)
	if "flyc" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_106041(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002106, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_106042(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002106, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_106043(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "put") == 1 then
		ScriptLib.SetGadgetTalkByConfigId(context, 199002106, 106001, 6800325)
	else
		if ScriptLib.GetGroupVariableValue(context, "state") == 1 then
			ScriptLib.SetGadgetTalkByConfigId(context, 199002106, 106001, 6800313)
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_106044(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"remove"为1
	if ScriptLib.GetGroupVariableValue(context, "remove") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_106044(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002106, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end