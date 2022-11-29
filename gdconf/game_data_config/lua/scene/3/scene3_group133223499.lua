-- 基础信息
local base_info = {
	group_id = 133223499
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
	{ config_id = 499001, gadget_id = 70330064, pos = { x = -5985.429, y = 180.924, z = -2552.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 18 },
	{ config_id = 499002, gadget_id = 70900380, pos = { x = -5984.397, y = 187.401, z = -2542.529 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 499003, gadget_id = 70900380, pos = { x = -5989.497, y = 199.047, z = -2544.757 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 499004, gadget_id = 70900380, pos = { x = -5992.089, y = 211.262, z = -2546.213 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1499005, name = "GADGET_STATE_CHANGE_499005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_499005", action = "action_EVENT_GADGET_STATE_CHANGE_499005", trigger_count = 0 },
	{ config_id = 1499006, name = "GADGET_STATE_CHANGE_499006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_499006", action = "action_EVENT_GADGET_STATE_CHANGE_499006", trigger_count = 0 }
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
		gadgets = { 499001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_499005", "GADGET_STATE_CHANGE_499006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 499002, 499003, 499004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_499005(context, evt)
	if 499001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_499005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223499, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_499006(context, evt)
	if 499001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_499006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223499, 2)
	
	return 0
end

require "V2_0/ElectricCore"