-- 基础信息
local base_info = {
	group_id = 133213539
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
	{ config_id = 539001, gadget_id = 70330064, pos = { x = -3278.239, y = 203.864, z = -3281.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 12 },
	{ config_id = 539002, gadget_id = 70900380, pos = { x = -3285.771, y = 210.546, z = -3283.482 }, rot = { x = 1.306, y = 256.418, z = 359.982 }, level = 27, area_id = 12 },
	{ config_id = 539003, gadget_id = 70900380, pos = { x = -3294.098, y = 219.648, z = -3285.492 }, rot = { x = 1.306, y = 256.418, z = 359.982 }, level = 27, area_id = 12 },
	{ config_id = 539004, gadget_id = 70900380, pos = { x = -3301.281, y = 229.573, z = -3287.197 }, rot = { x = 1.306, y = 256.418, z = 359.982 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1539005, name = "GADGET_STATE_CHANGE_539005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_539005", action = "action_EVENT_GADGET_STATE_CHANGE_539005", trigger_count = 0 },
	{ config_id = 1539006, name = "GADGET_STATE_CHANGE_539006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_539006", action = "action_EVENT_GADGET_STATE_CHANGE_539006", trigger_count = 0 }
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
		gadgets = { 539001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_539005", "GADGET_STATE_CHANGE_539006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 539002, 539003, 539004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_539005(context, evt)
	if 539001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_539005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213539, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_539006(context, evt)
	if 539001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_539006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213539, 2)
	
	return 0
end

require "V2_0/ElectricCore"