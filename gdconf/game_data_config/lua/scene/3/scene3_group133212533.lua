-- 基础信息
local base_info = {
	group_id = 133212533
}

-- Trigger变量
local defs = {
	gadget_id = 533004
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
	{ config_id = 533001, gadget_id = 70900393, pos = { x = -4220.420, y = 208.263, z = -2435.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 13 },
	{ config_id = 533002, gadget_id = 70900393, pos = { x = -4303.454, y = 205.708, z = -2458.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 13 },
	{ config_id = 533003, gadget_id = 70900393, pos = { x = -4298.785, y = 204.099, z = -2549.193 }, rot = { x = 0.000, y = 185.029, z = 0.000 }, level = 32, persistent = true, area_id = 13 },
	{ config_id = 533004, gadget_id = 70211111, pos = { x = -4245.967, y = 200.286, z = -2516.444 }, rot = { x = 0.000, y = 99.348, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 533008, gadget_id = 70900393, pos = { x = -4220.696, y = 202.355, z = -2588.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 533010, gadget_id = 70330100, pos = { x = -4245.706, y = 200.004, z = -2516.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1533005, name = "GADGET_STATE_CHANGE_533005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_533005", action = "action_EVENT_GADGET_STATE_CHANGE_533005", trigger_count = 0 },
	{ config_id = 1533006, name = "GADGET_STATE_CHANGE_533006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_533006" },
	{ config_id = 1533007, name = "GADGET_CREATE_533007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_533007", action = "action_EVENT_GADGET_CREATE_533007" },
	{ config_id = 1533009, name = "VARIABLE_CHANGE_533009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_533009", action = "action_EVENT_VARIABLE_CHANGE_533009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
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
		gadgets = { 533001, 533002, 533003, 533008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_533005", "GADGET_STATE_CHANGE_533006", "GADGET_CREATE_533007", "VARIABLE_CHANGE_533009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_533005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_533005(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		ScriptLib.CreateGadget(context, { config_id = defs.gadget_id })
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_533006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_533007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_533007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_533009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"start"为4
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_533009(context, evt)
	-- 创建id为533010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 533010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end