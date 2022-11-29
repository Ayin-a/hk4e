-- 基础信息
local base_info = {
	group_id = 133225269
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
	{ config_id = 269001, gadget_id = 70330064, pos = { x = -6717.749, y = 211.471, z = -2673.458 }, rot = { x = 343.562, y = 359.140, z = 356.608 }, level = 27, interact_id = 35, area_id = 18 },
	{ config_id = 269002, gadget_id = 70900380, pos = { x = -6718.597, y = 215.878, z = -2664.642 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 269003, gadget_id = 70900380, pos = { x = -6719.588, y = 220.247, z = -2655.680 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 269004, gadget_id = 70900380, pos = { x = -6719.982, y = 223.615, z = -2646.432 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1269005, name = "GADGET_STATE_CHANGE_269005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_269005", action = "action_EVENT_GADGET_STATE_CHANGE_269005", trigger_count = 0 },
	{ config_id = 1269006, name = "GADGET_STATE_CHANGE_269006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_269006", action = "action_EVENT_GADGET_STATE_CHANGE_269006", trigger_count = 0 }
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
		gadgets = { 269001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_269005", "GADGET_STATE_CHANGE_269006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 269002, 269003, 269004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_269005(context, evt)
	if 269001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_269005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225269, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_269006(context, evt)
	if 269001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_269006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133225269, 2)
	
	return 0
end

require "V2_0/ElectricCore"