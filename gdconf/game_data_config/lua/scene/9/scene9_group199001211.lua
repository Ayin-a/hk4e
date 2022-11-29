-- 基础信息
local base_info = {
	group_id = 199001211
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
	{ config_id = 211001, gadget_id = 70220032, pos = { x = 368.127, y = 119.054, z = 405.269 }, rot = { x = 0.000, y = 162.753, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 211002, gadget_id = 70690013, pos = { x = 368.127, y = 119.054, z = 405.269 }, rot = { x = 0.000, y = 162.753, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 211003, gadget_id = 70690001, pos = { x = 368.127, y = 169.861, z = 405.269 }, rot = { x = 270.000, y = 162.753, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 211006, gadget_id = 70690001, pos = { x = 368.127, y = 180.012, z = 405.269 }, rot = { x = 270.000, y = 162.753, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 211007, gadget_id = 70690001, pos = { x = 368.127, y = 188.366, z = 405.269 }, rot = { x = 270.000, y = 162.753, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1211004, name = "GADGET_STATE_CHANGE_211004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_211004", action = "action_EVENT_GADGET_STATE_CHANGE_211004", trigger_count = 0 },
	{ config_id = 1211005, name = "GADGET_STATE_CHANGE_211005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_211005", action = "action_EVENT_GADGET_STATE_CHANGE_211005", trigger_count = 0 }
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
		gadgets = { 211001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_211004", "GADGET_STATE_CHANGE_211005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 211002, 211003, 211006, 211007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_211004(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001211, 211001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_211004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001211, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_211005(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 199001211, 211001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_211005(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001211, 2)
	
	return 0
end