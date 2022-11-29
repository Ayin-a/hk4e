-- 基础信息
local base_info = {
	group_id = 133220610
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
	{ config_id = 610001, gadget_id = 70330064, pos = { x = -3190.540, y = 202.052, z = -3947.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 12 },
	{ config_id = 610002, gadget_id = 70900380, pos = { x = -3186.570, y = 206.067, z = -3946.108 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 },
	{ config_id = 610003, gadget_id = 70900380, pos = { x = -3186.906, y = 221.173, z = -3946.184 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1610005, name = "GADGET_STATE_CHANGE_610005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_610005", action = "action_EVENT_GADGET_STATE_CHANGE_610005", trigger_count = 0 },
	{ config_id = 1610006, name = "GADGET_STATE_CHANGE_610006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_610006", action = "action_EVENT_GADGET_STATE_CHANGE_610006", trigger_count = 0 }
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
		gadgets = { 610001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_610005", "GADGET_STATE_CHANGE_610006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 610002, 610003 },
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
function condition_EVENT_GADGET_STATE_CHANGE_610005(context, evt)
	if 610001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_610005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220610, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_610006(context, evt)
	if 610001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_610006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220610, 2)
	
	return 0
end

require "V2_0/ElectricCore"