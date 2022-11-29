-- 基础信息
local base_info = {
	group_id = 133220617
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133220617,
	gadget_1 = 617001,
	gadget_2 = 617002,
	gadget_3 = 617003,
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
	[617001] = { config_id = 617001, gadget_id = 70330075, pos = { x = -2579.618, y = 253.130, z = -4216.092 }, rot = { x = 1.989, y = 222.504, z = 358.602 }, level = 30, state = GadgetState.Action01, area_id = 11 },
	[617002] = { config_id = 617002, gadget_id = 70330075, pos = { x = -2578.146, y = 253.870, z = -4218.565 }, rot = { x = 357.608, y = 40.528, z = 11.908 }, level = 30, state = GadgetState.Action02, area_id = 11 },
	[617003] = { config_id = 617003, gadget_id = 70330075, pos = { x = -2576.693, y = 254.421, z = -4219.884 }, rot = { x = 356.285, y = 42.435, z = 12.784 }, level = 30, state = GadgetState.Action03, area_id = 11 },
	[617006] = { config_id = 617006, gadget_id = 70211111, pos = { x = -2579.448, y = 253.647, z = -4219.741 }, rot = { x = 0.000, y = 221.988, z = 344.173 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1617007, name = "VARIABLE_CHANGE_617007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_617007", action = "" }
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
		gadgets = { 617001, 617002, 617003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 617006 },
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
function condition_EVENT_VARIABLE_CHANGE_617007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"