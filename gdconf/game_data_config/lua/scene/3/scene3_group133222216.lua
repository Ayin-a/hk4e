-- 基础信息
local base_info = {
	group_id = 133222216
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
	{ config_id = 216001, gadget_id = 70330064, pos = { x = -4552.430, y = 358.619, z = -4264.149 }, rot = { x = 0.657, y = 191.660, z = 356.584 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 216002, gadget_id = 70900380, pos = { x = -4556.970, y = 361.877, z = -4258.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 216003, gadget_id = 70900380, pos = { x = -4561.988, y = 369.567, z = -4247.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 216004, gadget_id = 70900380, pos = { x = -4566.051, y = 378.288, z = -4236.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1216005, name = "GADGET_STATE_CHANGE_216005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_216005", action = "action_EVENT_GADGET_STATE_CHANGE_216005", trigger_count = 0 },
	{ config_id = 1216006, name = "GADGET_STATE_CHANGE_216006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_216006", action = "action_EVENT_GADGET_STATE_CHANGE_216006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 216007, gadget_id = 70900380, pos = { x = -4557.817, y = 400.966, z = -4258.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
	}
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 216001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_216005", "GADGET_STATE_CHANGE_216006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 216002, 216003, 216004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_216005(context, evt)
	if 216001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_216005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222216, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_216006(context, evt)
	if 216001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_216006(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222216, 3)
	
	return 0
end

require "V2_0/ElectricCore"