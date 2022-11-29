-- 基础信息
local base_info = {
	group_id = 133217288
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
	{ config_id = 288001, gadget_id = 70330064, pos = { x = -4389.858, y = 200.434, z = -3655.822 }, rot = { x = 357.947, y = 240.698, z = 353.328 }, level = 27, interact_id = 35, area_id = 14 },
	{ config_id = 288002, gadget_id = 70900380, pos = { x = -4394.073, y = 204.264, z = -3665.028 }, rot = { x = 359.101, y = 190.340, z = 0.948 }, level = 27, area_id = 14 },
	{ config_id = 288003, gadget_id = 70900380, pos = { x = -4396.844, y = 204.954, z = -3680.263 }, rot = { x = 359.101, y = 190.340, z = 0.948 }, level = 27, area_id = 14 },
	{ config_id = 288004, gadget_id = 70900380, pos = { x = -4399.411, y = 203.673, z = -3694.060 }, rot = { x = 359.101, y = 190.340, z = 0.948 }, level = 27, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1288005, name = "GADGET_STATE_CHANGE_288005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_288005", action = "action_EVENT_GADGET_STATE_CHANGE_288005", trigger_count = 0 },
	{ config_id = 1288006, name = "GADGET_STATE_CHANGE_288006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_288006", action = "action_EVENT_GADGET_STATE_CHANGE_288006", trigger_count = 0 }
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
		gadgets = { 288001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_288005", "GADGET_STATE_CHANGE_288006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 288002, 288003, 288004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_288005(context, evt)
	if 288001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_288005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217288, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_288006(context, evt)
	if 288001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_288006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217288, 2)
	
	return 0
end

require "V2_0/ElectricCore"