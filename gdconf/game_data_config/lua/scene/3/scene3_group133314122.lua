-- 基础信息
local base_info = {
	group_id = 133314122
}

-- Trigger变量
local defs = {
	gadget_id = 122004
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
	{ config_id = 122001, gadget_id = 70330411, pos = { x = -986.435, y = -152.187, z = 5014.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 122002, gadget_id = 70330411, pos = { x = -1007.876, y = -148.913, z = 5023.160 }, rot = { x = 349.543, y = 12.019, z = 350.026 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 122003, gadget_id = 70330411, pos = { x = -992.977, y = -152.129, z = 5001.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 122004, gadget_id = 70211101, pos = { x = -1001.145, y = -153.110, z = 5005.304 }, rot = { x = 0.000, y = 23.916, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 122008, gadget_id = 70330411, pos = { x = -1017.953, y = -151.591, z = 5000.667 }, rot = { x = 348.739, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1122005, name = "GADGET_STATE_CHANGE_122005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_122005", action = "action_EVENT_GADGET_STATE_CHANGE_122005", trigger_count = 0 },
	{ config_id = 1122006, name = "GADGET_STATE_CHANGE_122006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_122006" },
	{ config_id = 1122007, name = "GADGET_CREATE_122007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_122007", action = "action_EVENT_GADGET_CREATE_122007" }
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
		gadgets = { 122001, 122002, 122003, 122008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_122005", "GADGET_STATE_CHANGE_122006", "GADGET_CREATE_122007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_122005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_122005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_122006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_122007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_122007(context, evt)
	-- 将本组内变量名为 "unlock" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock", 1, 133314034) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end