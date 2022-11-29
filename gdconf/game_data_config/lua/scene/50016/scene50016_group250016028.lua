-- 基础信息
local base_info = {
	group_id = 250016028
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
	{ config_id = 119, gadget_id = 70900007, pos = { x = -57.064, y = -11.000, z = -125.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 120, gadget_id = 70900007, pos = { x = -57.064, y = -11.000, z = -129.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 121, gadget_id = 70900007, pos = { x = -57.064, y = -11.000, z = -134.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 122, gadget_id = 70900007, pos = { x = -57.064, y = -11.000, z = -138.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000088, name = "GADGET_STATE_CHANGE_88", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_88", action = "action_EVENT_GADGET_STATE_CHANGE_88", trigger_count = 0 },
	{ config_id = 1000089, name = "GADGET_STATE_CHANGE_89", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_89", action = "action_EVENT_GADGET_STATE_CHANGE_89", trigger_count = 0 },
	{ config_id = 1000090, name = "GADGET_STATE_CHANGE_90", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90", action = "action_EVENT_GADGET_STATE_CHANGE_90", trigger_count = 0 },
	{ config_id = 1000091, name = "GADGET_STATE_CHANGE_91", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91", action = "action_EVENT_GADGET_STATE_CHANGE_91", trigger_count = 0 }
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
		gadgets = { 119, 120, 121, 122 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_88", "GADGET_STATE_CHANGE_89", "GADGET_STATE_CHANGE_90", "GADGET_STATE_CHANGE_91" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_88(context, evt)
	if 119 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_88(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016005, 2)
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016028, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_89(context, evt)
	if 120 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_89(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016006, 2)
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016028, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90(context, evt)
	if 121 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016007, 2)
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016028, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91(context, evt)
	if 122 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016008, 2)
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016028, 1)
	
	return 0
end