-- 基础信息
local base_info = {
	group_id = 166001575
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
	{ config_id = 575001, gadget_id = 70290219, pos = { x = 688.231, y = 407.846, z = 762.154 }, rot = { x = 359.284, y = 236.569, z = 1.153 }, level = 36, area_id = 300 },
	{ config_id = 575002, gadget_id = 70690011, pos = { x = 696.309, y = 396.414, z = 759.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1575003, name = "GADGET_STATE_CHANGE_575003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_575003", action = "action_EVENT_GADGET_STATE_CHANGE_575003", trigger_count = 0 },
	{ config_id = 1575004, name = "TIME_AXIS_PASS_575004", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_575004", action = "action_EVENT_TIME_AXIS_PASS_575004", trigger_count = 0 }
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
		gadgets = { 575001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_575003", "TIME_AXIS_PASS_575004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 575002 },
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
function condition_EVENT_GADGET_STATE_CHANGE_575003(context, evt)
	if 575001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_575003(context, evt)
	-- 创建标识为"wind"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wind", {5}, false)
	
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001575, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_575004(context, evt)
	if "wind" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_575004(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001575, 2)
	
	return 0
end