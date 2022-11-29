-- 基础信息
local base_info = {
	group_id = 133309232
}

-- Trigger变量
local defs = {
	gadget_id = 232004
}

-- DEFS_MISCS
local markList = {232001,232002,232003,232005}

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
	{ config_id = 232001, gadget_id = 70330411, pos = { x = -2299.926, y = 49.992, z = 5558.122 }, rot = { x = 0.000, y = 238.520, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 232002, gadget_id = 70330411, pos = { x = -2299.883, y = 49.992, z = 5578.834 }, rot = { x = 0.000, y = 205.021, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 232003, gadget_id = 70330411, pos = { x = -2305.162, y = 49.992, z = 5563.401 }, rot = { x = 0.000, y = 190.211, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 232004, gadget_id = 70211121, pos = { x = -2302.486, y = 50.002, z = 5568.500 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 26, drop_tag = "解谜高级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 232005, gadget_id = 70330411, pos = { x = -2305.027, y = 50.002, z = 5573.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1232006, name = "GADGET_STATE_CHANGE_232006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_232006", action = "action_EVENT_GADGET_STATE_CHANGE_232006", trigger_count = 0 },
	{ config_id = 1232007, name = "GADGET_STATE_CHANGE_232007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_232007" },
	{ config_id = 1232008, name = "GADGET_CREATE_232008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_232008", action = "action_EVENT_GADGET_CREATE_232008" }
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
		gadgets = { 232001, 232002, 232003, 232005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_232006", "GADGET_STATE_CHANGE_232007", "GADGET_CREATE_232008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_232006(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_232006(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_232007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_232008(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_232008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Transparent_Mark"