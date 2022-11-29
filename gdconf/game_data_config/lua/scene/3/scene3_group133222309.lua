-- 基础信息
local base_info = {
	group_id = 133222309
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
	{ config_id = 309001, gadget_id = 70330064, pos = { x = -4671.844, y = 451.056, z = -4144.458 }, rot = { x = 358.044, y = 208.328, z = 357.124 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 309002, gadget_id = 70900380, pos = { x = -4674.844, y = 454.930, z = -4143.526 }, rot = { x = 359.580, y = 308.214, z = 1.124 }, level = 30, area_id = 14 },
	{ config_id = 309003, gadget_id = 70900380, pos = { x = -4685.748, y = 455.491, z = -4139.055 }, rot = { x = 359.580, y = 308.214, z = 1.124 }, level = 30, area_id = 14 },
	{ config_id = 309004, gadget_id = 70900380, pos = { x = -4698.516, y = 453.107, z = -4135.096 }, rot = { x = 359.580, y = 308.214, z = 1.124 }, level = 30, area_id = 14 },
	{ config_id = 309007, gadget_id = 70900380, pos = { x = -4704.695, y = 448.085, z = -4133.802 }, rot = { x = 359.580, y = 308.214, z = 1.124 }, level = 30, area_id = 14 },
	{ config_id = 309008, gadget_id = 70330064, pos = { x = -4708.313, y = 442.827, z = -4133.407 }, rot = { x = 21.895, y = 221.731, z = 3.953 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 309011, gadget_id = 70900380, pos = { x = -4674.844, y = 454.930, z = -4143.526 }, rot = { x = 359.580, y = 308.214, z = 1.124 }, level = 30, area_id = 14 },
	{ config_id = 309012, gadget_id = 70900380, pos = { x = -4685.748, y = 455.491, z = -4139.055 }, rot = { x = 359.580, y = 308.214, z = 1.124 }, level = 30, area_id = 14 },
	{ config_id = 309013, gadget_id = 70900380, pos = { x = -4698.516, y = 453.107, z = -4135.096 }, rot = { x = 359.580, y = 308.214, z = 1.124 }, level = 30, area_id = 14 },
	{ config_id = 309014, gadget_id = 70900380, pos = { x = -4704.695, y = 448.085, z = -4133.802 }, rot = { x = 359.580, y = 308.214, z = 1.124 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 309001
	{ config_id = 1309005, name = "GADGET_STATE_CHANGE_309005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_309005", action = "action_EVENT_GADGET_STATE_CHANGE_309005", trigger_count = 0 },
	-- 309001
	{ config_id = 1309006, name = "GADGET_STATE_CHANGE_309006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_309006", action = "action_EVENT_GADGET_STATE_CHANGE_309006", trigger_count = 0 },
	-- 309008
	{ config_id = 1309009, name = "GADGET_STATE_CHANGE_309009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_309009", action = "action_EVENT_GADGET_STATE_CHANGE_309009", trigger_count = 0 },
	-- 309008
	{ config_id = 1309010, name = "GADGET_STATE_CHANGE_309010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_309010", action = "action_EVENT_GADGET_STATE_CHANGE_309010", trigger_count = 0 }
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
		gadgets = { 309001, 309008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_309005", "GADGET_STATE_CHANGE_309006", "GADGET_STATE_CHANGE_309009", "GADGET_STATE_CHANGE_309010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 309002, 309003, 309004, 309007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 309011, 309012, 309013, 309014 },
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
function condition_EVENT_GADGET_STATE_CHANGE_309005(context, evt)
	if 309001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_309005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222309, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222309, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_309006(context, evt)
	if 309001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_309006(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222309, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_309009(context, evt)
	if 309008 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_309009(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222309, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_309010(context, evt)
	if 309008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_309010(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222309, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222309, 3)
	
	return 0
end

require "V2_0/ElectricCore"