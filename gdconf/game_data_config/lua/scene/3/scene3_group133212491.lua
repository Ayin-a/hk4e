-- 基础信息
local base_info = {
	group_id = 133212491
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
	{ config_id = 491001, gadget_id = 70330064, pos = { x = -3881.846, y = 199.470, z = -2176.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 491002, gadget_id = 70900380, pos = { x = -3883.790, y = 205.319, z = -2177.868 }, rot = { x = 0.000, y = 4.376, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 491003, gadget_id = 70900380, pos = { x = -3883.790, y = 220.154, z = -2177.868 }, rot = { x = 0.000, y = 4.376, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 491004, gadget_id = 70900380, pos = { x = -3883.790, y = 235.212, z = -2177.868 }, rot = { x = 0.000, y = 4.376, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 491005, gadget_id = 70900380, pos = { x = -3891.369, y = 242.522, z = -2189.961 }, rot = { x = 0.000, y = 4.376, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 491006, gadget_id = 70900380, pos = { x = -3901.147, y = 250.659, z = -2205.177 }, rot = { x = 0.000, y = 4.376, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 491007, gadget_id = 70900380, pos = { x = -3908.485, y = 256.394, z = -2214.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1491008, name = "GADGET_STATE_CHANGE_491008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_491008", action = "action_EVENT_GADGET_STATE_CHANGE_491008", trigger_count = 0 },
	{ config_id = 1491009, name = "GADGET_STATE_CHANGE_491009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_491009", action = "action_EVENT_GADGET_STATE_CHANGE_491009", trigger_count = 0 }
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
		gadgets = { 491001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_491008", "GADGET_STATE_CHANGE_491009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 491002, 491003, 491004, 491005, 491006, 491007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_491008(context, evt)
	if 491001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_491008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212491, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_491009(context, evt)
	if 491001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_491009(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212491, 2)
	
	return 0
end

require "V2_0/ElectricCore"