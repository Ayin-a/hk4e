-- 基础信息
local base_info = {
	group_id = 133317015
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
	{ config_id = 15001, gadget_id = 70330463, pos = { x = 605.400, y = 345.687, z = 6194.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 15002, gadget_id = 70330463, pos = { x = 599.357, y = 347.269, z = 6176.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 15003, gadget_id = 70330463, pos = { x = 589.076, y = 355.355, z = 6164.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 15004, gadget_id = 70330463, pos = { x = 585.667, y = 361.876, z = 6157.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 15006, gadget_id = 70211001, pos = { x = 617.081, y = 331.552, z = 6188.980 }, rot = { x = 0.000, y = 62.023, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1015005, name = "GADGET_STATE_CHANGE_15005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15005", action = "action_EVENT_GADGET_STATE_CHANGE_15005", trigger_count = 0 }
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
		gadgets = { 15001, 15002, 15003, 15004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_15005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 15006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_15005(context, evt)
	if 15001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if 15002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if 15003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if 15004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15005(context, evt)
	ScriptLib.AddExtraGroupSuite(context, 133317015, 2)
	
	return 0
end