-- 基础信息
local base_info = {
	group_id = 133309200
}

-- Trigger变量
local defs = {
	gadget_id = 200004
}

-- DEFS_MISCS
local markList = {200001,200002,200003,200008}

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
	{ config_id = 200001, gadget_id = 70330411, pos = { x = -2227.457, y = -9.620, z = 5548.732 }, rot = { x = 12.674, y = 0.000, z = 11.247 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 200002, gadget_id = 70330411, pos = { x = -2214.555, y = -9.344, z = 5589.105 }, rot = { x = 342.800, y = 0.000, z = 15.338 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 200003, gadget_id = 70330411, pos = { x = -2198.880, y = -9.030, z = 5549.012 }, rot = { x = 13.683, y = 4.298, z = 17.625 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 200004, gadget_id = 70211150, pos = { x = -2239.860, y = -12.726, z = 5568.409 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 26, chest_drop_id = 21910107, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 200008, gadget_id = 70330411, pos = { x = -2200.846, y = -9.604, z = 5575.640 }, rot = { x = 22.443, y = 349.917, z = 335.025 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1200005, name = "GADGET_STATE_CHANGE_200005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_200005", action = "action_EVENT_GADGET_STATE_CHANGE_200005", trigger_count = 0 },
	{ config_id = 1200006, name = "GADGET_STATE_CHANGE_200006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_200006" },
	{ config_id = 1200007, name = "GADGET_CREATE_200007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_200007", action = "action_EVENT_GADGET_CREATE_200007" }
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
		gadgets = { 200001, 200002, 200003, 200008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_200005", "GADGET_STATE_CHANGE_200006", "GADGET_CREATE_200007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_200005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_200005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_200006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_200007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_200007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Transparent_Mark"