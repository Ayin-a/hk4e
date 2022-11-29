-- 基础信息
local base_info = {
	group_id = 133103486
}

-- Trigger变量
local defs = {
	gadget_id = 486004
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
	{ config_id = 486001, gadget_id = 70900050, pos = { x = 238.112, y = 381.581, z = 2031.480 }, rot = { x = 7.118, y = 0.167, z = 2.684 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 486002, gadget_id = 70900050, pos = { x = 225.756, y = 384.771, z = 2022.938 }, rot = { x = 3.111, y = 358.544, z = 350.428 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 486003, gadget_id = 70900050, pos = { x = 246.580, y = 385.318, z = 1996.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 6 },
	{ config_id = 486004, gadget_id = 70211101, pos = { x = 248.827, y = 386.357, z = 2004.304 }, rot = { x = 352.562, y = 30.687, z = 8.945 }, level = 26, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 486008, gadget_id = 70900050, pos = { x = 264.162, y = 391.244, z = 2009.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1486005, name = "GADGET_STATE_CHANGE_486005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_486005", action = "action_EVENT_GADGET_STATE_CHANGE_486005", trigger_count = 0 },
	{ config_id = 1486006, name = "GADGET_STATE_CHANGE_486006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_486006" },
	{ config_id = 1486007, name = "GADGET_CREATE_486007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_486007", action = "action_EVENT_GADGET_CREATE_486007" }
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
		gadgets = { 486001, 486002, 486003, 486008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_486005", "GADGET_STATE_CHANGE_486006", "GADGET_CREATE_486007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_486005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_486005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_486006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_486007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_486007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end