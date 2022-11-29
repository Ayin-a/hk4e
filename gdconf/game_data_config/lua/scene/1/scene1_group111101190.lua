-- 基础信息
local base_info = {
	group_id = 111101190
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 111101190,
	gadget_1 = 190001,
	gadget_2 = 190002,
	gadget_3 = 190003,
	gadget_4 = 190004,
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
	[190001] = { config_id = 190001, gadget_id = 70330075, pos = { x = 2737.754, y = 249.302, z = -1256.690 }, rot = { x = 355.016, y = 204.011, z = 355.837 }, level = 1, state = GadgetState.Action02 },
	[190002] = { config_id = 190002, gadget_id = 70330075, pos = { x = 2740.570, y = 249.715, z = -1259.593 }, rot = { x = 357.876, y = 33.139, z = 11.287 }, level = 1, state = GadgetState.Action02 },
	[190003] = { config_id = 190003, gadget_id = 70330075, pos = { x = 2742.809, y = 250.504, z = -1262.003 }, rot = { x = 5.890, y = 30.391, z = 7.535 }, level = 1, state = GadgetState.Action02 },
	[190004] = { config_id = 190004, gadget_id = 70330075, pos = { x = 2745.528, y = 250.935, z = -1263.167 }, rot = { x = 0.334, y = 209.750, z = 354.025 }, level = 1, state = GadgetState.Action03 },
	[190006] = { config_id = 190006, gadget_id = 70211111, pos = { x = 2744.233, y = 250.056, z = -1257.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1190007, name = "VARIABLE_CHANGE_190007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_190007", action = "" }
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
		gadgets = { 190001, 190002, 190003, 190004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 190006 },
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
function condition_EVENT_VARIABLE_CHANGE_190007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"