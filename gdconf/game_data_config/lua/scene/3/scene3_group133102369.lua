-- 基础信息
local base_info = {
	group_id = 133102369
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
	{ config_id = 369001, gadget_id = 70310011, pos = { x = 1554.767, y = 214.071, z = 238.368 }, rot = { x = 359.833, y = 216.820, z = 0.001 }, level = 1, persistent = true, area_id = 5 },
	{ config_id = 369002, gadget_id = 70310011, pos = { x = 1558.385, y = 213.891, z = 229.866 }, rot = { x = 359.314, y = 217.183, z = 359.333 }, level = 1, persistent = true, area_id = 5 },
	{ config_id = 369003, gadget_id = 70310011, pos = { x = 1550.446, y = 213.918, z = 229.167 }, rot = { x = 359.216, y = 216.817, z = 0.004 }, level = 1, persistent = true, area_id = 5 },
	{ config_id = 369011, gadget_id = 70211111, pos = { x = 1554.753, y = 212.701, z = 229.591 }, rot = { x = 1.714, y = 337.871, z = 357.120 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1369004, name = "GADGET_STATE_CHANGE_369004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369004", action = "action_EVENT_GADGET_STATE_CHANGE_369004", trigger_count = 0 },
	{ config_id = 1369005, name = "GADGET_STATE_CHANGE_369005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369005", action = "action_EVENT_GADGET_STATE_CHANGE_369005", trigger_count = 0 },
	{ config_id = 1369006, name = "GADGET_STATE_CHANGE_369006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369006", action = "action_EVENT_GADGET_STATE_CHANGE_369006", trigger_count = 0 },
	{ config_id = 1369007, name = "GADGET_STATE_CHANGE_369007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369007", action = "action_EVENT_GADGET_STATE_CHANGE_369007", trigger_count = 0 },
	{ config_id = 1369008, name = "GADGET_STATE_CHANGE_369008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369008", action = "action_EVENT_GADGET_STATE_CHANGE_369008", trigger_count = 0 },
	{ config_id = 1369009, name = "GADGET_STATE_CHANGE_369009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369009", action = "action_EVENT_GADGET_STATE_CHANGE_369009", trigger_count = 0 },
	{ config_id = 1369010, name = "VARIABLE_CHANGE_369010", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_369010", action = "action_EVENT_VARIABLE_CHANGE_369010" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true }
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
		gadgets = { 369001, 369002, 369003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_369004", "GADGET_STATE_CHANGE_369005", "GADGET_STATE_CHANGE_369006", "GADGET_STATE_CHANGE_369007", "GADGET_STATE_CHANGE_369008", "GADGET_STATE_CHANGE_369009", "VARIABLE_CHANGE_369010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_369004(context, evt)
	if 369002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_369004(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_369005(context, evt)
	if 369002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_369005(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_369006(context, evt)
	if 369001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_369006(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_369007(context, evt)
	if 369001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_369007(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_369008(context, evt)
	if 369003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_369008(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_369009(context, evt)
	if 369003 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_369009(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_369010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_369010(context, evt)
	-- 创建id为369011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 369011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end