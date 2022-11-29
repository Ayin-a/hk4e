-- 基础信息
local base_info = {
	group_id = 133213073
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
	{ config_id = 73001, gadget_id = 70330064, pos = { x = -3952.521, y = 200.160, z = -3312.359 }, rot = { x = 352.933, y = 359.462, z = 6.261 }, level = 27, interact_id = 35, area_id = 12 },
	{ config_id = 73002, gadget_id = 70900380, pos = { x = -3956.700, y = 205.871, z = -3317.721 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 },
	{ config_id = 73003, gadget_id = 70900380, pos = { x = -3968.514, y = 213.459, z = -3332.639 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 },
	{ config_id = 73004, gadget_id = 70900380, pos = { x = -3982.424, y = 221.138, z = -3350.024 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 },
	{ config_id = 73007, gadget_id = 70900380, pos = { x = -3995.952, y = 228.107, z = -3367.474 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 },
	{ config_id = 73008, gadget_id = 70900380, pos = { x = -4028.314, y = 228.107, z = -3409.024 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 },
	{ config_id = 73009, gadget_id = 70900380, pos = { x = -4044.481, y = 221.138, z = -3430.986 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 },
	{ config_id = 73010, gadget_id = 70900380, pos = { x = -4059.716, y = 214.619, z = -3450.948 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 },
	{ config_id = 73011, gadget_id = 70900380, pos = { x = -4073.387, y = 207.234, z = -3468.662 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 },
	{ config_id = 73012, gadget_id = 70330064, pos = { x = -4078.101, y = 203.018, z = -3478.286 }, rot = { x = 359.514, y = 2.750, z = 352.480 }, level = 27, interact_id = 35, area_id = 12 },
	{ config_id = 73015, gadget_id = 70900380, pos = { x = -4011.331, y = 231.144, z = -3387.172 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1073005, name = "GADGET_STATE_CHANGE_73005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_73005", action = "action_EVENT_GADGET_STATE_CHANGE_73005", trigger_count = 0 },
	{ config_id = 1073013, name = "GADGET_STATE_CHANGE_73013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_73013", action = "action_EVENT_GADGET_STATE_CHANGE_73013", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1073006, name = "GADGET_STATE_CHANGE_73006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_73006", action = "action_EVENT_GADGET_STATE_CHANGE_73006", trigger_count = 0 },
		{ config_id = 1073014, name = "GADGET_STATE_CHANGE_73014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_73014", action = "action_EVENT_GADGET_STATE_CHANGE_73014", trigger_count = 0 }
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
		gadgets = { 73001, 73012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_73005", "GADGET_STATE_CHANGE_73013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 73002, 73003, 73004, 73007, 73008, 73009, 73010, 73011, 73015 },
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
function condition_EVENT_GADGET_STATE_CHANGE_73005(context, evt)
	if 73001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_73005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213073, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_73013(context, evt)
	if 73012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_73013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213073, 2)
	
	return 0
end

require "V2_0/ElectricCore"