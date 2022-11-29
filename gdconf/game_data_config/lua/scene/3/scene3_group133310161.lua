-- 基础信息
local base_info = {
	group_id = 133310161
}

-- Trigger变量
local defs = {
	gadget_id = 161004
}

-- DEFS_MISCS
local markList = {161001,161002,161003,161008}

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
	{ config_id = 161001, gadget_id = 70330411, pos = { x = -2390.126, y = 121.972, z = 4951.414 }, rot = { x = 0.000, y = 294.665, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 161002, gadget_id = 70330411, pos = { x = -2376.509, y = 121.921, z = 4960.432 }, rot = { x = 0.000, y = 0.000, z = 24.618 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 161003, gadget_id = 70330411, pos = { x = -2385.563, y = 122.474, z = 4960.960 }, rot = { x = 334.955, y = 21.618, z = 316.889 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 161004, gadget_id = 70211111, pos = { x = -2380.953, y = 121.972, z = 4958.140 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 161008, gadget_id = 70330411, pos = { x = -2371.979, y = 121.972, z = 4951.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1161005, name = "GADGET_STATE_CHANGE_161005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_161005", action = "action_EVENT_GADGET_STATE_CHANGE_161005", trigger_count = 0 },
	{ config_id = 1161006, name = "GADGET_STATE_CHANGE_161006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_161006" },
	{ config_id = 1161007, name = "GADGET_CREATE_161007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_161007", action = "action_EVENT_GADGET_CREATE_161007" }
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
		gadgets = { 161001, 161002, 161003, 161008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_161005", "GADGET_STATE_CHANGE_161006", "GADGET_CREATE_161007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_161005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_161005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_161006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_161007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_161007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Transparent_Mark"