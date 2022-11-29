-- 基础信息
local base_info = {
	group_id = 133223171
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
	{ config_id = 171001, gadget_id = 70330064, pos = { x = -6296.187, y = 336.804, z = -2709.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 18 },
	{ config_id = 171002, gadget_id = 70900380, pos = { x = -6300.726, y = 340.420, z = -2702.240 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 171004, gadget_id = 70900380, pos = { x = -6309.238, y = 352.389, z = -2671.401 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 171007, gadget_id = 70900380, pos = { x = -6305.378, y = 344.773, z = -2689.979 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1171005, name = "GADGET_STATE_CHANGE_171005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_171005", action = "action_EVENT_GADGET_STATE_CHANGE_171005", trigger_count = 0 },
	{ config_id = 1171006, name = "GADGET_STATE_CHANGE_171006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_171006", action = "action_EVENT_GADGET_STATE_CHANGE_171006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 171003, gadget_id = 70900380, pos = { x = -6307.304, y = 343.903, z = -2684.152 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 }
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
		gadgets = { 171001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_171005", "GADGET_STATE_CHANGE_171006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 171002, 171004, 171007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_171005(context, evt)
	if 171001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_171005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223171, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_171006(context, evt)
	if 171001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_171006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223171, 2)
	
	return 0
end

require "V2_0/ElectricCore"