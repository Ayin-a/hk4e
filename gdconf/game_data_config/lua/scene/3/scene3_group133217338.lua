-- 基础信息
local base_info = {
	group_id = 133217338
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
	{ config_id = 338001, gadget_id = 70330064, pos = { x = -4299.341, y = 215.728, z = -3839.728 }, rot = { x = 333.938, y = 241.871, z = 357.812 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 338002, gadget_id = 70900380, pos = { x = -4304.623, y = 221.948, z = -3837.108 }, rot = { x = 359.101, y = 190.340, z = 0.948 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1338005, name = "GADGET_STATE_CHANGE_338005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_338005", action = "action_EVENT_GADGET_STATE_CHANGE_338005", trigger_count = 0 },
	{ config_id = 1338006, name = "GADGET_STATE_CHANGE_338006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_338006", action = "action_EVENT_GADGET_STATE_CHANGE_338006", trigger_count = 0 }
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
		gadgets = { 338001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_338005", "GADGET_STATE_CHANGE_338006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 338002 },
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
function condition_EVENT_GADGET_STATE_CHANGE_338005(context, evt)
	if 338001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_338005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217338, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_338006(context, evt)
	if 338001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_338006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217338, 2)
	
	return 0
end

require "V2_0/ElectricCore"