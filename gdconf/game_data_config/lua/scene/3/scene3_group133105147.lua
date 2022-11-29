-- 基础信息
local base_info = {
	group_id = 133105147
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
	{ config_id = 386, gadget_id = 70220032, pos = { x = 749.277, y = 258.381, z = -77.725 }, rot = { x = 350.957, y = 164.847, z = 357.185 }, level = 25, area_id = 9 },
	{ config_id = 387, gadget_id = 70690006, pos = { x = 749.549, y = 258.903, z = -78.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000190, name = "GADGET_STATE_CHANGE_190", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_190", action = "action_EVENT_GADGET_STATE_CHANGE_190", trigger_count = 0 },
	{ config_id = 1000191, name = "GADGET_STATE_CHANGE_191", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_191", action = "action_EVENT_GADGET_STATE_CHANGE_191", trigger_count = 0 }
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
		gadgets = { 386 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_190", "GADGET_STATE_CHANGE_191" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 387 },
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
function condition_EVENT_GADGET_STATE_CHANGE_190(context, evt)
	if 386 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_190(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105147, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_191(context, evt)
	if 386 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_191(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105147, 2)
	
	return 0
end