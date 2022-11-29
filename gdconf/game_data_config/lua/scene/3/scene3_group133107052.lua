-- 基础信息
local base_info = {
	group_id = 133107052
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
	{ config_id = 52001, gadget_id = 70220032, pos = { x = -215.534, y = 407.511, z = 464.600 }, rot = { x = 0.000, y = 342.457, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 52002, gadget_id = 70690006, pos = { x = -215.500, y = 407.500, z = 464.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1052003, name = "GADGET_STATE_CHANGE_52003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_52003", action = "action_EVENT_GADGET_STATE_CHANGE_52003", trigger_count = 0 },
	{ config_id = 1052004, name = "GADGET_STATE_CHANGE_52004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_52004", action = "action_EVENT_GADGET_STATE_CHANGE_52004", trigger_count = 0 }
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
		gadgets = { 52001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_52003", "GADGET_STATE_CHANGE_52004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 52002 },
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
function condition_EVENT_GADGET_STATE_CHANGE_52003(context, evt)
	if 52001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_52003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107052, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_52004(context, evt)
	if 52001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_52004(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107052, 2)
	
	return 0
end