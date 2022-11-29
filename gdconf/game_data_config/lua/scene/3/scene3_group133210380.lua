-- 基础信息
local base_info = {
	group_id = 133210380
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
	{ config_id = 380001, gadget_id = 70330064, pos = { x = -3568.551, y = 192.483, z = -815.785 }, rot = { x = 349.845, y = 238.444, z = 357.595 }, level = 27, interact_id = 35, area_id = 17 },
	{ config_id = 380002, gadget_id = 70900380, pos = { x = -3567.751, y = 187.609, z = -798.291 }, rot = { x = 0.000, y = 164.279, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1380005, name = "GADGET_STATE_CHANGE_380005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_380005", action = "action_EVENT_GADGET_STATE_CHANGE_380005", trigger_count = 0 },
	{ config_id = 1380006, name = "GADGET_STATE_CHANGE_380006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_380006", action = "action_EVENT_GADGET_STATE_CHANGE_380006", trigger_count = 0 }
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
		gadgets = { 380001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_380005", "GADGET_STATE_CHANGE_380006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 380002 },
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
function condition_EVENT_GADGET_STATE_CHANGE_380005(context, evt)
	if 380001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_380005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210380, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_380006(context, evt)
	if 380001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_380006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210380, 2)
	
	return 0
end

require "V2_0/ElectricCore"