-- 基础信息
local base_info = {
	group_id = 133223136
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133223136,
	gadget_1 = 136001,
	gadget_2 = 136002,
	gadget_3 = 136003,
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
	[136001] = { config_id = 136001, gadget_id = 70330075, pos = { x = -6199.834, y = 203.096, z = -3074.664 }, rot = { x = 6.933, y = 262.205, z = 358.953 }, level = 30, state = GadgetState.Action01, area_id = 18 },
	[136002] = { config_id = 136002, gadget_id = 70330073, pos = { x = -6200.080, y = 202.734, z = -3078.532 }, rot = { x = 7.592, y = 290.677, z = 354.901 }, level = 30, state = GadgetState.Action02, area_id = 18 },
	[136003] = { config_id = 136003, gadget_id = 70330074, pos = { x = -6201.875, y = 202.893, z = -3082.017 }, rot = { x = 359.825, y = 309.426, z = 1.318 }, level = 30, state = GadgetState.Action03, area_id = 18 },
	[136006] = { config_id = 136006, gadget_id = 70211101, pos = { x = -6205.121, y = 202.486, z = -3078.094 }, rot = { x = 6.605, y = 293.402, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1136007, name = "VARIABLE_CHANGE_136007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_136007", action = "" }
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
		gadgets = { 136001, 136002, 136003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 136006 },
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
function condition_EVENT_VARIABLE_CHANGE_136007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"