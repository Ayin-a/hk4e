-- 基础信息
local base_info = {
	group_id = 133222208
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
	{ config_id = 208001, gadget_id = 70330064, pos = { x = -4407.932, y = 200.802, z = -4556.896 }, rot = { x = 355.596, y = 0.369, z = 350.248 }, level = 27, interact_id = 35, area_id = 14 },
	{ config_id = 208002, gadget_id = 70900380, pos = { x = -4414.815, y = 212.538, z = -4547.417 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 208003, gadget_id = 70900380, pos = { x = -4421.871, y = 221.073, z = -4543.912 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 208004, gadget_id = 70900380, pos = { x = -4427.977, y = 226.662, z = -4543.316 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 208007, gadget_id = 70900380, pos = { x = -4409.838, y = 207.122, z = -4552.004 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1208005, name = "GADGET_STATE_CHANGE_208005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_208005", action = "action_EVENT_GADGET_STATE_CHANGE_208005", trigger_count = 0 },
	{ config_id = 1208006, name = "GADGET_STATE_CHANGE_208006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_208006", action = "action_EVENT_GADGET_STATE_CHANGE_208006", trigger_count = 0 }
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
		gadgets = { 208001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_208005", "GADGET_STATE_CHANGE_208006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 208002, 208003, 208004, 208007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_208005(context, evt)
	if 208001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_208005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222208, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_208006(context, evt)
	if 208001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_208006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222208, 2)
	
	return 0
end

require "V2_0/ElectricCore"