-- 基础信息
local base_info = {
	group_id = 133220102
}

-- Trigger变量
local defs = {
	gadget_id = 102004
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
	{ config_id = 102001, gadget_id = 70900008, pos = { x = -2470.364, y = 220.279, z = -4109.400 }, rot = { x = 0.984, y = 335.102, z = 0.041 }, level = 32, persistent = true, area_id = 11 },
	{ config_id = 102004, gadget_id = 70211111, pos = { x = -2473.277, y = 221.492, z = -4114.865 }, rot = { x = 13.534, y = 335.326, z = 353.411 }, level = 26, drop_tag = "解谜中级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1102005, name = "GADGET_STATE_CHANGE_102005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_102005", action = "action_EVENT_GADGET_STATE_CHANGE_102005", trigger_count = 0 },
	{ config_id = 1102006, name = "GADGET_STATE_CHANGE_102006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_102006" },
	{ config_id = 1102007, name = "GADGET_CREATE_102007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_102007", action = "action_EVENT_GADGET_CREATE_102007" }
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
		gadgets = { 102001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_102005", "GADGET_STATE_CHANGE_102006", "GADGET_CREATE_102007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_102005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_102005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_102006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_102007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_102007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end