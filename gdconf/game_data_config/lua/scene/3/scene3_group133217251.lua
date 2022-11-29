-- 基础信息
local base_info = {
	group_id = 133217251
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
	{ config_id = 251001, gadget_id = 70330064, pos = { x = -4396.164, y = 239.716, z = -3872.283 }, rot = { x = 18.360, y = 357.716, z = 345.938 }, level = 27, interact_id = 35, area_id = 14 },
	{ config_id = 251002, gadget_id = 70900380, pos = { x = -4400.370, y = 245.696, z = -3873.634 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 251003, gadget_id = 70900380, pos = { x = -4407.889, y = 255.426, z = -3903.194 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 251004, gadget_id = 70900380, pos = { x = -4404.042, y = 254.130, z = -3881.925 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 251007, gadget_id = 70330064, pos = { x = -4469.270, y = 230.000, z = -3931.192 }, rot = { x = 15.292, y = 358.559, z = 344.587 }, level = 30, interact_id = 35, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1251005, name = "GADGET_STATE_CHANGE_251005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_251005", action = "action_EVENT_GADGET_STATE_CHANGE_251005", trigger_count = 0 },
	{ config_id = 1251006, name = "GADGET_STATE_CHANGE_251006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_251006", action = "action_EVENT_GADGET_STATE_CHANGE_251006", trigger_count = 0 }
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
		gadgets = { 251001, 251007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_251005", "GADGET_STATE_CHANGE_251006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 251002, 251003, 251004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_251005(context, evt)
	if 251001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_251005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217251, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_251006(context, evt)
	if 251001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_251006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217251, 2)
	
	return 0
end

require "V2_0/ElectricCore"