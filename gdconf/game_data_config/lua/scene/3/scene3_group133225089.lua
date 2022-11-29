-- 基础信息
local base_info = {
	group_id = 133225089
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133225089,
	gadget_1 = 89001,
	gadget_2 = 89002,
	gadget_3 = 89003,
	gadget_4 = 89004,
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
	[89001] = { config_id = 89001, gadget_id = 70330073, pos = { x = -6310.084, y = 253.828, z = -2482.583 }, rot = { x = 13.259, y = 231.698, z = 350.216 }, level = 30, state = GadgetState.Action01, area_id = 18 },
	[89002] = { config_id = 89002, gadget_id = 70330073, pos = { x = -6314.783, y = 253.966, z = -2476.717 }, rot = { x = 349.341, y = 108.838, z = 0.000 }, level = 30, state = GadgetState.Action02, area_id = 18 },
	[89003] = { config_id = 89003, gadget_id = 70330073, pos = { x = -6321.791, y = 258.379, z = -2471.489 }, rot = { x = 340.623, y = 86.434, z = 2.219 }, level = 30, state = GadgetState.Action02, area_id = 18 },
	[89004] = { config_id = 89004, gadget_id = 70330073, pos = { x = -6320.105, y = 255.853, z = -2468.305 }, rot = { x = 7.326, y = 88.305, z = 0.000 }, level = 30, state = GadgetState.Action01, area_id = 18 },
	[89006] = { config_id = 89006, gadget_id = 70211101, pos = { x = -6309.595, y = 253.822, z = -2474.860 }, rot = { x = 0.000, y = 258.888, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1089007, name = "VARIABLE_CHANGE_89007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_89007", action = "" }
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
		gadgets = { 89001, 89002, 89003, 89004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 89006 },
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
function condition_EVENT_VARIABLE_CHANGE_89007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"