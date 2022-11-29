-- 基础信息
local base_info = {
	group_id = 133107111
}

-- Trigger变量
local defs = {
	gadget_id = 111004
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
	{ config_id = 111001, gadget_id = 70330019, pos = { x = -663.216, y = 305.548, z = 596.128 }, rot = { x = 0.000, y = 61.045, z = 0.000 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 111002, gadget_id = 70330019, pos = { x = -680.793, y = 305.898, z = 591.505 }, rot = { x = 2.713, y = 86.778, z = 358.664 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 111003, gadget_id = 70330019, pos = { x = -676.573, y = 309.029, z = 612.795 }, rot = { x = 359.258, y = 30.299, z = 356.963 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 111004, gadget_id = 70211121, pos = { x = -668.192, y = 307.247, z = 620.123 }, rot = { x = 0.683, y = 181.123, z = 3.051 }, level = 21, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1111005, name = "GADGET_STATE_CHANGE_111005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_111005", action = "action_EVENT_GADGET_STATE_CHANGE_111005", trigger_count = 0 },
	{ config_id = 1111006, name = "GADGET_STATE_CHANGE_111006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_111006" },
	{ config_id = 1111007, name = "GADGET_CREATE_111007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_111007", action = "action_EVENT_GADGET_CREATE_111007" }
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
		gadgets = { 111001, 111002, 111003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_111005", "GADGET_STATE_CHANGE_111006", "GADGET_CREATE_111007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_111005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_111005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_111006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_111007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_111007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end