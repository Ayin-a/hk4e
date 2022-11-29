-- 基础信息
local base_info = {
	group_id = 133003506
}

-- Trigger变量
local defs = {
	gadget_id = 506004
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
	{ config_id = 506001, gadget_id = 70310001, pos = { x = 2729.737, y = 260.004, z = -1210.670 }, rot = { x = 0.000, y = 328.870, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 1 },
	{ config_id = 506002, gadget_id = 70310001, pos = { x = 2727.865, y = 260.118, z = -1208.802 }, rot = { x = 0.000, y = 328.870, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 1 },
	{ config_id = 506003, gadget_id = 70310001, pos = { x = 2726.256, y = 260.274, z = -1207.185 }, rot = { x = 0.000, y = 328.870, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 506004, gadget_id = 70211111, pos = { x = 2726.585, y = 260.066, z = -1210.398 }, rot = { x = 0.646, y = 43.298, z = 7.035 }, level = 26, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1506005, name = "GADGET_STATE_CHANGE_506005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_506005", action = "action_EVENT_GADGET_STATE_CHANGE_506005", trigger_count = 0 },
	{ config_id = 1506006, name = "GADGET_STATE_CHANGE_506006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_506006" },
	{ config_id = 1506007, name = "GADGET_CREATE_506007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_506007", action = "action_EVENT_GADGET_CREATE_506007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 2, no_refresh = true }
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
		gadgets = { 506001, 506002, 506003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_506005", "GADGET_STATE_CHANGE_506006", "GADGET_CREATE_506007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_506005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_506005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_506006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_506007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_506007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end