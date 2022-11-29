-- 基础信息
local base_info = {
	group_id = 133217371
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
	{ config_id = 371001, gadget_id = 70330064, pos = { x = -4699.141, y = 208.475, z = -4112.028 }, rot = { x = 355.559, y = 0.242, z = 353.758 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 371002, gadget_id = 70900380, pos = { x = -4696.550, y = 213.796, z = -4111.778 }, rot = { x = 1.000, y = 1.000, z = 1.000 }, level = 30, area_id = 14 },
	{ config_id = 371003, gadget_id = 70900380, pos = { x = -4696.804, y = 228.621, z = -4111.515 }, rot = { x = 1.000, y = 1.000, z = 1.000 }, level = 30, area_id = 14 },
	{ config_id = 371004, gadget_id = 70900380, pos = { x = -4697.065, y = 243.832, z = -4111.245 }, rot = { x = 1.000, y = 1.000, z = 1.000 }, level = 30, area_id = 14 },
	{ config_id = 371005, gadget_id = 70900380, pos = { x = -4697.271, y = 255.867, z = -4111.031 }, rot = { x = 1.000, y = 1.000, z = 1.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1371006, name = "GADGET_STATE_CHANGE_371006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_371006", action = "action_EVENT_GADGET_STATE_CHANGE_371006", trigger_count = 0 },
	{ config_id = 1371007, name = "GADGET_STATE_CHANGE_371007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_371007", action = "action_EVENT_GADGET_STATE_CHANGE_371007", trigger_count = 0 }
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
		gadgets = { 371001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_371006", "GADGET_STATE_CHANGE_371007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 371002, 371003, 371004, 371005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_371006(context, evt)
	if 371001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_371006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217371, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_371007(context, evt)
	if 371001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_371007(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217371, 2)
	
	return 0
end

require "V2_0/ElectricCore"