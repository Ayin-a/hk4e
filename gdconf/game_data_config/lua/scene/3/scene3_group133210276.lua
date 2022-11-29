-- 基础信息
local base_info = {
	group_id = 133210276
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
	{ config_id = 276007, gadget_id = 70330064, pos = { x = -3765.516, y = 125.855, z = -936.863 }, rot = { x = 6.141, y = 207.425, z = 359.908 }, level = 30, interact_id = 35, area_id = 17 },
	{ config_id = 276008, gadget_id = 70900380, pos = { x = -3771.344, y = 130.926, z = -947.167 }, rot = { x = 0.000, y = 183.558, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 276009, gadget_id = 70900380, pos = { x = -3777.493, y = 139.193, z = -957.633 }, rot = { x = 0.000, y = 183.558, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 276010, gadget_id = 70900380, pos = { x = -3811.898, y = 141.522, z = -1002.491 }, rot = { x = 0.000, y = 183.558, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 276011, gadget_id = 70900380, pos = { x = -3816.466, y = 150.300, z = -1017.201 }, rot = { x = 0.000, y = 183.558, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1276005, name = "GADGET_STATE_CHANGE_276005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_276005", action = "action_EVENT_GADGET_STATE_CHANGE_276005", trigger_count = 0 },
	{ config_id = 1276006, name = "GADGET_STATE_CHANGE_276006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_276006", action = "action_EVENT_GADGET_STATE_CHANGE_276006", trigger_count = 0 }
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
		gadgets = { 276007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_276005", "GADGET_STATE_CHANGE_276006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 276008, 276009, 276010, 276011 },
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
function condition_EVENT_GADGET_STATE_CHANGE_276005(context, evt)
	if 276007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_276005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210276, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_276006(context, evt)
	if 276007 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_276006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210276, 2)
	
	return 0
end

require "V2_0/ElectricCore"