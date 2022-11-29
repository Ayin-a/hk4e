-- 基础信息
local base_info = {
	group_id = 133220396
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
	{ config_id = 396001, gadget_id = 70330064, pos = { x = -2712.893, y = 211.712, z = -4014.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 11 },
	{ config_id = 396002, gadget_id = 70900380, pos = { x = -2713.951, y = 216.114, z = -4004.292 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 11 },
	{ config_id = 396003, gadget_id = 70900380, pos = { x = -2714.986, y = 225.431, z = -3996.024 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 11 },
	{ config_id = 396005, gadget_id = 70900380, pos = { x = -2715.894, y = 235.540, z = -3988.953 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1396004, name = "GADGET_STATE_CHANGE_396004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_396004", action = "action_EVENT_GADGET_STATE_CHANGE_396004", trigger_count = 0 },
	{ config_id = 1396006, name = "GADGET_STATE_CHANGE_396006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_396006", action = "action_EVENT_GADGET_STATE_CHANGE_396006", trigger_count = 0 }
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
		gadgets = { 396001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_396004", "GADGET_STATE_CHANGE_396006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 396002, 396003, 396005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_396004(context, evt)
	if 396001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_396004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220396, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_396006(context, evt)
	if 396001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_396006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220396, 2)
	
	return 0
end

require "V2_0/ElectricCore"