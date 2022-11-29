-- 基础信息
local base_info = {
	group_id = 133308366
}

-- Trigger变量
local defs = {
	gadget_receiver_1 = 366001,
	gadget_receiver_2 = 366002,
	gadget_receiver_3 = 366003,
	gadget_receiver_4 = 366004
}

-- DEFS_MISCS
--接收装置列表
defs.receiverList = {
	defs.gadget_receiver_1,
	defs.gadget_receiver_2,
	defs.gadget_receiver_3,
	defs.gadget_receiver_4,
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
	-- 接收装置#1
	{ config_id = 366001, gadget_id = 70330281, pos = { x = -1480.496, y = 113.376, z = 4415.191 }, rot = { x = 0.000, y = 9.499, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	-- 接收装置#2
	{ config_id = 366002, gadget_id = 70330281, pos = { x = -1507.433, y = 113.208, z = 4421.519 }, rot = { x = 0.000, y = 278.496, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	-- 接收装置#3
	{ config_id = 366003, gadget_id = 70330281, pos = { x = -1515.452, y = 113.208, z = 4384.570 }, rot = { x = 0.000, y = 189.158, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	-- 接收装置#4
	{ config_id = 366004, gadget_id = 70330281, pos = { x = -1488.959, y = 113.373, z = 4377.713 }, rot = { x = 0.000, y = 99.986, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 同时激活起计时器
	{ config_id = 1366005, name = "GADGET_STATE_CHANGE_366005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_366005", action = "action_EVENT_GADGET_STATE_CHANGE_366005", trigger_count = 0 },
	-- 玩法完成保底
	{ config_id = 1366006, name = "GROUP_LOAD_366006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_366006", action = "action_EVENT_GROUP_LOAD_366006", trigger_count = 0 },
	-- 3s后所有依旧激活才是真正的激活
	{ config_id = 1366007, name = "TIME_AXIS_PASS_366007", event = EventType.EVENT_TIME_AXIS_PASS, source = "finish", condition = "condition_EVENT_TIME_AXIS_PASS_366007", action = "action_EVENT_TIME_AXIS_PASS_366007", trigger_count = 0 },
	-- 玩法完成表现
	{ config_id = 1366008, name = "VARIABLE_CHANGE_366008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_366008", action = "action_EVENT_VARIABLE_CHANGE_366008", trigger_count = 0 },
	-- （可魔改）玩法完成时行为
	{ config_id = 1366009, name = "VARIABLE_CHANGE_366009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_366009", action = "action_EVENT_VARIABLE_CHANGE_366009", trigger_count = 0 },
	-- 玩法完成保底
	{ config_id = 1366010, name = "GROUP_LOAD_366010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_366010", action = "action_EVENT_GROUP_LOAD_366010", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1366013, name = "VARIABLE_CHANGE_366013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_366013", action = "action_EVENT_VARIABLE_CHANGE_366013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 3,
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
		gadgets = { 366001, 366002, 366003, 366004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_366005", "GROUP_LOAD_366006", "TIME_AXIS_PASS_366007", "VARIABLE_CHANGE_366008", "VARIABLE_CHANGE_366009", "GROUP_LOAD_366010", "VARIABLE_CHANGE_366013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 起始suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 终止suite,
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
function condition_EVENT_GADGET_STATE_CHANGE_366005(context, evt)
	
	for _,v in pairs(defs.receiverList) do
	  if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308366, v) then
	    return false
	  end
	
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_366005(context, evt)
	-- 创建标识为"finish"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "finish", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_366006(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_366006(context, evt)
	-- 将本组内变量名为 "isLocked" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isLocked", 0, 133308120) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_366007(context, evt)
	if "finish" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	
	for _,v in pairs(defs.receiverList) do
	  if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308366, v) then
	    return false
	  end
	
	end
	
	return true
	
	
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_366007(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 停止标识为"finish"的时间轴
	ScriptLib.EndTimeAxis(context, "finish")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_366008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_366008(context, evt)
	for _,v in pairs(defs.receiverList)do
	  -- 改变指定group组133308366中， configid为609002的gadget的state
	  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133308366, v, GadgetState.GearAction1)then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
	  end 
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_366009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_366009(context, evt)
	-- 将本组内变量名为 "isLocked" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isLocked", 0, 133308120) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_366010(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_366010(context, evt)
	for _,v in pairs(defs.receiverList)do
	  -- 改变指定group组133308366中， configid为609002的gadget的state
	  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133308366, v, GadgetState.GearAction1)then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
	  end 
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_366013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_366013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31007, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end