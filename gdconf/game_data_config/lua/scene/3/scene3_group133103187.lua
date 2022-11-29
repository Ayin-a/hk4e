-- 基础信息
local base_info = {
	group_id = 133103187
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
	{ config_id = 187001, gadget_id = 70220032, pos = { x = 949.661, y = 371.031, z = 1648.162 }, rot = { x = 0.000, y = 324.188, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 187002, gadget_id = 70690006, pos = { x = 949.943, y = 371.000, z = 1648.215 }, rot = { x = 0.000, y = 174.486, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1187003, name = "GADGET_STATE_CHANGE_187003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_187003", action = "action_EVENT_GADGET_STATE_CHANGE_187003", trigger_count = 0 },
	{ config_id = 1187004, name = "GADGET_STATE_CHANGE_187004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_187004", action = "action_EVENT_GADGET_STATE_CHANGE_187004", trigger_count = 0 }
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
		gadgets = { 187001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_187003", "GADGET_STATE_CHANGE_187004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 187002 },
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
function condition_EVENT_GADGET_STATE_CHANGE_187003(context, evt)
	if 187001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_187003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103187, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_187004(context, evt)
	if 187001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_187004(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103187, 2)
	
	return 0
end