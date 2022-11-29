-- 基础信息
local base_info = {
	group_id = 133107032
}

-- Trigger变量
local defs = {
	gadget_id = 32004
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
	{ config_id = 32001, gadget_id = 70360005, pos = { x = -654.713, y = 308.255, z = 598.059 }, rot = { x = 0.000, y = 190.087, z = 0.000 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 32002, gadget_id = 70360005, pos = { x = -655.946, y = 308.255, z = 592.369 }, rot = { x = 0.000, y = 192.361, z = 0.000 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 32004, gadget_id = 70350004, pos = { x = -646.268, y = 313.945, z = 592.593 }, rot = { x = 0.000, y = 283.189, z = 180.000 }, level = 24, showcutscene = true, isOneoff = true, persistent = true, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1032003, name = "GADGET_STATE_CHANGE_32003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32003", action = "action_EVENT_GADGET_STATE_CHANGE_32003" },
	{ config_id = 1032005, name = "GADGET_STATE_CHANGE_32005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32005", action = "action_EVENT_GADGET_STATE_CHANGE_32005", trigger_count = 0 },
	{ config_id = 1032006, name = "GADGET_STATE_CHANGE_32006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_32006" }
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
		gadgets = { 32001, 32002, 32004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_32003", "GADGET_STATE_CHANGE_32005", "GADGET_STATE_CHANGE_32006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32003(context, evt)
	if 32004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32005(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default and evt.param3 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets-1 then
		ScriptLib.SetGadgetStateByConfigId(context, 32004, GadgetState.GearStart)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133107112, 112001, GadgetState.Default)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end