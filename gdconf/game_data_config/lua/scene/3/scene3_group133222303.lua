-- 基础信息
local base_info = {
	group_id = 133222303
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
	{ config_id = 303001, gadget_id = 70330064, pos = { x = -4490.261, y = 415.798, z = -4185.050 }, rot = { x = 44.819, y = 319.010, z = 18.369 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 303002, gadget_id = 70900380, pos = { x = -4495.093, y = 419.469, z = -4183.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 303003, gadget_id = 70900380, pos = { x = -4504.563, y = 422.666, z = -4178.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 303004, gadget_id = 70900380, pos = { x = -4516.167, y = 424.384, z = -4178.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 303011, gadget_id = 70330064, pos = { x = -4523.810, y = 419.734, z = -4178.715 }, rot = { x = 6.985, y = 312.901, z = 352.747 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 303014, gadget_id = 70900380, pos = { x = -4495.093, y = 419.469, z = -4183.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 303015, gadget_id = 70900380, pos = { x = -4504.563, y = 422.666, z = -4178.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 303016, gadget_id = 70900380, pos = { x = -4516.167, y = 424.384, z = -4178.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 303001
	{ config_id = 1303009, name = "GADGET_STATE_CHANGE_303009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_303009", action = "action_EVENT_GADGET_STATE_CHANGE_303009", trigger_count = 0 },
	-- 303001
	{ config_id = 1303010, name = "GADGET_STATE_CHANGE_303010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_303010", action = "action_EVENT_GADGET_STATE_CHANGE_303010", trigger_count = 0 },
	-- 303011
	{ config_id = 1303012, name = "GADGET_STATE_CHANGE_303012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_303012", action = "action_EVENT_GADGET_STATE_CHANGE_303012", trigger_count = 0 },
	-- 303011
	{ config_id = 1303013, name = "GADGET_STATE_CHANGE_303013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_303013", action = "action_EVENT_GADGET_STATE_CHANGE_303013", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 303005, gadget_id = 70330093, pos = { x = -4490.725, y = 438.549, z = -4156.758 }, rot = { x = 0.000, y = 312.194, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 303006, gadget_id = 70330093, pos = { x = -4488.232, y = 438.549, z = -4151.823 }, rot = { x = 0.000, y = 6.535, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 303007, gadget_id = 70900380, pos = { x = -4481.035, y = 444.534, z = -4151.292 }, rot = { x = 359.838, y = 306.509, z = 1.296 }, level = 30, area_id = 14 },
		{ config_id = 303008, gadget_id = 70900380, pos = { x = -4477.963, y = 453.996, z = -4140.897 }, rot = { x = 359.838, y = 306.509, z = 1.296 }, level = 30, area_id = 14 }
	}
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
		gadgets = { 303001, 303011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_303009", "GADGET_STATE_CHANGE_303010", "GADGET_STATE_CHANGE_303012", "GADGET_STATE_CHANGE_303013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 303002, 303003, 303004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 303014, 303015, 303016 },
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
function condition_EVENT_GADGET_STATE_CHANGE_303009(context, evt)
	if 303001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_303009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222303, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222303, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_303010(context, evt)
	if 303001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_303010(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222303, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_303012(context, evt)
	if 303011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_303012(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222303, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222303, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_303013(context, evt)
	if 303011 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_303013(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222303, 4)
	
	return 0
end

require "V2_0/ElectricCore"