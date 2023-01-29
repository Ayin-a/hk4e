-- 基础信息
local base_info = {
	group_id = 133307490
}

-- Trigger变量
local defs = {
	gadget_id = 490004
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
	{ config_id = 490001, gadget_id = 70330335, pos = { x = -1300.671, y = 29.788, z = 5433.018 }, rot = { x = 0.139, y = 136.093, z = 336.354 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 490002, gadget_id = 70330335, pos = { x = -1298.960, y = 33.489, z = 5434.493 }, rot = { x = 13.321, y = 325.943, z = 16.502 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 490003, gadget_id = 70330335, pos = { x = -1296.488, y = 36.451, z = 5436.350 }, rot = { x = 338.239, y = 19.806, z = 353.833 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 490004, gadget_id = 70211101, pos = { x = -1289.093, y = 26.688, z = 5433.982 }, rot = { x = 0.000, y = 320.406, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1490005, name = "GADGET_STATE_CHANGE_490005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_490005", action = "action_EVENT_GADGET_STATE_CHANGE_490005", trigger_count = 0 },
	{ config_id = 1490006, name = "GADGET_STATE_CHANGE_490006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_490006" },
	{ config_id = 1490007, name = "GADGET_CREATE_490007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_490007", action = "action_EVENT_GADGET_CREATE_490007" }
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
		gadgets = { 490001, 490002, 490003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_490005", "GADGET_STATE_CHANGE_490006", "GADGET_CREATE_490007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_490005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_490005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_490006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_490007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_490007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end