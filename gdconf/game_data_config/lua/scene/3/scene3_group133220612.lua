-- 基础信息
local base_info = {
	group_id = 133220612
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
	{ config_id = 612001, gadget_id = 70330064, pos = { x = -2200.883, y = 173.423, z = -4927.008 }, rot = { x = 11.503, y = 283.146, z = 6.651 }, level = 27, interact_id = 35, area_id = 11 },
	{ config_id = 612002, gadget_id = 70900380, pos = { x = -2198.732, y = 202.469, z = -4933.943 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 11 },
	{ config_id = 612003, gadget_id = 70900380, pos = { x = -2205.623, y = 183.437, z = -4928.121 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 11 },
	{ config_id = 612004, gadget_id = 70900380, pos = { x = -2199.078, y = 191.669, z = -4933.382 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1612005, name = "GADGET_STATE_CHANGE_612005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_612005", action = "action_EVENT_GADGET_STATE_CHANGE_612005", trigger_count = 0 },
	{ config_id = 1612006, name = "GADGET_STATE_CHANGE_612006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_612006", action = "action_EVENT_GADGET_STATE_CHANGE_612006", trigger_count = 0 }
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
		gadgets = { 612001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_612005", "GADGET_STATE_CHANGE_612006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 612002, 612003, 612004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_612005(context, evt)
	if 612001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_612005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220612, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_612006(context, evt)
	if 612001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_612006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220612, 2)
	
	return 0
end

require "V2_0/ElectricCore"