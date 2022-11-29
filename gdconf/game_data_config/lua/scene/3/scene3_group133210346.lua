-- 基础信息
local base_info = {
	group_id = 133210346
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
	{ config_id = 346001, gadget_id = 70900008, pos = { x = -3595.063, y = 203.749, z = -1151.386 }, rot = { x = 0.000, y = 240.838, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 346002, gadget_id = 70900008, pos = { x = -3620.235, y = 203.712, z = -1138.414 }, rot = { x = 0.000, y = 156.071, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 346003, gadget_id = 70900008, pos = { x = -3609.006, y = 203.746, z = -1118.685 }, rot = { x = 0.000, y = 264.814, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 346004, gadget_id = 70900008, pos = { x = -3586.426, y = 203.756, z = -1126.318 }, rot = { x = 0.000, y = 16.208, z = 0.000 }, level = 30, persistent = true, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 346001熄灭
	{ config_id = 1346005, name = "GADGET_STATE_CHANGE_346005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "346001", condition = "condition_EVENT_GADGET_STATE_CHANGE_346005", action = "action_EVENT_GADGET_STATE_CHANGE_346005", trigger_count = 0 },
	-- 346001点亮
	{ config_id = 1346006, name = "GADGET_STATE_CHANGE_346006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "346001", condition = "condition_EVENT_GADGET_STATE_CHANGE_346006", action = "action_EVENT_GADGET_STATE_CHANGE_346006", trigger_count = 0 },
	-- 346002熄灭
	{ config_id = 1346007, name = "GADGET_STATE_CHANGE_346007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "346002", condition = "condition_EVENT_GADGET_STATE_CHANGE_346007", action = "action_EVENT_GADGET_STATE_CHANGE_346007", trigger_count = 0 },
	-- 346002点亮
	{ config_id = 1346008, name = "GADGET_STATE_CHANGE_346008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "346002", condition = "condition_EVENT_GADGET_STATE_CHANGE_346008", action = "action_EVENT_GADGET_STATE_CHANGE_346008", trigger_count = 0 },
	-- 346003熄灭
	{ config_id = 1346009, name = "GADGET_STATE_CHANGE_346009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "346003", condition = "condition_EVENT_GADGET_STATE_CHANGE_346009", action = "action_EVENT_GADGET_STATE_CHANGE_346009", trigger_count = 0 },
	-- 346003点亮
	{ config_id = 1346010, name = "GADGET_STATE_CHANGE_346010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "346003", condition = "condition_EVENT_GADGET_STATE_CHANGE_346010", action = "action_EVENT_GADGET_STATE_CHANGE_346010", trigger_count = 0 },
	-- 346004熄灭
	{ config_id = 1346011, name = "GADGET_STATE_CHANGE_346011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "346004", condition = "condition_EVENT_GADGET_STATE_CHANGE_346011", action = "action_EVENT_GADGET_STATE_CHANGE_346011", trigger_count = 0 },
	-- 346004点亮
	{ config_id = 1346012, name = "GADGET_STATE_CHANGE_346012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "346004", condition = "condition_EVENT_GADGET_STATE_CHANGE_346012", action = "action_EVENT_GADGET_STATE_CHANGE_346012", trigger_count = 0 },
	-- 点亮4个
	{ config_id = 1346013, name = "VARIABLE_CHANGE_346013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_346013", action = "action_EVENT_VARIABLE_CHANGE_346013" },
	-- 346001读秒灭
	{ config_id = 1346014, name = "TIME_AXIS_PASS_346014", event = EventType.EVENT_TIME_AXIS_PASS, source = "Gadget1", condition = "condition_EVENT_TIME_AXIS_PASS_346014", action = "action_EVENT_TIME_AXIS_PASS_346014", trigger_count = 0 },
	-- 346002读秒灭
	{ config_id = 1346015, name = "TIME_AXIS_PASS_346015", event = EventType.EVENT_TIME_AXIS_PASS, source = "Gadget2", condition = "condition_EVENT_TIME_AXIS_PASS_346015", action = "action_EVENT_TIME_AXIS_PASS_346015", trigger_count = 0 },
	-- 346003读秒灭
	{ config_id = 1346016, name = "TIME_AXIS_PASS_346016", event = EventType.EVENT_TIME_AXIS_PASS, source = "Gadget3", condition = "condition_EVENT_TIME_AXIS_PASS_346016", action = "action_EVENT_TIME_AXIS_PASS_346016", trigger_count = 0 },
	-- 346004读秒灭
	{ config_id = 1346017, name = "TIME_AXIS_PASS_346017", event = EventType.EVENT_TIME_AXIS_PASS, source = "Gadget4", condition = "condition_EVENT_TIME_AXIS_PASS_346017", action = "action_EVENT_TIME_AXIS_PASS_346017", trigger_count = 0 },
	{ config_id = 1346018, name = "GROUP_LOAD_346018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_346018", action = "action_EVENT_GROUP_LOAD_346018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 346001, state = 202 },
			{ config_id = 346002, state = 202 },
			{ config_id = 346003, state = 202 },
			{ config_id = 346004, state = 202 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GROUP_LOAD_346018" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 346001, state = 901 },
			{ config_id = 346002, state = 901 },
			{ config_id = 346003, state = 901 },
			{ config_id = 346004, state = 901 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_346005", "GADGET_STATE_CHANGE_346006", "GADGET_STATE_CHANGE_346007", "GADGET_STATE_CHANGE_346008", "GADGET_STATE_CHANGE_346009", "GADGET_STATE_CHANGE_346010", "GADGET_STATE_CHANGE_346011", "GADGET_STATE_CHANGE_346012", "VARIABLE_CHANGE_346013", "TIME_AXIS_PASS_346014", "TIME_AXIS_PASS_346015", "TIME_AXIS_PASS_346016", "TIME_AXIS_PASS_346017" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 346001, state = 201 },
			{ config_id = 346002, state = 201 },
			{ config_id = 346003, state = 201 },
			{ config_id = 346004, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 4, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_346005(context, evt)
	-- 检测config_id为346001的gadget是否从GadgetState.Action02变为GadgetState.Action01
	if 346001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 or GadgetState.Action02 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_346005(context, evt)
	-- 针对当前group内变量名为 "Gadget_Count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gadget_Count", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_346006(context, evt)
	-- 检测config_id为346001的gadget是否从GadgetState.Action01变为GadgetState.Action02
	if 346001 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 or GadgetState.Action01 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_346006(context, evt)
	-- 针对当前group内变量名为 "Gadget_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gadget_Count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建标识为"Gadget1"，时间节点为{15}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Gadget1", {15}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_346007(context, evt)
	-- 检测config_id为346002的gadget是否从GadgetState.Action02变为GadgetState.Action01
	if 346002 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 or GadgetState.Action02 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_346007(context, evt)
	-- 针对当前group内变量名为 "Gadget_Count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gadget_Count", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_346008(context, evt)
	-- 检测config_id为346002的gadget是否从GadgetState.Action01变为GadgetState.Action02
	if 346002 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 or GadgetState.Action01 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_346008(context, evt)
	-- 针对当前group内变量名为 "Gadget_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gadget_Count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建标识为"Gadget2"，时间节点为{15}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Gadget2", {15}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_346009(context, evt)
	-- 检测config_id为346003的gadget是否从GadgetState.Action02变为GadgetState.Action01
	if 346003 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 or GadgetState.Action02 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_346009(context, evt)
	-- 针对当前group内变量名为 "Gadget_Count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gadget_Count", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_346010(context, evt)
	-- 检测config_id为346003的gadget是否从GadgetState.Action01变为GadgetState.Action02
	if 346003 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 or GadgetState.Action01 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_346010(context, evt)
	-- 针对当前group内变量名为 "Gadget_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gadget_Count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建标识为"Gadget3"，时间节点为{15}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Gadget3", {15}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_346011(context, evt)
	-- 检测config_id为346004的gadget是否从GadgetState.Action02变为GadgetState.Action01
	if 346004 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 or GadgetState.Action02 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_346011(context, evt)
	-- 针对当前group内变量名为 "Gadget_Count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gadget_Count", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_346012(context, evt)
	-- 检测config_id为346004的gadget是否从GadgetState.Action01变为GadgetState.Action02
	if 346004 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 or GadgetState.Action01 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_346012(context, evt)
	-- 针对当前group内变量名为 "Gadget_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gadget_Count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建标识为"Gadget4"，时间节点为{15}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Gadget4", {15}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_346013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gadget_Count"为4
	if ScriptLib.GetGroupVariableValue(context, "Gadget_Count") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_346013(context, evt)
	-- 将本组内变量名为 "WaterDown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "WaterDown", 1, 133210074) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为321007401 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 321007401, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210346, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_346014(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_346014(context, evt)
	-- 将configid为 346001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 346001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_346015(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_346015(context, evt)
	-- 将configid为 346002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 346002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_346016(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_346016(context, evt)
	-- 将configid为 346003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 346003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_346017(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_346017(context, evt)
	-- 将configid为 346004 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 346004, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_346018(context, evt)
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "successed", 133210088) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_346018(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210346, 2)
	
	return 0
end