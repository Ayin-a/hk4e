-- 基础信息
local base_info = {
	group_id = 133008557
}

-- Trigger变量
local defs = {
	gadget_id = 557004
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
	{ config_id = 557001, gadget_id = 70310034, pos = { x = 1092.006, y = 388.478, z = -964.805 }, rot = { x = 0.087, y = 0.000, z = 359.840 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 557002, gadget_id = 70310034, pos = { x = 1094.901, y = 387.405, z = -978.371 }, rot = { x = 4.033, y = 0.029, z = 356.987 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 557003, gadget_id = 70310034, pos = { x = 1104.539, y = 388.493, z = -960.059 }, rot = { x = 355.702, y = 359.948, z = 1.397 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 557004, gadget_id = 70217007, pos = { x = 1098.846, y = 388.251, z = -967.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 2002200, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true, autopick = true, area_id = 10 },
	{ config_id = 557008, gadget_id = 70310034, pos = { x = 1108.850, y = 388.519, z = -969.679 }, rot = { x = 359.094, y = 359.886, z = 354.646 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1557005, name = "GADGET_STATE_CHANGE_557005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_557005", action = "action_EVENT_GADGET_STATE_CHANGE_557005", trigger_count = 0 },
	{ config_id = 1557006, name = "GADGET_STATE_CHANGE_557006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_557006" },
	{ config_id = 1557007, name = "GADGET_CREATE_557007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_557007", action = "action_EVENT_GADGET_CREATE_557007" },
	{ config_id = 1557009, name = "GADGET_STATE_CHANGE_557009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_557009", action = "action_EVENT_GADGET_STATE_CHANGE_557009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true },
	{ config_id = 2, name = "cutscenePlayed", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 557001, 557002, 557003, 557008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_557005", "GADGET_STATE_CHANGE_557006", "GADGET_CREATE_557007", "GADGET_STATE_CHANGE_557009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_557005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == 4 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_557005(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	
		
	
	if ScriptLib.GetGroupVariableValue(context, "start") == 4 
	then
		if ScriptLib.GetGroupVariableValue(context, "cutscenePlayed") == 0 
		then
			ScriptLib.PlayCutScene(context, 3008523, 0)
			ScriptLib.SetGroupVariableValue(context, "cutscenePlayed", 1)
		end	
		ScriptLib.CreateGadget(context, { config_id = defs.gadget_id })
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_557006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_557007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_557007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_557009(context, evt)
	if 557004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_557009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end