-- 基础信息
local base_info = {
	group_id = 133220262
}

-- Trigger变量
local defs = {
	loop_mode = 1,
	group_ID = 133220262,
	gadget_1 = 262001,
	gadget_2 = 262002,
	gadget_3 = 262003,
	gadget_4 = 262004,
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
	[262001] = { config_id = 262001, gadget_id = 70330073, pos = { x = -2370.282, y = 220.522, z = -4494.106 }, rot = { x = 7.172, y = 352.533, z = 344.234 }, level = 30, state = GadgetState.Action01, area_id = 11 },
	[262002] = { config_id = 262002, gadget_id = 70330074, pos = { x = -2376.900, y = 222.904, z = -4500.891 }, rot = { x = 14.051, y = 76.449, z = 359.813 }, level = 30, state = GadgetState.Action01, area_id = 11 },
	[262003] = { config_id = 262003, gadget_id = 70330074, pos = { x = -2370.708, y = 221.665, z = -4506.886 }, rot = { x = 358.193, y = 180.168, z = 15.594 }, level = 30, state = GadgetState.Action02, area_id = 11 },
	[262004] = { config_id = 262004, gadget_id = 70330075, pos = { x = -2363.947, y = 219.321, z = -4501.188 }, rot = { x = 17.198, y = 74.925, z = 358.978 }, level = 27, state = GadgetState.Action02, area_id = 11 },
	[262006] = { config_id = 262006, gadget_id = 70211111, pos = { x = -2373.163, y = 221.904, z = -4500.172 }, rot = { x = 15.401, y = 99.572, z = 6.186 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1262007, name = "VARIABLE_CHANGE_262007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_262007", action = "" }
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
		gadgets = { 262001, 262002, 262003, 262004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 262006 },
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
function condition_EVENT_VARIABLE_CHANGE_262007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"