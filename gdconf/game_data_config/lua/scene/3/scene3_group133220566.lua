-- 基础信息
local base_info = {
	group_id = 133220566
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133220566,
	gadget_1 = 566004,
	gadget_2 = 566001,
	gadget_3 = 566002,
	gadget_4 = 566003,
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
	[566001] = { config_id = 566001, gadget_id = 70330074, pos = { x = -2297.838, y = 199.547, z = -4155.531 }, rot = { x = 54.709, y = 165.716, z = 4.966 }, level = 30, state = GadgetState.Action01, area_id = 11 },
	[566002] = { config_id = 566002, gadget_id = 70330075, pos = { x = -2301.376, y = 199.005, z = -4156.218 }, rot = { x = 22.169, y = 204.072, z = 345.867 }, level = 30, state = GadgetState.Action02, area_id = 11 },
	[566003] = { config_id = 566003, gadget_id = 70330073, pos = { x = -2304.725, y = 199.238, z = -4151.811 }, rot = { x = 341.116, y = 105.790, z = 1.486 }, level = 30, state = GadgetState.Action03, area_id = 11 },
	[566004] = { config_id = 566004, gadget_id = 70330074, pos = { x = -2295.564, y = 199.064, z = -4152.182 }, rot = { x = 16.020, y = 91.432, z = 350.635 }, level = 30, state = GadgetState.Action03, area_id = 11 },
	[566006] = { config_id = 566006, gadget_id = 70211111, pos = { x = -2300.807, y = 200.173, z = -4152.544 }, rot = { x = 1.790, y = 0.014, z = 0.895 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1566007, name = "VARIABLE_CHANGE_566007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_566007", action = "" }
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
		gadgets = { 566001, 566002, 566003, 566004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 566006 },
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
function condition_EVENT_VARIABLE_CHANGE_566007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"