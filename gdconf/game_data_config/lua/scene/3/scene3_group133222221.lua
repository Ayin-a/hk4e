-- 基础信息
local base_info = {
	group_id = 133222221
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
	{ config_id = 221001, gadget_id = 70330064, pos = { x = -4570.180, y = 416.183, z = -4174.073 }, rot = { x = 2.858, y = 261.311, z = 16.822 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 221002, gadget_id = 70900380, pos = { x = -4564.027, y = 419.513, z = -4175.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 221003, gadget_id = 70900380, pos = { x = -4552.530, y = 421.592, z = -4177.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 221004, gadget_id = 70900380, pos = { x = -4535.796, y = 421.679, z = -4180.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 221005, gadget_id = 70330064, pos = { x = -4528.263, y = 420.082, z = -4182.926 }, rot = { x = 24.119, y = 264.726, z = 1.042 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 221010, gadget_id = 70900380, pos = { x = -4564.027, y = 419.513, z = -4175.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 221011, gadget_id = 70900380, pos = { x = -4552.530, y = 421.592, z = -4177.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 221012, gadget_id = 70900380, pos = { x = -4535.796, y = 421.679, z = -4180.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 221001
	{ config_id = 1221006, name = "GADGET_STATE_CHANGE_221006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_221006", action = "action_EVENT_GADGET_STATE_CHANGE_221006", trigger_count = 0 },
	-- 221001
	{ config_id = 1221007, name = "GADGET_STATE_CHANGE_221007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_221007", action = "action_EVENT_GADGET_STATE_CHANGE_221007", trigger_count = 0 },
	-- 221005
	{ config_id = 1221008, name = "GADGET_STATE_CHANGE_221008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_221008", action = "action_EVENT_GADGET_STATE_CHANGE_221008", trigger_count = 0 },
	-- 221005
	{ config_id = 1221009, name = "GADGET_STATE_CHANGE_221009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_221009", action = "action_EVENT_GADGET_STATE_CHANGE_221009", trigger_count = 0 }
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
		gadgets = { 221001, 221005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_221006", "GADGET_STATE_CHANGE_221007", "GADGET_STATE_CHANGE_221008", "GADGET_STATE_CHANGE_221009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 221002, 221003, 221004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 221010, 221011, 221012 },
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
function condition_EVENT_GADGET_STATE_CHANGE_221006(context, evt)
	if 221001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_221006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222221, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222221, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_221007(context, evt)
	if 221001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_221007(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222221, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_221008(context, evt)
	if 221005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_221008(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222221, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222221, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_221009(context, evt)
	if 221005 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_221009(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222221, 4)
	
	return 0
end

require "V2_0/ElectricCore"