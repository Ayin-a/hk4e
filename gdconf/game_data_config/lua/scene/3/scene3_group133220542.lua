-- 基础信息
local base_info = {
	group_id = 133220542
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
	{ config_id = 542001, gadget_id = 70330064, pos = { x = -1889.075, y = 210.290, z = -4281.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 11 },
	{ config_id = 542002, gadget_id = 70900380, pos = { x = -1889.075, y = 215.582, z = -4281.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 542003, gadget_id = 70900380, pos = { x = -1889.075, y = 230.393, z = -4281.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 542004, gadget_id = 70900380, pos = { x = -1889.075, y = 244.852, z = -4281.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 542007, gadget_id = 70900380, pos = { x = -1889.075, y = 260.097, z = -4281.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1542005, name = "GADGET_STATE_CHANGE_542005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_542005", action = "action_EVENT_GADGET_STATE_CHANGE_542005", trigger_count = 0 },
	{ config_id = 1542006, name = "GADGET_STATE_CHANGE_542006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_542006", action = "action_EVENT_GADGET_STATE_CHANGE_542006", trigger_count = 0 }
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
		gadgets = { 542001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_542005", "GADGET_STATE_CHANGE_542006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 542002, 542003, 542004, 542007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_542005(context, evt)
	if 542001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_542005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220542, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_542006(context, evt)
	if 542001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_542006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220542, 2)
	
	return 0
end

require "V2_0/ElectricCore"