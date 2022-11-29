-- 基础信息
local base_info = {
	group_id = 133105235
}

-- Trigger变量
local defs = {
	gadget_id = 235004
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
	{ config_id = 235001, gadget_id = 70360005, pos = { x = 420.745, y = 199.471, z = -168.689 }, rot = { x = 0.000, y = 134.526, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 235003, gadget_id = 70360005, pos = { x = 427.527, y = 199.524, z = -161.705 }, rot = { x = 0.000, y = 317.382, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 235004, gadget_id = 70211111, pos = { x = 423.775, y = 199.454, z = -165.759 }, rot = { x = 0.000, y = 50.095, z = 0.000 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1235002, name = "GADGET_STATE_CHANGE_235002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_235002", action = "action_EVENT_GADGET_STATE_CHANGE_235002", trigger_count = 0 },
	{ config_id = 1235005, name = "GADGET_STATE_CHANGE_235005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_235005", action = "action_EVENT_GADGET_STATE_CHANGE_235005", trigger_count = 0 },
	{ config_id = 1235006, name = "GADGET_STATE_CHANGE_235006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_235006", action = "action_EVENT_GADGET_STATE_CHANGE_235006", trigger_count = 0 },
	{ config_id = 1235007, name = "GADGET_STATE_CHANGE_235007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_235007", action = "action_EVENT_GADGET_STATE_CHANGE_235007", trigger_count = 0 },
	{ config_id = 1235008, name = "VARIABLE_CHANGE_235008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_235008", action = "action_EVENT_VARIABLE_CHANGE_235008" },
	{ config_id = 1235009, name = "GADGET_STATE_CHANGE_235009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_235009", action = "action_EVENT_GADGET_STATE_CHANGE_235009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "on", value = 0, no_refresh = true }
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
		gadgets = { 235001, 235003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_235002", "GADGET_STATE_CHANGE_235005", "GADGET_STATE_CHANGE_235006", "GADGET_STATE_CHANGE_235007", "VARIABLE_CHANGE_235008", "GADGET_STATE_CHANGE_235009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_235002(context, evt)
	if 235001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_235002(context, evt)
	-- 针对当前group内变量名为 "on" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "on", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_235005(context, evt)
	if 235003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_235005(context, evt)
	-- 针对当前group内变量名为 "on" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "on", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_235006(context, evt)
	-- 检测config_id为235001的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 235001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_235006(context, evt)
	-- 针对当前group内变量名为 "on" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "on", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_235007(context, evt)
	-- 检测config_id为235003的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 235003 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_235007(context, evt)
	-- 针对当前group内变量名为 "on" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "on", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_235008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"on"为2
	if ScriptLib.GetGroupVariableValue(context, "on") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_235008(context, evt)
	-- 创建id为235004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 235004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_235009(context, evt)
	if 235004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_235009(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end