-- 基础信息
local base_info = {
	group_id = 133213060
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133213060,
	gadget_1 = 60001,
	gadget_2 = 60002,
	gadget_3 = 60003,
	gadget_4 = 60004,
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
	[60001] = { config_id = 60001, gadget_id = 70330074, pos = { x = -3365.910, y = 199.650, z = -2981.138 }, rot = { x = 0.000, y = 204.126, z = 0.000 }, level = 30, state = GadgetState.Action03, area_id = 12 },
	[60002] = { config_id = 60002, gadget_id = 70330073, pos = { x = -3368.901, y = 199.649, z = -2979.076 }, rot = { x = 0.000, y = 224.736, z = 0.000 }, level = 30, state = GadgetState.Action01, area_id = 12 },
	[60003] = { config_id = 60003, gadget_id = 70330073, pos = { x = -3370.738, y = 199.609, z = -2974.404 }, rot = { x = 0.000, y = 84.141, z = 0.000 }, level = 30, state = GadgetState.Action01, area_id = 12 },
	[60004] = { config_id = 60004, gadget_id = 70330073, pos = { x = -3370.068, y = 199.527, z = -2970.381 }, rot = { x = 0.000, y = 117.589, z = 0.000 }, level = 27, state = GadgetState.Action03, area_id = 12 },
	[60006] = { config_id = 60006, gadget_id = 70211111, pos = { x = -3364.163, y = 200.027, z = -2976.375 }, rot = { x = 355.628, y = 86.265, z = 3.462 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1060007, name = "VARIABLE_CHANGE_60007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_60007", action = "action_EVENT_VARIABLE_CHANGE_60007" }
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
		gadgets = { 60001, 60002, 60003, 60004 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_60007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 60006 },
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
function condition_EVENT_VARIABLE_CHANGE_60007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_60007(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133213091, 1)
	
	return 0
end

require "BlackBoxPlay/LightResonanceStone"