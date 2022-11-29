-- 基础信息
local base_info = {
	group_id = 133212293
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
	{ config_id = 293001, gadget_id = 70330064, pos = { x = -3872.357, y = 312.744, z = -2341.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 293002, gadget_id = 70900380, pos = { x = -3874.058, y = 312.006, z = -2330.654 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 13 },
	{ config_id = 293003, gadget_id = 70900380, pos = { x = -3879.891, y = 298.296, z = -2298.933 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 13 },
	{ config_id = 293007, gadget_id = 70900380, pos = { x = -3875.966, y = 302.354, z = -2318.266 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 13 },
	{ config_id = 293008, gadget_id = 70900380, pos = { x = -3892.375, y = 302.368, z = -2269.055 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1293005, name = "GADGET_STATE_CHANGE_293005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_293005", action = "action_EVENT_GADGET_STATE_CHANGE_293005", trigger_count = 0 },
	{ config_id = 1293006, name = "GADGET_STATE_CHANGE_293006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_293006", action = "action_EVENT_GADGET_STATE_CHANGE_293006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 293004, gadget_id = 70900380, pos = { x = -3895.524, y = 304.100, z = -2260.022 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 13 }
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
		gadgets = { 293001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_293005", "GADGET_STATE_CHANGE_293006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 293002, 293003, 293007, 293008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_293005(context, evt)
	if 293001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_293005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212293, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_293006(context, evt)
	if 293001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_293006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212293, 2)
	
	return 0
end

require "V2_0/ElectricCore"