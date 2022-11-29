-- 基础信息
local base_info = {
	group_id = 133001146
}

-- Trigger变量
local defs = {
	gadget_id = 146004
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
	{ config_id = 146001, gadget_id = 70900007, pos = { x = 1856.139, y = 199.448, z = -1241.008 }, rot = { x = 0.000, y = 313.713, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 146002, gadget_id = 70900008, pos = { x = 1876.844, y = 202.044, z = -1244.728 }, rot = { x = 0.000, y = 311.829, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 146003, gadget_id = 70900009, pos = { x = 1857.176, y = 196.257, z = -1260.562 }, rot = { x = 0.000, y = 318.339, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 146004, gadget_id = 70211121, pos = { x = 1860.642, y = 199.461, z = -1235.414 }, rot = { x = 0.000, y = 132.353, z = 0.000 }, level = 1, drop_tag = "解谜高级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1146005, name = "GADGET_STATE_CHANGE_146005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146005", action = "action_EVENT_GADGET_STATE_CHANGE_146005", trigger_count = 0 },
	{ config_id = 1146006, name = "GADGET_STATE_CHANGE_146006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_146006" },
	{ config_id = 1146007, name = "GADGET_CREATE_146007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_146007", action = "action_EVENT_GADGET_CREATE_146007" }
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
		gadgets = { 146001, 146002, 146003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_146005", "GADGET_STATE_CHANGE_146006", "GADGET_CREATE_146007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_146006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_146007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_146007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end