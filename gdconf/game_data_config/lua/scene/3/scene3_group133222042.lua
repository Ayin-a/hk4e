-- 基础信息
local base_info = {
	group_id = 133222042
}

-- Trigger变量
local defs = {
	group_ID = 133222042,
	trigger_playRegion = 42006,
	gadget_1 = 42002
}

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
	{ config_id = 42001, gadget_id = 70950068, pos = { x = -4374.998, y = 245.204, z = -4177.635 }, rot = { x = 6.059, y = 359.701, z = 348.555 }, level = 10, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 42002, gadget_id = 70290117, pos = { x = -4354.154, y = 245.985, z = -4184.806 }, rot = { x = 7.907, y = 19.567, z = 338.474 }, level = 10, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 42003, gadget_id = 70950069, pos = { x = -4354.416, y = 239.971, z = -4187.998 }, rot = { x = 358.325, y = 0.183, z = 347.525 }, level = 10, area_id = 14 },
	{ config_id = 42004, gadget_id = 70950069, pos = { x = -4358.641, y = 241.540, z = -4213.866 }, rot = { x = 357.538, y = 0.338, z = 344.356 }, level = 10, area_id = 14 },
	{ config_id = 42005, gadget_id = 70211111, pos = { x = -4351.485, y = 244.325, z = -4185.147 }, rot = { x = 354.249, y = 343.210, z = 327.931 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 42008, gadget_id = 70950068, pos = { x = -4348.594, y = 238.671, z = -4213.235 }, rot = { x = 357.854, y = 1.716, z = 343.834 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 42009, gadget_id = 70950068, pos = { x = -4334.394, y = 234.982, z = -4175.397 }, rot = { x = 0.439, y = 1.026, z = 346.261 }, level = 30, state = GadgetState.GearStart, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 42006, shape = RegionShape.SPHERE, radius = 40, pos = { x = -4350.643, y = 238.801, z = -4186.271 }, area_id = 14, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1042007, name = "VARIABLE_CHANGE_42007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_42007", action = "" }
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
		gadgets = { 42001, 42002, 42003, 42004, 42008, 42009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 42006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 42005 },
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
function condition_EVENT_VARIABLE_CHANGE_42007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"