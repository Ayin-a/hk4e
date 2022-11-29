-- 基础信息
local base_info = {
	group_id = 133223268
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
	{ config_id = 268001, gadget_id = 70330064, pos = { x = -6003.126, y = 282.025, z = -2569.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 18 },
	{ config_id = 268002, gadget_id = 70900380, pos = { x = -6001.115, y = 288.085, z = -2575.545 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 268003, gadget_id = 70900380, pos = { x = -5996.195, y = 292.404, z = -2579.450 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 268004, gadget_id = 70900380, pos = { x = -5991.274, y = 296.787, z = -2584.387 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 268007, gadget_id = 70900380, pos = { x = -5986.438, y = 301.818, z = -2584.387 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1268005, name = "GADGET_STATE_CHANGE_268005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_268005", action = "action_EVENT_GADGET_STATE_CHANGE_268005", trigger_count = 0 },
	{ config_id = 1268006, name = "GADGET_STATE_CHANGE_268006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_268006", action = "action_EVENT_GADGET_STATE_CHANGE_268006", trigger_count = 0 }
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
		gadgets = { 268001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_268005", "GADGET_STATE_CHANGE_268006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 268002, 268003, 268004, 268007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_268005(context, evt)
	if 268001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_268005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223268, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_268006(context, evt)
	if 268001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_268006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223268, 2)
	
	return 0
end

require "V2_0/ElectricCore"