-- 基础信息
local base_info = {
	group_id = 111102014
}

-- Trigger变量
local defs = {
	group_id = 111102014,
	gadget_1 = 14001,
	gadget_2 = 14002,
	gadget_3 = 14003,
	gadget_4 = 14004
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
	{ config_id = 14001, gadget_id = 70900008, pos = { x = 1265.484, y = 315.028, z = -2005.968 }, rot = { x = 0.000, y = 330.800, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 14002, gadget_id = 70900008, pos = { x = 1275.784, y = 315.028, z = -2001.168 }, rot = { x = 0.000, y = 329.000, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 14003, gadget_id = 70900008, pos = { x = 1268.584, y = 315.028, z = -1998.968 }, rot = { x = 0.000, y = 59.100, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 14004, gadget_id = 70211111, pos = { x = 1270.784, y = 315.028, z = -2003.268 }, rot = { x = 0.000, y = 330.500, z = 0.000 }, level = 11, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 14005, gadget_id = 70900008, pos = { x = 1272.584, y = 315.028, z = -2007.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 变量达到4  添加suite2 生成宝箱
	{ config_id = 1014006, name = "VARIABLE_CHANGE_14006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_14006", action = "action_EVENT_VARIABLE_CHANGE_14006" },
	-- 方碑14001状态改变  参数加1 并开启计时器1   10s后触发evt
	{ config_id = 1014009, name = "GADGET_STATE_CHANGE_14009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14009", action = "action_EVENT_GADGET_STATE_CHANGE_14009" },
	-- 任意一个计时器到达10s    变量-1
	{ config_id = 1014010, name = "TIME_AXIS_PASS_14010", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS_14010", trigger_count = 0 },
	-- 方碑14002状态改变  参数加1 并开启计时器2   10s后触发evt
	{ config_id = 1014011, name = "GADGET_STATE_CHANGE_14011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14011", action = "action_EVENT_GADGET_STATE_CHANGE_14011" },
	-- 方碑14003状态改变  参数加1 并开启计时器3   10s后触发evt
	{ config_id = 1014012, name = "GADGET_STATE_CHANGE_14012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14012", action = "action_EVENT_GADGET_STATE_CHANGE_14012" },
	-- 方碑14004状态改变  参数加1 并开启计时器4  10s后触发evt
	{ config_id = 1014013, name = "GADGET_STATE_CHANGE_14013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14013", action = "action_EVENT_GADGET_STATE_CHANGE_14013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "active_count", value = 0, no_refresh = false }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 14001, 14002, 14003, 14005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_14006", "GADGET_STATE_CHANGE_14009", "TIME_AXIS_PASS_14010", "GADGET_STATE_CHANGE_14011", "GADGET_STATE_CHANGE_14012", "GADGET_STATE_CHANGE_14013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 14004 },
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
function condition_EVENT_VARIABLE_CHANGE_14006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"active_count"为4
	if ScriptLib.GetGroupVariableValue(context, "active_count") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_14006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111102014, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14009(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_1)
	  then
		return false
	end
	return true 
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14009(context, evt)
	-- 创建标识为"timer1"，时间节点为{10}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer1", {10}, false)
	
	
	-- 针对当前group内变量名为 "active_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "active_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_14010(context, evt)
	if "timer1" == evt.source_name or "timer2" == evt.source_name or "timer3" == evt.source_name or "timer4" == evt.source_name then
		if 1 == evt.param1 then
			ScriptLib.ChangeGroupVariableValue(context, "active_count", -1)
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14011(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_2)
	  then
		return false
	end
	return true 
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14011(context, evt)
	-- 创建标识为"timer2"，时间节点为{10}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer2", {10}, false)
	
	
	-- 针对当前group内变量名为 "active_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "active_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14012(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_3)
	  then
		return false
	end
	return true 
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14012(context, evt)
	-- 创建标识为"timer3"，时间节点为{10}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer3", {10}, false)
	
	
	-- 针对当前group内变量名为 "active_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "active_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14013(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_4)
	  then
		return false
	end
	return true 
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14013(context, evt)
	-- 创建标识为"timer4"，时间节点为{10}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer4", {10}, false)
	
	
	-- 针对当前group内变量名为 "active_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "active_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end