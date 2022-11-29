-- 基础信息
local base_info = {
	group_id = 250016029
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
	{ config_id = 123, gadget_id = 70900007, pos = { x = -57.455, y = -11.000, z = -211.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 124, gadget_id = 70900007, pos = { x = -57.455, y = -11.000, z = -216.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 125, gadget_id = 70900007, pos = { x = -57.455, y = -11.000, z = -220.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000096, name = "GADGET_STATE_CHANGE_96", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96", action = "action_EVENT_GADGET_STATE_CHANGE_96", trigger_count = 0 },
	{ config_id = 1000097, name = "GADGET_STATE_CHANGE_97", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97", action = "action_EVENT_GADGET_STATE_CHANGE_97", trigger_count = 0 },
	{ config_id = 1000098, name = "GADGET_STATE_CHANGE_98", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_98", action = "action_EVENT_GADGET_STATE_CHANGE_98", trigger_count = 0 }
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
		gadgets = { 123, 124 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_96", "GADGET_STATE_CHANGE_97" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96(context, evt)
	if 123 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016010, 2)
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016029, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97(context, evt)
	if 124 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016011, 2)
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016029, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_98(context, evt)
	if 125 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_98(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016012, 2)
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016029, 1)
	
	return 0
end