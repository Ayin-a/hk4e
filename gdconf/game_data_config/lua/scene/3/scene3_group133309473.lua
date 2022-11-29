-- 基础信息
local base_info = {
	group_id = 133309473
}

-- Trigger变量
local defs = {
	gadget_id = 473004
}

-- DEFS_MISCS
local markList = {473001,473002,473003,473008}

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
	{ config_id = 473001, gadget_id = 70330411, pos = { x = -2264.642, y = 74.209, z = 5152.615 }, rot = { x = 11.566, y = 3.617, z = 17.498 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 473002, gadget_id = 70330411, pos = { x = -2287.301, y = 74.383, z = 5145.609 }, rot = { x = 11.607, y = 357.609, z = 348.278 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 473003, gadget_id = 70330411, pos = { x = -2287.798, y = 74.326, z = 5170.688 }, rot = { x = 13.209, y = 140.096, z = 357.862 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 473004, gadget_id = 70211150, pos = { x = -2275.974, y = 73.972, z = 5155.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 21910080, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 473008, gadget_id = 70330411, pos = { x = -2268.620, y = 74.155, z = 5172.361 }, rot = { x = 342.523, y = 62.053, z = 347.655 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1473005, name = "GADGET_STATE_CHANGE_473005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_473005", action = "action_EVENT_GADGET_STATE_CHANGE_473005", trigger_count = 0 },
	{ config_id = 1473006, name = "GADGET_STATE_CHANGE_473006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_473006" },
	{ config_id = 1473007, name = "GADGET_CREATE_473007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_473007", action = "action_EVENT_GADGET_CREATE_473007" }
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
		gadgets = { 473001, 473002, 473003, 473008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_473005", "GADGET_STATE_CHANGE_473006", "GADGET_CREATE_473007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_473005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_473005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_473006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_473007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_473007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Transparent_Mark"