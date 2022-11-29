-- 基础信息
local base_info = {
	group_id = 133001360
}

-- Trigger变量
local defs = {
	gadget_id = 360004
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
	{ config_id = 360001, gadget_id = 70310011, pos = { x = 1417.503, y = 235.860, z = -1471.948 }, rot = { x = 358.241, y = 359.836, z = 10.620 }, level = 15, persistent = true, area_id = 2 },
	{ config_id = 360002, gadget_id = 70310011, pos = { x = 1426.392, y = 238.526, z = -1453.990 }, rot = { x = 359.157, y = 359.789, z = 14.039 }, level = 15, state = GadgetState.GearStart, persistent = true, area_id = 2 },
	{ config_id = 360003, gadget_id = 70310011, pos = { x = 1407.910, y = 235.984, z = -1467.468 }, rot = { x = 350.252, y = 0.153, z = 358.210 }, level = 15, state = GadgetState.GearStart, persistent = true, area_id = 2 },
	{ config_id = 360004, gadget_id = 70211101, pos = { x = 1416.305, y = 237.562, z = -1454.991 }, rot = { x = 359.327, y = 29.703, z = 350.430 }, level = 11, drop_tag = "解谜低级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1360005, name = "GADGET_STATE_CHANGE_360005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_360005", action = "action_EVENT_GADGET_STATE_CHANGE_360005", trigger_count = 0 },
	{ config_id = 1360006, name = "GADGET_STATE_CHANGE_360006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_360006" },
	{ config_id = 1360007, name = "GADGET_CREATE_360007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_360007", action = "action_EVENT_GADGET_CREATE_360007" }
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
		gadgets = { 360001, 360002, 360003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_360005", "GADGET_STATE_CHANGE_360006", "GADGET_CREATE_360007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_360005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_360005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_360006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_360007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_360007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end