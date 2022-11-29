-- 基础信息
local base_info = {
	group_id = 133106590
}

-- Trigger变量
local defs = {
	gadget_id = 590004
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
	{ config_id = 590001, gadget_id = 70330019, pos = { x = -138.129, y = 282.699, z = 1411.780 }, rot = { x = 0.000, y = 45.212, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 590002, gadget_id = 70330019, pos = { x = -133.710, y = 282.699, z = 1407.195 }, rot = { x = 0.000, y = 44.499, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 590003, gadget_id = 70330019, pos = { x = -134.932, y = 284.263, z = 1413.876 }, rot = { x = 0.000, y = 315.040, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 590004, gadget_id = 70211111, pos = { x = -129.342, y = 285.816, z = 1415.612 }, rot = { x = 0.000, y = 226.086, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 590008, gadget_id = 70330019, pos = { x = -131.263, y = 284.263, z = 1410.226 }, rot = { x = 0.000, y = 315.040, z = 0.000 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1590005, name = "GADGET_STATE_CHANGE_590005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_590005", action = "action_EVENT_GADGET_STATE_CHANGE_590005", trigger_count = 0 },
	{ config_id = 1590006, name = "GADGET_STATE_CHANGE_590006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_590006" },
	{ config_id = 1590007, name = "GADGET_CREATE_590007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_590007", action = "action_EVENT_GADGET_CREATE_590007" }
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
		gadgets = { 590001, 590002, 590003, 590008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_590005", "GADGET_STATE_CHANGE_590006", "GADGET_CREATE_590007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_590005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_590005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_590006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_590007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_590007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end