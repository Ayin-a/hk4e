-- 基础信息
local base_info = {
	group_id = 111101310
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
	{ config_id = 310001, gadget_id = 70900039, pos = { x = 2230.382, y = 249.302, z = -1621.237 }, rot = { x = 10.589, y = 0.414, z = 4.467 }, level = 1, persistent = true },
	{ config_id = 310002, gadget_id = 70900039, pos = { x = 2224.588, y = 249.305, z = -1621.194 }, rot = { x = 8.880, y = 0.070, z = 0.895 }, level = 1, persistent = true },
	{ config_id = 310003, gadget_id = 70900039, pos = { x = 2229.789, y = 248.479, z = -1616.523 }, rot = { x = 6.242, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 310004, gadget_id = 70900039, pos = { x = 2224.668, y = 248.486, z = -1616.967 }, rot = { x = 14.035, y = 0.110, z = 0.895 }, level = 1, persistent = true },
	{ config_id = 310010, gadget_id = 70211001, pos = { x = 2227.034, y = 249.088, z = -1619.340 }, rot = { x = 5.634, y = 359.903, z = 0.865 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1310005, name = "GADGET_STATE_CHANGE_310005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_310005", action = "action_EVENT_GADGET_STATE_CHANGE_310005", trigger_count = 0 },
	{ config_id = 1310006, name = "GADGET_STATE_CHANGE_310006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_310006", action = "action_EVENT_GADGET_STATE_CHANGE_310006" },
	{ config_id = 1310007, name = "GADGET_STATE_CHANGE_310007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_310007", action = "action_EVENT_GADGET_STATE_CHANGE_310007" },
	{ config_id = 1310008, name = "GADGET_STATE_CHANGE_310008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_310008", action = "action_EVENT_GADGET_STATE_CHANGE_310008" },
	{ config_id = 1310009, name = "VARIABLE_CHANGE_310009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_310009", action = "action_EVENT_VARIABLE_CHANGE_310009", trigger_count = 4 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Count", value = 0, no_refresh = true }
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
		gadgets = { 310001, 310002, 310003, 310004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_310005", "GADGET_STATE_CHANGE_310006", "GADGET_STATE_CHANGE_310007", "GADGET_STATE_CHANGE_310008", "VARIABLE_CHANGE_310009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_310005(context, evt)
	if 310001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_310005(context, evt)
	-- 针对当前group内变量名为 "Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_310006(context, evt)
	if 310002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_310006(context, evt)
	-- 针对当前group内变量名为 "Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_310007(context, evt)
	if 310003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_310007(context, evt)
	-- 针对当前group内变量名为 "Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_310008(context, evt)
	if 310004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_310008(context, evt)
	-- 针对当前group内变量名为 "Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_310009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Count"为4
	if ScriptLib.GetGroupVariableValue(context, "Count") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_310009(context, evt)
	-- 创建id为310010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 310010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end