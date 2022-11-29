-- 基础信息
local base_info = {
	group_id = 111101234
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
	{ config_id = 234001, gadget_id = 70310001, pos = { x = 2319.089, y = 275.378, z = -1645.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 234002, gadget_id = 70310001, pos = { x = 2318.156, y = 275.548, z = -1635.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 234003, gadget_id = 70310001, pos = { x = 2305.662, y = 275.402, z = -1633.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 234004, gadget_id = 70310001, pos = { x = 2302.368, y = 277.280, z = -1645.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 234005, gadget_id = 70310001, pos = { x = 2308.855, y = 275.382, z = -1650.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 234006, gadget_id = 70211001, pos = { x = 2311.224, y = 275.456, z = -1641.566 }, rot = { x = 0.000, y = 179.592, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1234007, name = "GADGET_STATE_CHANGE_234007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_234007", action = "action_EVENT_GADGET_STATE_CHANGE_234007" },
	{ config_id = 1234008, name = "VARIABLE_CHANGE_234008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_234008", action = "action_EVENT_VARIABLE_CHANGE_234008" },
	{ config_id = 1234009, name = "GADGET_STATE_CHANGE_234009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_234009", action = "action_EVENT_GADGET_STATE_CHANGE_234009" },
	{ config_id = 1234010, name = "GADGET_STATE_CHANGE_234010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_234010", action = "action_EVENT_GADGET_STATE_CHANGE_234010" },
	{ config_id = 1234011, name = "GADGET_STATE_CHANGE_234011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_234011", action = "action_EVENT_GADGET_STATE_CHANGE_234011" },
	{ config_id = 1234012, name = "GADGET_STATE_CHANGE_234012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_234012", action = "action_EVENT_GADGET_STATE_CHANGE_234012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "litCount", value = 0, no_refresh = false }
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
		gadgets = { 234001, 234002, 234003, 234004, 234005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_234007", "VARIABLE_CHANGE_234008", "GADGET_STATE_CHANGE_234009", "GADGET_STATE_CHANGE_234010", "GADGET_STATE_CHANGE_234011", "GADGET_STATE_CHANGE_234012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 234006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_234007(context, evt)
	if 234001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_234007(context, evt)
	-- 针对当前group内变量名为 "litCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "litCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_234008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"litCount"为5
	if ScriptLib.GetGroupVariableValue(context, "litCount") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_234008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101234, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_234009(context, evt)
	if 234002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_234009(context, evt)
	-- 针对当前group内变量名为 "litCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "litCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_234010(context, evt)
	if 234003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_234010(context, evt)
	-- 针对当前group内变量名为 "litCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "litCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_234011(context, evt)
	if 234004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_234011(context, evt)
	-- 针对当前group内变量名为 "litCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "litCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_234012(context, evt)
	if 234005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_234012(context, evt)
	-- 针对当前group内变量名为 "litCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "litCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end