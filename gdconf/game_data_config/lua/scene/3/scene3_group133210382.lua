-- 基础信息
local base_info = {
	group_id = 133210382
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
	{ config_id = 382001, gadget_id = 70330064, pos = { x = -3620.258, y = 122.301, z = -760.352 }, rot = { x = 358.937, y = 233.420, z = 352.606 }, level = 27, interact_id = 35, area_id = 17 },
	{ config_id = 382002, gadget_id = 70900380, pos = { x = -3606.153, y = 126.990, z = -767.034 }, rot = { x = 0.000, y = 164.279, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 382007, gadget_id = 70900380, pos = { x = -3587.155, y = 132.240, z = -776.660 }, rot = { x = 0.000, y = 164.279, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 382008, gadget_id = 70900380, pos = { x = -3584.687, y = 139.179, z = -790.007 }, rot = { x = 0.000, y = 164.279, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 382009, gadget_id = 70900380, pos = { x = -3583.726, y = 149.032, z = -804.551 }, rot = { x = 0.000, y = 164.279, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1382005, name = "GADGET_STATE_CHANGE_382005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_382005", action = "action_EVENT_GADGET_STATE_CHANGE_382005", trigger_count = 0 },
	{ config_id = 1382006, name = "GADGET_STATE_CHANGE_382006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_382006", action = "action_EVENT_GADGET_STATE_CHANGE_382006", trigger_count = 0 }
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
		gadgets = { 382001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_382005", "GADGET_STATE_CHANGE_382006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 382002, 382007, 382008, 382009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_382005(context, evt)
	if 382001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_382005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210382, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_382006(context, evt)
	if 382001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_382006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210382, 2)
	
	return 0
end

require "V2_0/ElectricCore"