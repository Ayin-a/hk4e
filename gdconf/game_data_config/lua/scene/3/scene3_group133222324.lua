-- 基础信息
local base_info = {
	group_id = 133222324
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
	{ config_id = 324001, gadget_id = 70330064, pos = { x = -4650.772, y = 434.996, z = -4107.320 }, rot = { x = 34.265, y = 315.303, z = 330.938 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 324002, gadget_id = 70900380, pos = { x = -4652.148, y = 438.612, z = -4100.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 324003, gadget_id = 70900380, pos = { x = -4655.492, y = 441.922, z = -4088.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 324004, gadget_id = 70900380, pos = { x = -4658.270, y = 440.474, z = -4073.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 324005, gadget_id = 70900380, pos = { x = -4660.571, y = 435.622, z = -4062.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 324006, gadget_id = 70900380, pos = { x = -4652.148, y = 438.612, z = -4100.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 324007, gadget_id = 70900380, pos = { x = -4655.492, y = 441.922, z = -4088.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 324008, gadget_id = 70900380, pos = { x = -4658.270, y = 440.474, z = -4073.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 324009, gadget_id = 70330064, pos = { x = -4661.160, y = 428.084, z = -4054.115 }, rot = { x = 357.977, y = 313.695, z = 357.170 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 324014, gadget_id = 70900380, pos = { x = -4660.571, y = 435.622, z = -4062.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 324001
	{ config_id = 1324010, name = "GADGET_STATE_CHANGE_324010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_324010", action = "action_EVENT_GADGET_STATE_CHANGE_324010", trigger_count = 0 },
	-- 324001
	{ config_id = 1324011, name = "GADGET_STATE_CHANGE_324011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_324011", action = "action_EVENT_GADGET_STATE_CHANGE_324011", trigger_count = 0 },
	-- 324009
	{ config_id = 1324012, name = "GADGET_STATE_CHANGE_324012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_324012", action = "action_EVENT_GADGET_STATE_CHANGE_324012", trigger_count = 0 },
	-- 324009
	{ config_id = 1324013, name = "GADGET_STATE_CHANGE_324013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_324013", action = "action_EVENT_GADGET_STATE_CHANGE_324013", trigger_count = 0 }
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
		gadgets = { 324001, 324009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_324010", "GADGET_STATE_CHANGE_324011", "GADGET_STATE_CHANGE_324012", "GADGET_STATE_CHANGE_324013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 324002, 324003, 324004, 324005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 324006, 324007, 324008, 324014 },
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
function condition_EVENT_GADGET_STATE_CHANGE_324010(context, evt)
	if 324001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_324010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222324, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222324, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_324011(context, evt)
	if 324001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_324011(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222324, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_324012(context, evt)
	if 324009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_324012(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222324, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222324, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_324013(context, evt)
	if 324009 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_324013(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222324, 4)
	
	return 0
end

require "V2_0/ElectricCore"