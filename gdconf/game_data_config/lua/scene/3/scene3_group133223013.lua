-- 基础信息
local base_info = {
	group_id = 133223013
}

-- Trigger变量
local defs = {
	gadget_id = 13004,
	target_group = 133223011
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
	{ config_id = 13001, gadget_id = 70310090, pos = { x = -5950.763, y = 196.128, z = -2579.535 }, rot = { x = 348.200, y = 300.245, z = 0.000 }, level = 32, persistent = true, area_id = 18 },
	{ config_id = 13002, gadget_id = 70310090, pos = { x = -5969.641, y = 195.023, z = -2595.905 }, rot = { x = 350.157, y = 31.109, z = -0.001 }, level = 32, persistent = true, area_id = 18 },
	{ config_id = 13003, gadget_id = 70310090, pos = { x = -6000.102, y = 190.387, z = -2581.311 }, rot = { x = 0.000, y = 97.736, z = 0.000 }, level = 32, persistent = true, area_id = 18 },
	{ config_id = 13004, gadget_id = 70211101, pos = { x = -5992.390, y = 189.601, z = -2587.373 }, rot = { x = 22.947, y = 45.358, z = 356.416 }, level = 26, drop_tag = "解谜低级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 13008, gadget_id = 70310090, pos = { x = -5986.535, y = 187.764, z = -2592.683 }, rot = { x = 28.003, y = 33.774, z = 0.000 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1013005, name = "GADGET_STATE_CHANGE_13005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13005", action = "action_EVENT_GADGET_STATE_CHANGE_13005", trigger_count = 0 },
	{ config_id = 1013006, name = "GADGET_STATE_CHANGE_13006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_13006" },
	{ config_id = 1013007, name = "GADGET_CREATE_13007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_13007", action = "action_EVENT_GADGET_CREATE_13007" }
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
		gadgets = { 13001, 13002, 13003, 13008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_13005", "GADGET_STATE_CHANGE_13006", "GADGET_CREATE_13007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_13006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_13007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_13007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end