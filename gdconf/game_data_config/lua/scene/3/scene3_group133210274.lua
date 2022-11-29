-- 基础信息
local base_info = {
	group_id = 133210274
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
	{ config_id = 274007, gadget_id = 70330064, pos = { x = -3841.078, y = 156.971, z = -1046.280 }, rot = { x = 15.431, y = 357.019, z = 1.654 }, level = 30, interact_id = 35, area_id = 17 },
	{ config_id = 274008, gadget_id = 70900380, pos = { x = -3875.123, y = 182.319, z = -1047.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 274009, gadget_id = 70900380, pos = { x = -3862.098, y = 172.345, z = -1047.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 274010, gadget_id = 70900380, pos = { x = -3848.459, y = 162.904, z = -1046.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1274005, name = "GADGET_STATE_CHANGE_274005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_274005", action = "action_EVENT_GADGET_STATE_CHANGE_274005", trigger_count = 0 },
	{ config_id = 1274006, name = "GADGET_STATE_CHANGE_274006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_274006", action = "action_EVENT_GADGET_STATE_CHANGE_274006", trigger_count = 0 }
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
		gadgets = { 274007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_274005", "GADGET_STATE_CHANGE_274006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 274008, 274009, 274010 },
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
function condition_EVENT_GADGET_STATE_CHANGE_274005(context, evt)
	if 274007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_274005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210274, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_274006(context, evt)
	if 274007 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_274006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210274, 2)
	
	return 0
end

require "V2_0/ElectricCore"