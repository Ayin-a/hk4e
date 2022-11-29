-- 基础信息
local base_info = {
	group_id = 133210428
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
	{ config_id = 428001, gadget_id = 70330064, pos = { x = -3723.059, y = 185.612, z = -992.866 }, rot = { x = 14.027, y = 0.771, z = 6.262 }, level = 27, interact_id = 35, area_id = 17 },
	{ config_id = 428002, gadget_id = 70900380, pos = { x = -3731.427, y = 188.455, z = -994.625 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 17 },
	{ config_id = 428003, gadget_id = 70900380, pos = { x = -3714.102, y = 192.086, z = -993.658 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1428005, name = "GADGET_STATE_CHANGE_428005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_428005", action = "action_EVENT_GADGET_STATE_CHANGE_428005", trigger_count = 0 },
	{ config_id = 1428006, name = "GADGET_STATE_CHANGE_428006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_428006", action = "action_EVENT_GADGET_STATE_CHANGE_428006", trigger_count = 0 }
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
		gadgets = { 428001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_428005", "GADGET_STATE_CHANGE_428006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 428002, 428003 },
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
function condition_EVENT_GADGET_STATE_CHANGE_428005(context, evt)
	if 428001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_428005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210428, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_428006(context, evt)
	if 428001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_428006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210428, 2)
	
	return 0
end

require "V2_0/ElectricCore"