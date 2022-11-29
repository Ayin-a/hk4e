-- 基础信息
local base_info = {
	group_id = 133102688
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
	{ config_id = 688001, gadget_id = 70220032, pos = { x = 1168.294, y = 209.429, z = 127.559 }, rot = { x = 335.880, y = 136.605, z = 343.193 }, level = 16, area_id = 5 },
	{ config_id = 688002, gadget_id = 70690001, pos = { x = 1165.660, y = 207.816, z = 147.743 }, rot = { x = 0.000, y = 344.932, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 688007, gadget_id = 70690001, pos = { x = 1162.241, y = 206.272, z = 166.255 }, rot = { x = 0.000, y = 349.805, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 688008, gadget_id = 70690001, pos = { x = 1159.030, y = 205.002, z = 184.531 }, rot = { x = 0.000, y = 349.805, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 688009, gadget_id = 70690001, pos = { x = 1155.564, y = 203.565, z = 203.659 }, rot = { x = 0.000, y = 349.805, z = 0.000 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1688004, name = "GADGET_STATE_CHANGE_688004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_688004", action = "action_EVENT_GADGET_STATE_CHANGE_688004", trigger_count = 0 },
	{ config_id = 1688005, name = "GADGET_STATE_CHANGE_688005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_688005", action = "action_EVENT_GADGET_STATE_CHANGE_688005", trigger_count = 0 },
	{ config_id = 1688006, name = "GADGET_CREATE_688006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_688006", action = "action_EVENT_GADGET_CREATE_688006", trigger_count = 0 }
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
	end_suite = 3,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 688001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_688004", "GADGET_STATE_CHANGE_688005", "GADGET_CREATE_688006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 688002, 688007, 688008, 688009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_688004(context, evt)
	if 688001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_688004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102688, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_688005(context, evt)
	if 688001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_688005(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102688, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_688006(context, evt)
	if 688001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_688006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102688, 2)
	
	return 0
end