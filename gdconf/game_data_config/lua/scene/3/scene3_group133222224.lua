-- 基础信息
local base_info = {
	group_id = 133222224
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
	{ config_id = 224001, gadget_id = 70330064, pos = { x = -4618.474, y = 427.414, z = -4128.390 }, rot = { x = 2.353, y = 213.166, z = 355.249 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 224002, gadget_id = 70900380, pos = { x = -4622.628, y = 432.673, z = -4124.620 }, rot = { x = 0.146, y = 313.162, z = 1.191 }, level = 30, area_id = 14 },
	{ config_id = 224003, gadget_id = 70900380, pos = { x = -4627.312, y = 441.147, z = -4122.113 }, rot = { x = 0.146, y = 313.162, z = 1.191 }, level = 30, area_id = 14 },
	{ config_id = 224004, gadget_id = 70900380, pos = { x = -4630.000, y = 450.618, z = -4120.425 }, rot = { x = 0.146, y = 313.162, z = 1.191 }, level = 30, area_id = 14 },
	{ config_id = 224007, gadget_id = 70900380, pos = { x = -4637.657, y = 453.489, z = -4118.042 }, rot = { x = 0.146, y = 313.162, z = 1.191 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1224005, name = "GADGET_STATE_CHANGE_224005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_224005", action = "action_EVENT_GADGET_STATE_CHANGE_224005", trigger_count = 0 },
	{ config_id = 1224006, name = "GADGET_STATE_CHANGE_224006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_224006", action = "action_EVENT_GADGET_STATE_CHANGE_224006", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 224001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_224005", "GADGET_STATE_CHANGE_224006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 224002, 224003, 224004, 224007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_224005(context, evt)
	if 224001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_224005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222224, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_224006(context, evt)
	if 224001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_224006(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222224, 3)
	
	return 0
end

require "V2_0/ElectricCore"