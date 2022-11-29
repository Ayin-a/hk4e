-- 基础信息
local base_info = {
	group_id = 133105140
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
	{ config_id = 365, gadget_id = 70220032, pos = { x = 375.100, y = 199.997, z = -269.677 }, rot = { x = 0.000, y = 40.619, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 366, gadget_id = 70690006, pos = { x = 375.472, y = 200.105, z = -269.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000184, name = "GADGET_STATE_CHANGE_184", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_184", action = "action_EVENT_GADGET_STATE_CHANGE_184", trigger_count = 0 },
	{ config_id = 1000185, name = "GADGET_STATE_CHANGE_185", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_185", action = "action_EVENT_GADGET_STATE_CHANGE_185", trigger_count = 0 }
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
		gadgets = { 365 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_184", "GADGET_STATE_CHANGE_185" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 366 },
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
function condition_EVENT_GADGET_STATE_CHANGE_184(context, evt)
	if 365 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_184(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105140, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_185(context, evt)
	if 365 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_185(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105140, 2)
	
	return 0
end