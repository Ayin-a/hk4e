-- 基础信息
local base_info = {
	group_id = 133217364
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
	{ config_id = 364001, gadget_id = 70330064, pos = { x = -4356.995, y = 203.086, z = -4019.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 364002, gadget_id = 70900380, pos = { x = -4356.995, y = 208.395, z = -4019.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 364003, gadget_id = 70900380, pos = { x = -4356.995, y = 223.369, z = -4019.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 364004, gadget_id = 70900380, pos = { x = -4377.511, y = 224.330, z = -4021.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 364005, gadget_id = 70900380, pos = { x = -4391.093, y = 225.301, z = -4021.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 364008, gadget_id = 70900380, pos = { x = -4406.282, y = 227.485, z = -4023.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1364006, name = "GADGET_STATE_CHANGE_364006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_364006", action = "action_EVENT_GADGET_STATE_CHANGE_364006", trigger_count = 0 },
	{ config_id = 1364007, name = "GADGET_STATE_CHANGE_364007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_364007", action = "action_EVENT_GADGET_STATE_CHANGE_364007", trigger_count = 0 }
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
		gadgets = { 364001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_364006", "GADGET_STATE_CHANGE_364007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 364002, 364003, 364004, 364005, 364008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_364006(context, evt)
	if 364001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_364006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217364, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_364007(context, evt)
	if 364001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_364007(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217364, 2)
	
	return 0
end

require "V2_0/ElectricCore"