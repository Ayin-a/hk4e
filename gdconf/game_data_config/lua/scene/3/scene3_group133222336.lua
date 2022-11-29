-- 基础信息
local base_info = {
	group_id = 133222336
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
	{ config_id = 336001, gadget_id = 70330064, pos = { x = -5007.520, y = 266.652, z = -4249.038 }, rot = { x = 31.831, y = 359.641, z = 359.284 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 336002, gadget_id = 70900380, pos = { x = -5006.411, y = 271.972, z = -4248.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 336003, gadget_id = 70900380, pos = { x = -5000.333, y = 285.439, z = -4248.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 336004, gadget_id = 70900380, pos = { x = -4994.171, y = 299.093, z = -4247.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 336006, gadget_id = 70900380, pos = { x = -4987.907, y = 312.979, z = -4246.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1336007, name = "GADGET_STATE_CHANGE_336007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_336007", action = "action_EVENT_GADGET_STATE_CHANGE_336007", trigger_count = 0 },
	{ config_id = 1336008, name = "GADGET_STATE_CHANGE_336008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_336008", action = "action_EVENT_GADGET_STATE_CHANGE_336008", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 336005, gadget_id = 70900380, pos = { x = -4994.171, y = 299.093, z = -4247.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
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
		gadgets = { 336001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_336007", "GADGET_STATE_CHANGE_336008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 336002, 336003, 336004, 336006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_336007(context, evt)
	if 336001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_336007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222336, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_336008(context, evt)
	if 336001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_336008(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222336, 2)
	
	return 0
end

require "V2_0/ElectricCore"