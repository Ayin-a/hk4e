-- 基础信息
local base_info = {
	group_id = 133103188
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
	{ config_id = 188001, gadget_id = 70220032, pos = { x = 562.120, y = 317.549, z = 1484.746 }, rot = { x = 0.000, y = 324.188, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 188002, gadget_id = 70690006, pos = { x = 562.375, y = 317.544, z = 1485.063 }, rot = { x = 0.000, y = 174.486, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1188003, name = "GADGET_STATE_CHANGE_188003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_188003", action = "action_EVENT_GADGET_STATE_CHANGE_188003", trigger_count = 0 },
	{ config_id = 1188004, name = "GADGET_STATE_CHANGE_188004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_188004", action = "action_EVENT_GADGET_STATE_CHANGE_188004", trigger_count = 0 }
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
		gadgets = { 188001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_188003", "GADGET_STATE_CHANGE_188004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 188002 },
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
function condition_EVENT_GADGET_STATE_CHANGE_188003(context, evt)
	if 188001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_188003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103188, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_188004(context, evt)
	if 188001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_188004(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103188, 2)
	
	return 0
end