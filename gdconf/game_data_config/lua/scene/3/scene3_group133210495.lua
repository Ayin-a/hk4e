-- 基础信息
local base_info = {
	group_id = 133210495
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
	{ config_id = 495001, gadget_id = 70330064, pos = { x = -3651.728, y = 147.747, z = -858.905 }, rot = { x = 351.040, y = 358.892, z = 14.068 }, level = 27, interact_id = 35, area_id = 17 },
	{ config_id = 495002, gadget_id = 70900380, pos = { x = -3641.247, y = 151.969, z = -858.042 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 17 },
	{ config_id = 495003, gadget_id = 70900380, pos = { x = -3630.228, y = 161.551, z = -850.328 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 17 },
	{ config_id = 495004, gadget_id = 70900380, pos = { x = -3617.944, y = 169.228, z = -840.859 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1495005, name = "GADGET_STATE_CHANGE_495005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_495005", action = "action_EVENT_GADGET_STATE_CHANGE_495005", trigger_count = 0 },
	{ config_id = 1495006, name = "GADGET_STATE_CHANGE_495006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_495006", action = "action_EVENT_GADGET_STATE_CHANGE_495006", trigger_count = 0 }
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
		gadgets = { 495001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_495005", "GADGET_STATE_CHANGE_495006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 495002, 495003, 495004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_495005(context, evt)
	if 495001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_495005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210495, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_495006(context, evt)
	if 495001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_495006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210495, 2)
	
	return 0
end

require "V2_0/ElectricCore"