-- 基础信息
local base_info = {
	group_id = 133307467
}

-- Trigger变量
local defs = {
	gadget_id = 467004
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
	{ config_id = 467001, gadget_id = 70330411, pos = { x = -1370.396, y = 60.358, z = 5561.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 467002, gadget_id = 70330411, pos = { x = -1347.521, y = 63.993, z = 5563.678 }, rot = { x = 7.901, y = 13.712, z = 354.156 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 467003, gadget_id = 70330411, pos = { x = -1373.489, y = 68.315, z = 5525.902 }, rot = { x = 10.734, y = 358.238, z = 350.627 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 467004, gadget_id = 70211111, pos = { x = -1349.647, y = 55.784, z = 5591.342 }, rot = { x = 359.036, y = 237.742, z = 346.712 }, level = 26, drop_tag = "解谜中级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 467008, gadget_id = 70330411, pos = { x = -1356.718, y = 56.530, z = 5603.076 }, rot = { x = 14.611, y = 356.757, z = 339.385 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1467005, name = "GADGET_STATE_CHANGE_467005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_467005", action = "action_EVENT_GADGET_STATE_CHANGE_467005", trigger_count = 0 },
	{ config_id = 1467006, name = "GADGET_STATE_CHANGE_467006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_467006" },
	{ config_id = 1467007, name = "GADGET_CREATE_467007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_467007", action = "action_EVENT_GADGET_CREATE_467007" }
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
		gadgets = { 467001, 467002, 467003, 467008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_467005", "GADGET_STATE_CHANGE_467006", "GADGET_CREATE_467007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_467005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_467005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_467006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_467007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_467007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end