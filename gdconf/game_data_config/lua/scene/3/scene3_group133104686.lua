-- 基础信息
local base_info = {
	group_id = 133104686
}

-- Trigger变量
local defs = {
	gadget_id = 686004
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
	{ config_id = 686001, gadget_id = 70330019, pos = { x = 24.734, y = 235.631, z = 694.011 }, rot = { x = 359.738, y = 0.197, z = 2.079 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 686002, gadget_id = 70330019, pos = { x = 18.958, y = 235.834, z = 695.246 }, rot = { x = 350.821, y = 53.956, z = 354.824 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 686004, gadget_id = 70211112, pos = { x = 22.732, y = 236.542, z = 696.875 }, rot = { x = 11.450, y = 185.116, z = 358.931 }, level = 16, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1686005, name = "GADGET_STATE_CHANGE_686005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_686005", action = "action_EVENT_GADGET_STATE_CHANGE_686005", trigger_count = 0 },
	{ config_id = 1686006, name = "GADGET_STATE_CHANGE_686006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_686006" },
	{ config_id = 1686007, name = "GADGET_CREATE_686007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_686007", action = "action_EVENT_GADGET_CREATE_686007" }
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
		gadgets = { 686001, 686002, 686004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_686005", "GADGET_STATE_CHANGE_686006", "GADGET_CREATE_686007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_686005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_686005(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets-1 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id, GadgetState.Default)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_686006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_686007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_686007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将configid为 0 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 0, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end