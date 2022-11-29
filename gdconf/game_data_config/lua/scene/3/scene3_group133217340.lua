-- 基础信息
local base_info = {
	group_id = 133217340
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
	{ config_id = 340001, gadget_id = 70330064, pos = { x = -4321.407, y = 224.071, z = -3911.486 }, rot = { x = 349.615, y = 241.805, z = 1.730 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 340002, gadget_id = 70900380, pos = { x = -4324.070, y = 230.725, z = -3907.421 }, rot = { x = 359.101, y = 190.340, z = 0.948 }, level = 30, area_id = 14 },
	{ config_id = 340003, gadget_id = 70900380, pos = { x = -4335.399, y = 233.894, z = -3896.017 }, rot = { x = 359.101, y = 190.340, z = 0.948 }, level = 30, area_id = 14 },
	{ config_id = 340006, gadget_id = 70900380, pos = { x = -4344.686, y = 236.293, z = -3881.823 }, rot = { x = 359.101, y = 190.340, z = 0.948 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1340004, name = "GADGET_STATE_CHANGE_340004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_340004", action = "action_EVENT_GADGET_STATE_CHANGE_340004", trigger_count = 0 },
	{ config_id = 1340005, name = "GADGET_STATE_CHANGE_340005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_340005", action = "action_EVENT_GADGET_STATE_CHANGE_340005", trigger_count = 0 }
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
		gadgets = { 340001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_340004", "GADGET_STATE_CHANGE_340005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 340002, 340003, 340006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_340004(context, evt)
	if 340001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_340004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217340, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_340005(context, evt)
	if 340001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_340005(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217340, 2)
	
	return 0
end

require "V2_0/ElectricCore"