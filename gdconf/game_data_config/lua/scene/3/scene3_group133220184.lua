-- 基础信息
local base_info = {
	group_id = 133220184
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133220184,
	gadget_1 = 184001,
	gadget_2 = 184002,
	gadget_3 = 184003,
	gadget_4 = 0,
	gadget_5 = 0
}

-- DEFS_MISCS


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
	[184001] = { config_id = 184001, gadget_id = 70330073, pos = { x = -2681.129, y = 208.209, z = -4177.462 }, rot = { x = 0.000, y = 346.213, z = 0.000 }, level = 30, state = GadgetState.Action03, area_id = 11 },
	[184002] = { config_id = 184002, gadget_id = 70330073, pos = { x = -2677.649, y = 207.200, z = -4173.570 }, rot = { x = 0.000, y = 303.621, z = 0.000 }, level = 30, state = GadgetState.Action01, area_id = 11 },
	[184003] = { config_id = 184003, gadget_id = 70330073, pos = { x = -2675.877, y = 208.337, z = -4167.487 }, rot = { x = 0.000, y = 289.607, z = 0.000 }, level = 30, state = GadgetState.Action01, area_id = 11 },
	[184006] = { config_id = 184006, gadget_id = 70211111, pos = { x = -2686.242, y = 207.318, z = -4167.751 }, rot = { x = 354.529, y = 164.401, z = 7.379 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1184007, name = "VARIABLE_CHANGE_184007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_184007", action = "action_EVENT_VARIABLE_CHANGE_184007" }
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
		gadgets = { 184001, 184002, 184003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 184006 },
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
function condition_EVENT_VARIABLE_CHANGE_184007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220184, 2)
	
	return 0
end

require "BlackBoxPlay/LightResonanceStone"