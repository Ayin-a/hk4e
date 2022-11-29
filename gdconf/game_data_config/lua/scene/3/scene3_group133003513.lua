-- 基础信息
local base_info = {
	group_id = 133003513
}

-- Trigger变量
local defs = {
	gadget_id = 513004
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
	{ config_id = 513001, gadget_id = 70310001, pos = { x = 2350.505, y = 252.046, z = -1335.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, state = GadgetState.GearStart, persistent = true, area_id = 1 },
	{ config_id = 513002, gadget_id = 70310001, pos = { x = 2345.218, y = 253.040, z = -1339.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, state = GadgetState.GearStart, persistent = true, area_id = 1 },
	{ config_id = 513003, gadget_id = 70310001, pos = { x = 2338.604, y = 252.872, z = -1339.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 513004, gadget_id = 70211111, pos = { x = 2341.213, y = 252.454, z = -1333.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 513008, gadget_id = 70310001, pos = { x = 2334.080, y = 253.377, z = -1335.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, state = GadgetState.GearStart, persistent = true, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1513005, name = "GADGET_STATE_CHANGE_513005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_513005", action = "action_EVENT_GADGET_STATE_CHANGE_513005", trigger_count = 0 },
	{ config_id = 1513006, name = "GADGET_STATE_CHANGE_513006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_513006" },
	{ config_id = 1513007, name = "GADGET_CREATE_513007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_513007", action = "action_EVENT_GADGET_CREATE_513007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 3, no_refresh = true }
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
		gadgets = { 513001, 513002, 513003, 513008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_513005", "GADGET_STATE_CHANGE_513006", "GADGET_CREATE_513007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_513005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_513005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_513006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_513007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_513007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end