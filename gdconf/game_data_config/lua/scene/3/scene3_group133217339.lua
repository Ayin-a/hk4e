-- 基础信息
local base_info = {
	group_id = 133217339
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
	{ config_id = 339001, gadget_id = 70330064, pos = { x = -4327.124, y = 213.328, z = -3871.688 }, rot = { x = 339.786, y = 242.069, z = 5.768 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 339002, gadget_id = 70900380, pos = { x = -4321.297, y = 219.420, z = -3873.924 }, rot = { x = 359.101, y = 190.340, z = 0.948 }, level = 30, area_id = 14 },
	{ config_id = 339005, gadget_id = 70900380, pos = { x = -4310.742, y = 220.616, z = -3877.623 }, rot = { x = 359.101, y = 190.340, z = 0.948 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1339003, name = "GADGET_STATE_CHANGE_339003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_339003", action = "action_EVENT_GADGET_STATE_CHANGE_339003", trigger_count = 0 },
	{ config_id = 1339004, name = "GADGET_STATE_CHANGE_339004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_339004", action = "action_EVENT_GADGET_STATE_CHANGE_339004", trigger_count = 0 }
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
		gadgets = { 339001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_339003", "GADGET_STATE_CHANGE_339004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 339002, 339005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_339003(context, evt)
	if 339001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_339003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217339, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_339004(context, evt)
	if 339001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_339004(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217339, 2)
	
	return 0
end

require "V2_0/ElectricCore"