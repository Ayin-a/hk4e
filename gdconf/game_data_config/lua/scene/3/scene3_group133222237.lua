-- 基础信息
local base_info = {
	group_id = 133222237
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
	{ config_id = 237001, gadget_id = 70330064, pos = { x = -4275.708, y = 221.468, z = -4152.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, interact_id = 35, area_id = 14 },
	{ config_id = 237002, gadget_id = 70900380, pos = { x = -4293.944, y = 230.366, z = -4157.879 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 237003, gadget_id = 70900380, pos = { x = -4306.263, y = 240.295, z = -4160.836 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 237004, gadget_id = 70900380, pos = { x = -4281.314, y = 225.154, z = -4153.495 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1237005, name = "GADGET_STATE_CHANGE_237005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_237005", action = "action_EVENT_GADGET_STATE_CHANGE_237005", trigger_count = 0 },
	{ config_id = 1237006, name = "GADGET_STATE_CHANGE_237006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_237006", action = "action_EVENT_GADGET_STATE_CHANGE_237006", trigger_count = 0 }
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
		gadgets = { 237001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_237005", "GADGET_STATE_CHANGE_237006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 237002, 237003, 237004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_237005(context, evt)
	if 237001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_237005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222237, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_237006(context, evt)
	if 237001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_237006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222237, 2)
	
	return 0
end

require "V2_0/ElectricCore"