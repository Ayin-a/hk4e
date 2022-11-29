-- 基础信息
local base_info = {
	group_id = 133105211
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
	{ config_id = 211001, gadget_id = 70360006, pos = { x = 557.024, y = 249.772, z = -100.122 }, rot = { x = 10.315, y = 5.668, z = 18.172 }, level = 19, area_id = 9 },
	{ config_id = 211002, gadget_id = 70690006, pos = { x = 557.200, y = 249.316, z = -99.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1211003, name = "GADGET_STATE_CHANGE_211003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_211003", action = "action_EVENT_GADGET_STATE_CHANGE_211003", trigger_count = 0 },
	{ config_id = 1211004, name = "GADGET_STATE_CHANGE_211004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_211004", action = "action_EVENT_GADGET_STATE_CHANGE_211004", trigger_count = 0 }
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
		gadgets = { 211001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_211003", "GADGET_STATE_CHANGE_211004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 211002 },
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
function condition_EVENT_GADGET_STATE_CHANGE_211003(context, evt)
	if 211001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_211003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105211, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_211004(context, evt)
	-- 检测config_id为211001的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 211001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_211004(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105211, 2)
	
	return 0
end