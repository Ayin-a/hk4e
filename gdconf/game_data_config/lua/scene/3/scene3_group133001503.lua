-- 基础信息
local base_info = {
	group_id = 133001503
}

-- Trigger变量
local defs = {
	gadget_id = 503004
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
	{ config_id = 503001, gadget_id = 70300107, pos = { x = 1251.409, y = 311.738, z = -1292.767 }, rot = { x = 0.000, y = 292.723, z = 0.000 }, level = 32, persistent = true, area_id = 2 },
	{ config_id = 503002, gadget_id = 70300107, pos = { x = 1252.398, y = 312.457, z = -1300.536 }, rot = { x = 0.000, y = 68.467, z = 0.000 }, level = 32, persistent = true, area_id = 2 },
	{ config_id = 503003, gadget_id = 70300107, pos = { x = 1243.455, y = 312.178, z = -1296.031 }, rot = { x = 0.000, y = 46.873, z = 0.000 }, level = 32, persistent = true, area_id = 10 },
	{ config_id = 503004, gadget_id = 70211111, pos = { x = 1248.783, y = 312.206, z = -1296.456 }, rot = { x = 5.356, y = 359.958, z = 359.105 }, level = 6, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1503005, name = "GADGET_STATE_CHANGE_503005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_503005", action = "action_EVENT_GADGET_STATE_CHANGE_503005", trigger_count = 0 },
	{ config_id = 1503006, name = "GADGET_STATE_CHANGE_503006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_503006" },
	{ config_id = 1503007, name = "GADGET_CREATE_503007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_503007", action = "action_EVENT_GADGET_CREATE_503007" }
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
		gadgets = { 503001, 503002, 503003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_503005", "GADGET_STATE_CHANGE_503006", "GADGET_CREATE_503007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_503005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_503005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_503006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_503007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_503007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end