-- 基础信息
local base_info = {
	group_id = 133222272
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
	{ config_id = 272001, gadget_id = 70330064, pos = { x = -4472.380, y = 200.366, z = -4505.900 }, rot = { x = 355.559, y = 0.242, z = 353.758 }, level = 27, interact_id = 35, area_id = 14 },
	{ config_id = 272002, gadget_id = 70900380, pos = { x = -4465.932, y = 207.893, z = -4511.140 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 272003, gadget_id = 70900380, pos = { x = -4454.577, y = 209.133, z = -4522.304 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 272004, gadget_id = 70900380, pos = { x = -4446.066, y = 212.943, z = -4533.071 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 272007, gadget_id = 70900380, pos = { x = -4436.389, y = 215.050, z = -4540.322 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1272005, name = "GADGET_STATE_CHANGE_272005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_272005", action = "action_EVENT_GADGET_STATE_CHANGE_272005", trigger_count = 0 },
	{ config_id = 1272006, name = "GADGET_STATE_CHANGE_272006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_272006", action = "action_EVENT_GADGET_STATE_CHANGE_272006", trigger_count = 0 }
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
		gadgets = { 272001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_272005", "GADGET_STATE_CHANGE_272006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 272002, 272003, 272004, 272007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_272005(context, evt)
	if 272001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_272005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222272, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_272006(context, evt)
	if 272001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_272006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222272, 2)
	
	return 0
end

require "V2_0/ElectricCore"