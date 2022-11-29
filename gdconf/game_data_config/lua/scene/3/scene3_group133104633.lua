-- 基础信息
local base_info = {
	group_id = 133104633
}

-- Trigger变量
local defs = {
	gadget_id = 633004
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
	{ config_id = 633001, gadget_id = 70330019, pos = { x = -101.117, y = 269.419, z = 721.341 }, rot = { x = 0.000, y = 302.406, z = 0.000 }, level = 24, persistent = true, area_id = 8 },
	{ config_id = 633004, gadget_id = 70211121, pos = { x = -97.953, y = 269.419, z = 719.598 }, rot = { x = 0.000, y = 254.404, z = 0.000 }, level = 21, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1633005, name = "GADGET_STATE_CHANGE_633005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_633005", action = "action_EVENT_GADGET_STATE_CHANGE_633005", trigger_count = 0 },
	{ config_id = 1633006, name = "GADGET_STATE_CHANGE_633006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_633006" },
	{ config_id = 1633007, name = "GADGET_CREATE_633007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_633007", action = "action_EVENT_GADGET_CREATE_633007" }
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
		gadgets = { 633001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_633005", "GADGET_STATE_CHANGE_633006", "GADGET_CREATE_633007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_633005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_633005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_633006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_633007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_633007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end