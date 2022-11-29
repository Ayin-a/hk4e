-- 基础信息
local base_info = {
	group_id = 133102777
}

-- Trigger变量
local defs = {
	gadget_id = 777004
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
	{ config_id = 777001, gadget_id = 70310011, pos = { x = 1184.914, y = 199.620, z = 262.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 777002, gadget_id = 70310011, pos = { x = 1178.204, y = 202.014, z = 260.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 777003, gadget_id = 70310011, pos = { x = 1187.659, y = 199.341, z = 268.231 }, rot = { x = 0.000, y = 0.000, z = 343.596 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 777004, gadget_id = 70211111, pos = { x = 1182.458, y = 199.894, z = 263.412 }, rot = { x = 1.935, y = 140.698, z = 7.542 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1777005, name = "GADGET_STATE_CHANGE_777005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_777005", action = "action_EVENT_GADGET_STATE_CHANGE_777005", trigger_count = 0 },
	{ config_id = 1777006, name = "GADGET_STATE_CHANGE_777006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_777006" },
	{ config_id = 1777007, name = "GADGET_CREATE_777007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_777007", action = "action_EVENT_GADGET_CREATE_777007" }
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
		gadgets = { 777001, 777002, 777003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_777005", "GADGET_STATE_CHANGE_777006", "GADGET_CREATE_777007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_777005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_777005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_777006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_777007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_777007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end