-- 基础信息
local base_info = {
	group_id = 133220594
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133220594,
	gadget_1 = 594001,
	gadget_2 = 594002,
	gadget_3 = 594003,
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
	[594001] = { config_id = 594001, gadget_id = 70330073, pos = { x = -2587.469, y = 254.561, z = -4352.421 }, rot = { x = 0.000, y = 281.446, z = 0.000 }, level = 30, state = GadgetState.Action01, area_id = 11 },
	[594002] = { config_id = 594002, gadget_id = 70330073, pos = { x = -2590.223, y = 255.292, z = -4356.479 }, rot = { x = 348.189, y = 143.400, z = 0.000 }, level = 30, state = GadgetState.Action02, area_id = 11 },
	[594003] = { config_id = 594003, gadget_id = 70330073, pos = { x = -2594.674, y = 255.109, z = -4358.264 }, rot = { x = 4.085, y = 344.765, z = 0.000 }, level = 30, state = GadgetState.Action03, area_id = 11 },
	[594006] = { config_id = 594006, gadget_id = 70211111, pos = { x = -2592.049, y = 254.743, z = -4354.644 }, rot = { x = 7.912, y = 325.123, z = 343.155 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1594007, name = "VARIABLE_CHANGE_594007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_594007", action = "" }
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
		gadgets = { 594001, 594002, 594003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 594006 },
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
function condition_EVENT_VARIABLE_CHANGE_594007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"