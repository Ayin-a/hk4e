-- 基础信息
local base_info = {
	group_id = 111101049
}

-- Trigger变量
local defs = {
	gadget_1 = 49001
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
	{ config_id = 49001, gadget_id = 70360006, pos = { x = 2411.905, y = 250.511, z = -1409.038 }, rot = { x = 0.000, y = 196.100, z = 0.000 }, level = 18 },
	{ config_id = 49002, gadget_id = 70211101, pos = { x = 2413.928, y = 250.667, z = -1407.470 }, rot = { x = 0.000, y = 242.710, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 49010, gadget_id = 70900007, pos = { x = 2414.299, y = 251.436, z = -1412.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 49011, gadget_id = 70900008, pos = { x = 2409.153, y = 249.647, z = -1405.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1049003, name = "GADGET_STATE_CHANGE_49003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_49003", action = "action_EVENT_GADGET_STATE_CHANGE_49003" },
	{ config_id = 1049004, name = "GADGET_STATE_CHANGE_49004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_49004", action = "action_EVENT_GADGET_STATE_CHANGE_49004", trigger_count = 0 },
	{ config_id = 1049005, name = "GADGET_STATE_CHANGE_49005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_49005", action = "action_EVENT_GADGET_STATE_CHANGE_49005", trigger_count = 0 },
	{ config_id = 1049006, name = "GADGET_CREATE_49006", event = EventType.EVENT_GADGET_CREATE, source = "111", condition = "condition_EVENT_GADGET_CREATE_49006", action = "action_EVENT_GADGET_CREATE_49006", trigger_count = 0 },
	{ config_id = 1049007, name = "GADGET_STATE_CHANGE_49007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "111", condition = "condition_EVENT_GADGET_STATE_CHANGE_49007", action = "action_EVENT_GADGET_STATE_CHANGE_49007", trigger_count = 0 },
	{ config_id = 1049008, name = "GADGET_STATE_CHANGE_49008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_49008" },
	{ config_id = 1049009, name = "GADGET_CREATE_49009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_49009", action = "action_EVENT_GADGET_CREATE_49009" }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 49010, 49011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_49007", "GADGET_STATE_CHANGE_49008", "GADGET_CREATE_49009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 49001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_49003", "GADGET_STATE_CHANGE_49004", "GADGET_STATE_CHANGE_49005", "GADGET_CREATE_49006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 49002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_49003(context, evt)
	if 49002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_49003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1010, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 111101049, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_49004(context, evt)
	if 49001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_49004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1010, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101049, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_49005(context, evt)
	if 49001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_49005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1010, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101049, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_49006(context, evt)
	if 49001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_49006(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101049, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_49007(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_49007(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		ScriptLib.CreateGadget(context, { config_id = defs.gadget_id })
	end
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_49008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_49009(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_49009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end