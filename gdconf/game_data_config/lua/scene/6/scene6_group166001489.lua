-- 基础信息
local base_info = {
	group_id = 166001489
}

-- Trigger变量
local defs = {
	gadget_id = 489004
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
	{ config_id = 489001, gadget_id = 70900051, pos = { x = 729.541, y = 395.264, z = 658.831 }, rot = { x = 0.000, y = 4.320, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 489002, gadget_id = 70900051, pos = { x = 735.740, y = 406.807, z = 658.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 489003, gadget_id = 70900051, pos = { x = 705.886, y = 407.518, z = 656.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 489004, gadget_id = 70211111, pos = { x = 716.988, y = 395.177, z = 662.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 489008, gadget_id = 70900051, pos = { x = 694.295, y = 395.334, z = 659.706 }, rot = { x = 23.768, y = 8.364, z = -0.002 }, level = 36, persistent = true, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1489005, name = "GADGET_STATE_CHANGE_489005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_489005", action = "action_EVENT_GADGET_STATE_CHANGE_489005", trigger_count = 0 },
	{ config_id = 1489006, name = "GADGET_STATE_CHANGE_489006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_489006" },
	{ config_id = 1489007, name = "GADGET_CREATE_489007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_489007", action = "action_EVENT_GADGET_CREATE_489007" }
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
		gadgets = { 489001, 489002, 489003, 489008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_489005", "GADGET_STATE_CHANGE_489006", "GADGET_CREATE_489007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_489005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_489005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_489006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_489007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_489007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end