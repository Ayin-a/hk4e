-- 基础信息
local base_info = {
	group_id = 133107019
}

-- Trigger变量
local defs = {
	gadget_id = 19004
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
	{ config_id = 19001, gadget_id = 70310001, pos = { x = -194.130, y = 281.866, z = 61.299 }, rot = { x = 334.671, y = 357.409, z = 13.031 }, level = 18, persistent = true, area_id = 7 },
	{ config_id = 19002, gadget_id = 70310001, pos = { x = -192.238, y = 281.075, z = 59.018 }, rot = { x = 333.896, y = 357.121, z = 10.798 }, level = 18, persistent = true, area_id = 7 },
	{ config_id = 19003, gadget_id = 70310001, pos = { x = -196.319, y = 282.118, z = 62.947 }, rot = { x = 337.245, y = 356.650, z = 16.536 }, level = 18, persistent = true, area_id = 7 },
	{ config_id = 19004, gadget_id = 70211111, pos = { x = -192.370, y = 282.559, z = 62.102 }, rot = { x = 337.422, y = 358.049, z = 9.753 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1019005, name = "GADGET_STATE_CHANGE_19005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19005", action = "action_EVENT_GADGET_STATE_CHANGE_19005", trigger_count = 0 },
	{ config_id = 1019006, name = "GADGET_STATE_CHANGE_19006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_19006" },
	{ config_id = 1019007, name = "GADGET_CREATE_19007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_19007", action = "action_EVENT_GADGET_CREATE_19007" }
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
		gadgets = { 19001, 19002, 19003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_19005", "GADGET_STATE_CHANGE_19006", "GADGET_CREATE_19007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_19005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_19005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_19006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_19007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_19007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end