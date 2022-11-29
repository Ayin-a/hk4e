-- 基础信息
local base_info = {
	group_id = 133225024
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133225024,
	gadget_1 = 24001,
	gadget_2 = 24002,
	gadget_3 = 24003,
	gadget_4 = 24004,
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
	[24001] = { config_id = 24001, gadget_id = 70330073, pos = { x = -6255.751, y = 322.576, z = -2657.280 }, rot = { x = 353.363, y = 166.491, z = 357.054 }, level = 33, state = GadgetState.Action01, area_id = 18 },
	[24002] = { config_id = 24002, gadget_id = 70330075, pos = { x = -6254.582, y = 322.746, z = -2679.446 }, rot = { x = 0.000, y = 44.333, z = 0.000 }, level = 33, state = GadgetState.Action02, area_id = 18 },
	[24003] = { config_id = 24003, gadget_id = 70330073, pos = { x = -6261.048, y = 322.360, z = -2668.285 }, rot = { x = 0.000, y = 179.411, z = 0.000 }, level = 33, state = GadgetState.Action03, area_id = 18 },
	[24004] = { config_id = 24004, gadget_id = 70330074, pos = { x = -6262.357, y = 320.836, z = -2681.036 }, rot = { x = 353.655, y = 3.029, z = 27.458 }, level = 33, state = GadgetState.Action01, area_id = 18 },
	[24005] = { config_id = 24005, gadget_id = 70900387, pos = { x = -6255.979, y = 322.695, z = -2657.917 }, rot = { x = 0.000, y = 214.305, z = 0.000 }, level = 33, isOneoff = true, persistent = true, area_id = 18 },
	[24006] = { config_id = 24006, gadget_id = 70211101, pos = { x = -6256.209, y = 322.799, z = -2675.142 }, rot = { x = 0.000, y = 293.760, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1024007, name = "VARIABLE_CHANGE_24007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_24007", action = "" }
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
		gadgets = { 24001, 24002, 24003, 24004, 24005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 24006 },
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
function condition_EVENT_VARIABLE_CHANGE_24007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"