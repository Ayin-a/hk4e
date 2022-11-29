-- 基础信息
local base_info = {
	group_id = 133220209
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133220209,
	gadget_1 = 209001,
	gadget_2 = 209002,
	gadget_3 = 209003
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
	[209001] = { config_id = 209001, gadget_id = 70330073, pos = { x = -2534.598, y = 233.710, z = -4192.898 }, rot = { x = 351.508, y = 155.310, z = 8.675 }, level = 30, state = GadgetState.Action01, area_id = 11 },
	[209002] = { config_id = 209002, gadget_id = 70330073, pos = { x = -2543.894, y = 235.740, z = -4198.278 }, rot = { x = 3.204, y = 210.391, z = 351.353 }, level = 30, state = GadgetState.Action02, area_id = 11 },
	[209003] = { config_id = 209003, gadget_id = 70330073, pos = { x = -2544.915, y = 233.260, z = -4190.133 }, rot = { x = 358.856, y = 233.595, z = 334.301 }, level = 30, state = GadgetState.Action03, area_id = 11 },
	[209006] = { config_id = 209006, gadget_id = 70211111, pos = { x = -2539.759, y = 233.563, z = -4191.026 }, rot = { x = 10.930, y = 15.691, z = 5.856 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1209007, name = "VARIABLE_CHANGE_209007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_209007", action = "" }
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
		gadgets = { 209001, 209002, 209003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 209006 },
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
function condition_EVENT_VARIABLE_CHANGE_209007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"