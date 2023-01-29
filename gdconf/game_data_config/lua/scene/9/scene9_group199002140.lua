-- 基础信息
local base_info = {
	group_id = 199002140
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
	{ config_id = 140001, gadget_id = 70310332, pos = { x = 576.344, y = 194.879, z = -421.651 }, rot = { x = 0.000, y = 172.168, z = 0.000 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 140004, gadget_id = 70330296, pos = { x = 576.344, y = 194.879, z = -421.651 }, rot = { x = 0.000, y = 172.168, z = 0.000 }, level = 1, interact_id = 128, area_id = 401 },
	{ config_id = 140010, gadget_id = 70690011, pos = { x = 564.054, y = 178.265, z = -423.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140011, gadget_id = 70690001, pos = { x = 564.533, y = 204.346, z = -423.250 }, rot = { x = 343.265, y = 266.105, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140012, gadget_id = 70690001, pos = { x = 557.322, y = 205.893, z = -423.741 }, rot = { x = 347.918, y = 266.105, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140013, gadget_id = 70690001, pos = { x = 547.566, y = 207.986, z = -424.405 }, rot = { x = 348.014, y = 266.080, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140014, gadget_id = 70690001, pos = { x = 537.809, y = 210.063, z = -425.074 }, rot = { x = 1.266, y = 262.777, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140015, gadget_id = 70690001, pos = { x = 527.891, y = 209.842, z = -426.331 }, rot = { x = 1.266, y = 262.777, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140016, gadget_id = 70690001, pos = { x = 517.973, y = 209.621, z = -427.588 }, rot = { x = 1.266, y = 262.777, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140017, gadget_id = 70690001, pos = { x = 508.786, y = 209.416, z = -428.752 }, rot = { x = 1.266, y = 262.777, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140018, gadget_id = 70690011, pos = { x = 564.230, y = 178.265, z = -423.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140019, gadget_id = 70690011, pos = { x = 567.839, y = 259.954, z = -423.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140020, gadget_id = 70690001, pos = { x = 567.079, y = 203.727, z = -423.406 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140021, gadget_id = 70690001, pos = { x = 567.079, y = 211.727, z = -423.406 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140022, gadget_id = 70690001, pos = { x = 567.079, y = 219.727, z = -423.406 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140023, gadget_id = 70690001, pos = { x = 567.079, y = 227.727, z = -423.406 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140024, gadget_id = 70690001, pos = { x = 567.079, y = 235.727, z = -423.406 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140025, gadget_id = 70690001, pos = { x = 567.079, y = 243.727, z = -423.406 }, rot = { x = 270.020, y = 0.001, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140026, gadget_id = 70690001, pos = { x = 567.079, y = 251.727, z = -423.406 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140027, gadget_id = 70690001, pos = { x = 567.079, y = 259.727, z = -423.406 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140028, gadget_id = 70690001, pos = { x = 567.079, y = 267.727, z = -423.406 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140029, gadget_id = 70690001, pos = { x = 567.079, y = 275.727, z = -423.406 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140030, gadget_id = 70690001, pos = { x = 567.079, y = 283.727, z = -423.406 }, rot = { x = 327.409, y = 181.562, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140031, gadget_id = 70690001, pos = { x = 566.920, y = 287.465, z = -429.251 }, rot = { x = 342.182, y = 181.562, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140032, gadget_id = 70690001, pos = { x = 566.712, y = 289.913, z = -436.864 }, rot = { x = 342.181, y = 181.562, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140033, gadget_id = 70690001, pos = { x = 566.504, y = 292.361, z = -444.478 }, rot = { x = 342.181, y = 181.562, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140034, gadget_id = 70690001, pos = { x = 566.297, y = 294.809, z = -452.091 }, rot = { x = 342.182, y = 181.562, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140035, gadget_id = 70690001, pos = { x = 566.089, y = 297.257, z = -459.704 }, rot = { x = 342.181, y = 181.562, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140036, gadget_id = 70690001, pos = { x = 565.881, y = 299.705, z = -467.318 }, rot = { x = 346.626, y = 178.381, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140037, gadget_id = 70690001, pos = { x = 566.101, y = 301.552, z = -475.083 }, rot = { x = 348.477, y = 177.102, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 140038, gadget_id = 70690001, pos = { x = 566.497, y = 303.150, z = -482.912 }, rot = { x = 348.477, y = 177.102, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初见后流转A点state
	{ config_id = 1140002, name = "GADGETTALK_DONE_140002", event = EventType.EVENT_GADGETTALK_DONE, source = "6800314", condition = "", action = "action_EVENT_GADGETTALK_DONE_140002", trigger_count = 0 },
	{ config_id = 1140005, name = "GADGET_STATE_CHANGE_140005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_140005", trigger_count = 0 },
	{ config_id = 1140006, name = "GADGETTALK_DONE_140006", event = EventType.EVENT_GADGETTALK_DONE, source = "6800315", condition = "", action = "action_EVENT_GADGETTALK_DONE_140006", trigger_count = 0 },
	-- 选择前往A点
	{ config_id = 1140007, name = "GADGETTALK_DONE_140007", event = EventType.EVENT_GADGETTALK_DONE, source = "6800337", condition = "condition_EVENT_GADGETTALK_DONE_140007", action = "action_EVENT_GADGETTALK_DONE_140007", trigger_count = 0 },
	-- 选择前往C点
	{ config_id = 1140008, name = "GADGETTALK_DONE_140008", event = EventType.EVENT_GADGETTALK_DONE, source = "6800339", condition = "condition_EVENT_GADGETTALK_DONE_140008", action = "action_EVENT_GADGETTALK_DONE_140008", trigger_count = 0 },
	{ config_id = 1140009, name = "GROUP_LOAD_140009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_140009", trigger_count = 0 },
	{ config_id = 1140039, name = "TIME_AXIS_PASS_140039", event = EventType.EVENT_TIME_AXIS_PASS, source = "flya", condition = "condition_EVENT_TIME_AXIS_PASS_140039", action = "action_EVENT_TIME_AXIS_PASS_140039", trigger_count = 0 },
	{ config_id = 1140040, name = "TIME_AXIS_PASS_140040", event = EventType.EVENT_TIME_AXIS_PASS, source = "flyc", condition = "condition_EVENT_TIME_AXIS_PASS_140040", action = "action_EVENT_TIME_AXIS_PASS_140040", trigger_count = 0 },
	{ config_id = 1140041, name = "GROUP_REFRESH_140041", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_140041", trigger_count = 0 },
	{ config_id = 1140042, name = "VARIABLE_CHANGE_140042", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_140042", action = "action_EVENT_VARIABLE_CHANGE_140042", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "starta", value = 0, no_refresh = false },
	{ config_id = 2, name = "startc", value = 0, no_refresh = false },
	{ config_id = 3, name = "remove", value = 0, no_refresh = false },
	{ config_id = 4, name = "put", value = 0, no_refresh = true },
	{ config_id = 5, name = "state", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1140003, name = "GADGETTALK_DONE_140003", event = EventType.EVENT_GADGETTALK_DONE, source = "6800314", condition = "", action = "action_EVENT_GADGETTALK_DONE_140003", trigger_count = 0 }
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
		gadgets = { 140001 },
		regions = { },
		triggers = { "GADGETTALK_DONE_140002", "GADGET_STATE_CHANGE_140005", "GADGETTALK_DONE_140006", "GADGETTALK_DONE_140007", "GADGETTALK_DONE_140008", "GROUP_LOAD_140009", "TIME_AXIS_PASS_140039", "TIME_AXIS_PASS_140040", "GROUP_REFRESH_140041", "VARIABLE_CHANGE_140042" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = A航线,
		monsters = { },
		gadgets = { 140010, 140011, 140012, 140013, 140014, 140015, 140016, 140017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = A航线,
		monsters = { },
		gadgets = { 140018, 140019, 140020, 140021, 140022, 140023, 140024, 140025, 140026, 140027, 140028, 140029, 140030, 140031, 140032, 140033, 140034, 140035, 140036, 140037, 140038 },
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
function action_EVENT_GADGETTALK_DONE_140002(context, evt)
	ScriptLib.SetGroupVariableValueByGroup(context, "state", 1, 199002106)
	
	ScriptLib.SetGroupVariableValueByGroup(context, "state", 1, 199002143)
	
	ScriptLib.SetGadgetTalkByConfigId(context, 199002106, 106001, 6800313)
	
	ScriptLib.SetGadgetTalkByConfigId(context, 199002143, 143001, 6800317)
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_140005(context, evt)
	if evt.param2 == 140004 and ScriptLib.GetGadgetStateByConfigId(context, 0, 140004) == 201 then
		ScriptLib.SetGroupVariableValue(context, "put", 1)
		
		ScriptLib.SetGadgetTalkByConfigId(context, 199002140, 140001, 6800326)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_140006(context, evt)
	-- 创建id为140004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 140004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGETTALK_DONE_140007(context, evt)
	-- 判断变量"starta"为0
	if ScriptLib.GetGroupVariableValue(context, "starta") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_140007(context, evt)
	-- 将本组内变量名为 "appearB" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "appearB", 1, 199002193) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 1, 199002004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 1, 199002106) then
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
	
	-- 将本组内变量名为 "starta" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "starta", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "startc" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "startc", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"flya"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "flya", {60}, false)
	
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002140, 2)
	
	-- 停止标识为"flyc"的时间轴
	ScriptLib.EndTimeAxis(context, "flyc")
	
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199002140, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGETTALK_DONE_140008(context, evt)
	-- 判断变量"startc"为0
	if ScriptLib.GetGroupVariableValue(context, "startc") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_140008(context, evt)
	-- 将本组内变量名为 "appearB" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "appearB", 1, 199002193) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 1, 199002004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "remove" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "remove", 1, 199002106) then
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
	
	-- 将本组内变量名为 "starta" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "starta", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"flyc"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "flyc", {60}, false)
	
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002140, 3)
	
	-- 停止标识为"flya"的时间轴
	ScriptLib.EndTimeAxis(context, "flya")
	
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199002140, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_140009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002140, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_140039(context, evt)
	if "flya" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_140039(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002140, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_140040(context, evt)
	if "flyc" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_140040(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002140, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_140041(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "put") == 1 then
		ScriptLib.SetGadgetTalkByConfigId(context, 199002140, 140001, 6800326)
	else
		if ScriptLib.GetGroupVariableValue(context, "state") == 1 then
			ScriptLib.SetGadgetTalkByConfigId(context, 199002140, 140001, 6800315)
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_140042(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"remove"为1
	if ScriptLib.GetGroupVariableValue(context, "remove") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_140042(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002140, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end