-- 基础信息
local base_info = {
	group_id = 133222343
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133222343,
	gadget_1 = 343001,
	gadget_2 = 343002,
	gadget_3 = 343003,
	gadget_4 = 343004,
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
	[343001] = { config_id = 343001, gadget_id = 70330074, pos = { x = -4851.551, y = 206.582, z = -4182.956 }, rot = { x = 0.000, y = 199.083, z = 0.000 }, level = 30, state = GadgetState.Action01, area_id = 14 },
	[343002] = { config_id = 343002, gadget_id = 70330075, pos = { x = -4848.612, y = 207.254, z = -4185.485 }, rot = { x = 0.000, y = 232.631, z = 0.000 }, level = 30, state = GadgetState.Action02, area_id = 14 },
	[343003] = { config_id = 343003, gadget_id = 70330075, pos = { x = -4847.479, y = 207.362, z = -4188.821 }, rot = { x = 0.000, y = 70.722, z = 0.000 }, level = 30, state = GadgetState.Action03, area_id = 14 },
	[343004] = { config_id = 343004, gadget_id = 70330073, pos = { x = -4847.428, y = 207.663, z = -4191.666 }, rot = { x = 0.000, y = 104.257, z = 0.000 }, level = 30, state = GadgetState.Action01, area_id = 14 },
	[343006] = { config_id = 343006, gadget_id = 70211111, pos = { x = -4850.374, y = 206.612, z = -4188.070 }, rot = { x = 13.696, y = 224.286, z = 352.180 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1343007, name = "VARIABLE_CHANGE_343007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_343007", action = "" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 343005, gadget_id = 70950055, pos = { x = -5077.190, y = 200.000, z = -3947.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, state = GadgetState.Action02, area_id = 14 }
	}
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
		gadgets = { 343001, 343002, 343003, 343004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 343006 },
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
function condition_EVENT_VARIABLE_CHANGE_343007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"