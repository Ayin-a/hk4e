-- 基础信息
local base_info = {
	group_id = 133309127
}

-- Trigger变量
local defs = {
	gadget_id = 127004
}

-- DEFS_MISCS
local markList = {127001,127002,127003,127004}

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
	{ config_id = 127001, gadget_id = 70330411, pos = { x = -2673.945, y = -70.210, z = 5798.928 }, rot = { x = 0.000, y = 179.316, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 127002, gadget_id = 70330411, pos = { x = -2653.980, y = -70.210, z = 5809.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 127003, gadget_id = 70330411, pos = { x = -2683.819, y = -70.210, z = 5819.011 }, rot = { x = 0.000, y = 74.424, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 127004, gadget_id = 70330411, pos = { x = -2663.975, y = -70.210, z = 5829.011 }, rot = { x = 0.000, y = 64.839, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1127005, name = "GADGET_STATE_CHANGE_127005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_127005", action = "action_EVENT_GADGET_STATE_CHANGE_127005", trigger_count = 0 },
	{ config_id = 1127006, name = "GADGET_STATE_CHANGE_127006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_127006" },
	{ config_id = 1127007, name = "GADGET_CREATE_127007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_127007", action = "action_EVENT_GADGET_CREATE_127007" }
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
		gadgets = { 127001, 127002, 127003, 127004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_127005", "GADGET_STATE_CHANGE_127006", "GADGET_CREATE_127007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_127005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_127005(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		ScriptLib.SetGroupVariableValueByGroup(context, "unlock", 1, 133309191)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_127006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_127007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_127007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Transparent_Mark"