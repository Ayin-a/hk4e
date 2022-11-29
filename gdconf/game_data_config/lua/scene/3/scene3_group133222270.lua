-- 基础信息
local base_info = {
	group_id = 133222270
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133222270,
	gadget_1 = 270001,
	gadget_2 = 270002,
	gadget_3 = 270003,
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
	[270001] = { config_id = 270001, gadget_id = 70330073, pos = { x = -4281.401, y = 209.869, z = -4309.530 }, rot = { x = 6.293, y = 189.554, z = 12.926 }, level = 30, state = GadgetState.Action01, area_id = 14 },
	[270002] = { config_id = 270002, gadget_id = 70330074, pos = { x = -4276.539, y = 209.932, z = -4304.250 }, rot = { x = 0.055, y = 40.581, z = 346.865 }, level = 30, state = GadgetState.Action02, area_id = 14 },
	[270003] = { config_id = 270003, gadget_id = 70330075, pos = { x = -4284.821, y = 211.443, z = -4303.116 }, rot = { x = 13.892, y = 122.823, z = 3.867 }, level = 30, state = GadgetState.Action03, area_id = 14 },
	[270006] = { config_id = 270006, gadget_id = 70211101, pos = { x = -4280.405, y = 210.339, z = -4305.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1270007, name = "VARIABLE_CHANGE_270007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_270007", action = "" }
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
		gadgets = { 270001, 270002, 270003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 270006 },
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
function condition_EVENT_VARIABLE_CHANGE_270007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"