-- 基础信息
local base_info = {
	group_id = 133212369
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
	{ config_id = 369001, gadget_id = 70330064, pos = { x = -3741.030, y = 218.040, z = -2546.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 369002, gadget_id = 70330064, pos = { x = -3772.053, y = 217.617, z = -2561.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 369003, gadget_id = 70900380, pos = { x = -3755.674, y = 210.855, z = -2556.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 369004, gadget_id = 70900380, pos = { x = -3755.674, y = 225.072, z = -2556.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 369005, gadget_id = 70900380, pos = { x = -3755.674, y = 240.606, z = -2556.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 369006, gadget_id = 70900380, pos = { x = -3755.674, y = 255.379, z = -2556.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 369007, gadget_id = 70900380, pos = { x = -3755.674, y = 270.558, z = -2556.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 369008, gadget_id = 70330090, pos = { x = -3755.674, y = 199.193, z = -2556.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1369009, name = "GADGET_STATE_CHANGE_369009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369009", action = "action_EVENT_GADGET_STATE_CHANGE_369009", trigger_count = 0 },
	{ config_id = 1369010, name = "GADGET_STATE_CHANGE_369010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369010", action = "action_EVENT_GADGET_STATE_CHANGE_369010", trigger_count = 0 }
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
		gadgets = { 369001, 369002, 369008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_369009", "GADGET_STATE_CHANGE_369010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 369003, 369004, 369005, 369006, 369007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_369009(context, evt)
	if 369008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_369009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212369, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_369010(context, evt)
	if 369008 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_369010(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212369, 2)
	
	return 0
end

require "V2_0/ElectricCore"