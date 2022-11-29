-- 基础信息
local base_info = {
	group_id = 133213168
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133213168,
	gadget_1 = 168001,
	gadget_2 = 168002,
	gadget_3 = 168003,
	gadget_4 = 168004,
	gadget_5 = 168005
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
	[168001] = { config_id = 168001, gadget_id = 70330073, pos = { x = -3742.739, y = 202.599, z = -3280.520 }, rot = { x = 11.268, y = 262.420, z = 10.782 }, level = 30, state = GadgetState.Action02, area_id = 12 },
	[168002] = { config_id = 168002, gadget_id = 70330073, pos = { x = -3742.911, y = 204.104, z = -3277.095 }, rot = { x = 0.000, y = 220.209, z = 0.000 }, level = 30, state = GadgetState.Action01, area_id = 12 },
	[168003] = { config_id = 168003, gadget_id = 70330075, pos = { x = -3745.708, y = 203.515, z = -3273.635 }, rot = { x = 0.000, y = 359.276, z = 0.000 }, level = 30, state = GadgetState.Action02, area_id = 12 },
	[168004] = { config_id = 168004, gadget_id = 70330074, pos = { x = -3748.964, y = 202.604, z = -3272.933 }, rot = { x = 0.000, y = 324.625, z = 0.000 }, level = 30, state = GadgetState.Action01, area_id = 12 },
	[168005] = { config_id = 168005, gadget_id = 70330073, pos = { x = -3750.966, y = 201.677, z = -3275.155 }, rot = { x = 0.000, y = 300.935, z = 0.000 }, level = 2, state = GadgetState.Action02, area_id = 12 },
	[168006] = { config_id = 168006, gadget_id = 70211111, pos = { x = -3748.375, y = 201.512, z = -3280.236 }, rot = { x = 10.991, y = 210.015, z = 355.157 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1168007, name = "VARIABLE_CHANGE_168007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_168007", action = "" }
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
		gadgets = { 168001, 168002, 168003, 168004, 168005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 168006 },
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
function condition_EVENT_VARIABLE_CHANGE_168007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"