-- 基础信息
local base_info = {
	group_id = 133314084
}

-- Trigger变量
local defs = {
	gadget_id = 84004
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
	{ config_id = 84001, gadget_id = 70330404, pos = { x = -835.867, y = -45.323, z = 5028.539 }, rot = { x = 10.585, y = 2.683, z = 336.473 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 84002, gadget_id = 70330404, pos = { x = -802.651, y = -52.859, z = 5061.415 }, rot = { x = 350.086, y = 0.530, z = 8.141 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 84003, gadget_id = 70330404, pos = { x = -815.018, y = -50.723, z = 4990.983 }, rot = { x = 12.898, y = 337.411, z = 330.188 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 84004, gadget_id = 70211101, pos = { x = -801.219, y = -54.972, z = 5048.320 }, rot = { x = 0.000, y = 29.540, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1084005, name = "GADGET_STATE_CHANGE_84005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_84005", action = "action_EVENT_GADGET_STATE_CHANGE_84005", trigger_count = 0 },
	{ config_id = 1084006, name = "GADGET_STATE_CHANGE_84006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_84006" },
	{ config_id = 1084007, name = "GADGET_CREATE_84007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_84007", action = "action_EVENT_GADGET_CREATE_84007" }
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
		gadgets = { 84001, 84002, 84003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_84005", "GADGET_STATE_CHANGE_84006", "GADGET_CREATE_84007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_84005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_84005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_84006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_84007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_84007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end