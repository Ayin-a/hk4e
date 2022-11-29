-- 基础信息
local base_info = {
	group_id = 133103528
}

-- Trigger变量
local defs = {
	gadget_id = 528004
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
	{ config_id = 528001, gadget_id = 70330019, pos = { x = 641.461, y = 230.701, z = 1773.109 }, rot = { x = 357.328, y = 359.875, z = 5.356 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 528002, gadget_id = 70330019, pos = { x = 637.655, y = 230.750, z = 1766.141 }, rot = { x = 3.704, y = 33.851, z = 5.691 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 528003, gadget_id = 70330019, pos = { x = 634.596, y = 230.795, z = 1771.812 }, rot = { x = 4.570, y = 36.513, z = 348.012 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 528004, gadget_id = 70211111, pos = { x = 638.972, y = 230.543, z = 1769.626 }, rot = { x = 0.000, y = 290.075, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1528005, name = "GADGET_STATE_CHANGE_528005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_528005", action = "action_EVENT_GADGET_STATE_CHANGE_528005", trigger_count = 0 },
	{ config_id = 1528006, name = "GADGET_STATE_CHANGE_528006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_528006" },
	{ config_id = 1528007, name = "GADGET_CREATE_528007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_528007", action = "action_EVENT_GADGET_CREATE_528007" }
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
		gadgets = { 528001, 528002, 528003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_528005", "GADGET_STATE_CHANGE_528006", "GADGET_CREATE_528007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_528005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_528005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_528006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_528007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_528007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end