-- 基础信息
local base_info = {
	group_id = 133210122
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133210122,
	gadget_1 = 122001,
	gadget_2 = 122002,
	gadget_3 = 122003,
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
	[122001] = { config_id = 122001, gadget_id = 70330073, pos = { x = -4050.136, y = 212.971, z = -807.309 }, rot = { x = 3.203, y = 231.187, z = 5.173 }, level = 30, state = GadgetState.Action01, area_id = 17 },
	[122002] = { config_id = 122002, gadget_id = 70330073, pos = { x = -4057.867, y = 213.381, z = -805.660 }, rot = { x = 2.407, y = 165.739, z = 2.196 }, level = 30, state = GadgetState.Action02, area_id = 17 },
	[122003] = { config_id = 122003, gadget_id = 70330073, pos = { x = -4057.091, y = 213.184, z = -816.342 }, rot = { x = 4.135, y = 195.578, z = 359.533 }, level = 30, state = GadgetState.Action03, area_id = 17 },
	[122006] = { config_id = 122006, gadget_id = 70211101, pos = { x = -4063.798, y = 218.906, z = -809.018 }, rot = { x = 354.381, y = 101.951, z = 18.243 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1122007, name = "VARIABLE_CHANGE_122007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_122007", action = "" }
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
		gadgets = { 122001, 122002, 122003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 122006 },
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
function condition_EVENT_VARIABLE_CHANGE_122007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"