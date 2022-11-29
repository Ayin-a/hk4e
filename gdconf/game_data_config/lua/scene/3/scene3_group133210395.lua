-- 基础信息
local base_info = {
	group_id = 133210395
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
	{ config_id = 395001, gadget_id = 70330064, pos = { x = -3595.061, y = 176.592, z = -1138.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 17 },
	{ config_id = 395002, gadget_id = 70900380, pos = { x = -3601.531, y = 181.272, z = -1135.758 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 17 },
	{ config_id = 395003, gadget_id = 70900380, pos = { x = -3601.790, y = 191.588, z = -1135.149 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 27, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1395005, name = "GADGET_STATE_CHANGE_395005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_395005", action = "action_EVENT_GADGET_STATE_CHANGE_395005", trigger_count = 0 },
	{ config_id = 1395006, name = "GADGET_STATE_CHANGE_395006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_395006", action = "action_EVENT_GADGET_STATE_CHANGE_395006", trigger_count = 0 }
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
		gadgets = { 395001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_395005", "GADGET_STATE_CHANGE_395006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 395002, 395003 },
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
function condition_EVENT_GADGET_STATE_CHANGE_395005(context, evt)
	if 395001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_395005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210395, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_395006(context, evt)
	if 395001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_395006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210395, 2)
	
	return 0
end

require "V2_0/ElectricCore"