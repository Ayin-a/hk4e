-- 基础信息
local base_info = {
	group_id = 111101112
}

-- Trigger变量
local defs = {
	loop_mode = 1,
	group_ID = 111101112,
	gadget_1 = 112001,
	gadget_2 = 112002,
	gadget_3 = 112003,
	gadget_4 = 112004,
	gadget_5 = 112005
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
	[112001] = { config_id = 112001, gadget_id = 70950055, pos = { x = 2653.000, y = 248.611, z = -1297.497 }, rot = { x = 0.000, y = 203.830, z = 0.000 }, level = 1, state = GadgetState.Action01 },
	[112002] = { config_id = 112002, gadget_id = 70950055, pos = { x = 2652.882, y = 248.344, z = -1290.830 }, rot = { x = 0.000, y = 143.400, z = 0.000 }, level = 1, state = GadgetState.Action02 },
	[112003] = { config_id = 112003, gadget_id = 70950055, pos = { x = 2645.922, y = 249.898, z = -1289.027 }, rot = { x = 0.000, y = 107.100, z = 0.000 }, level = 1, state = GadgetState.Action03 },
	[112004] = { config_id = 112004, gadget_id = 70950055, pos = { x = 2639.379, y = 250.152, z = -1288.801 }, rot = { x = 0.000, y = 60.460, z = 0.000 }, level = 1, state = GadgetState.Action01 },
	[112005] = { config_id = 112005, gadget_id = 70950055, pos = { x = 2637.229, y = 250.528, z = -1295.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action02 },
	[112006] = { config_id = 112006, gadget_id = 70211111, pos = { x = 2644.705, y = 248.628, z = -1294.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1112007, name = "VARIABLE_CHANGE_112007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_112007", action = "" }
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
		gadgets = { 112001, 112002, 112003, 112004, 112005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 112006 },
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
function condition_EVENT_VARIABLE_CHANGE_112007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"