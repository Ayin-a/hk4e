-- 基础信息
local base_info = {
	group_id = 133222347
}

-- Trigger变量
local defs = {
	gadget_id = 347004
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
	{ config_id = 347001, gadget_id = 70900008, pos = { x = -4669.208, y = 214.004, z = -4439.879 }, rot = { x = 335.447, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 14 },
	{ config_id = 347002, gadget_id = 70900008, pos = { x = -4667.772, y = 210.730, z = -4452.638 }, rot = { x = 6.331, y = 359.458, z = 340.139 }, level = 32, persistent = true, area_id = 14 },
	{ config_id = 347003, gadget_id = 70900008, pos = { x = -4677.780, y = 213.421, z = -4446.027 }, rot = { x = 353.225, y = 5.229, z = 322.195 }, level = 32, persistent = true, area_id = 14 },
	{ config_id = 347004, gadget_id = 70211101, pos = { x = -4671.283, y = 211.741, z = -4444.416 }, rot = { x = 2.687, y = 125.851, z = 341.093 }, level = 26, drop_tag = "解谜低级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 347008, gadget_id = 70900008, pos = { x = -4664.073, y = 212.936, z = -4446.191 }, rot = { x = 333.832, y = 1.010, z = 24.227 }, level = 30, persistent = true, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1347005, name = "GADGET_STATE_CHANGE_347005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_347005", action = "action_EVENT_GADGET_STATE_CHANGE_347005", trigger_count = 0 },
	{ config_id = 1347006, name = "GADGET_STATE_CHANGE_347006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_347006" },
	{ config_id = 1347007, name = "GADGET_CREATE_347007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_347007", action = "action_EVENT_GADGET_CREATE_347007" }
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
		gadgets = { 347001, 347002, 347003, 347008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_347005", "GADGET_STATE_CHANGE_347006", "GADGET_CREATE_347007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_347005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_347005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_347006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_347007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_347007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end