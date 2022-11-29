-- 基础信息
local base_info = {
	group_id = 133212261
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133212261,
	gadget_1 = 261001,
	gadget_2 = 261002,
	gadget_3 = 261003,
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
	[261001] = { config_id = 261001, gadget_id = 70330073, pos = { x = -3517.635, y = 201.058, z = -2899.753 }, rot = { x = 0.000, y = 125.286, z = 0.000 }, level = 30, state = GadgetState.Action01, area_id = 12 },
	[261002] = { config_id = 261002, gadget_id = 70330073, pos = { x = -3512.107, y = 200.559, z = -2896.557 }, rot = { x = 358.158, y = 189.334, z = 359.296 }, level = 30, state = GadgetState.Action02, area_id = 12 },
	[261003] = { config_id = 261003, gadget_id = 70330073, pos = { x = -3508.453, y = 200.305, z = -2899.287 }, rot = { x = 357.686, y = 243.027, z = 1.467 }, level = 30, state = GadgetState.Action03, area_id = 12 },
	[261006] = { config_id = 261006, gadget_id = 70211101, pos = { x = -3514.771, y = 201.135, z = -2898.625 }, rot = { x = 1.190, y = 149.606, z = 6.242 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1261007, name = "VARIABLE_CHANGE_261007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_261007", action = "" }
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
		gadgets = { 261001, 261002, 261003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 261006 },
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
function condition_EVENT_VARIABLE_CHANGE_261007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"