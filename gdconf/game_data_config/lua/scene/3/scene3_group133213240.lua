-- 基础信息
local base_info = {
	group_id = 133213240
}

-- Trigger变量
local defs = {
	group_ID = 133213240,
	trigger_playRegion = 240006,
	gadget_1 = 240002
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
	{ config_id = 240001, gadget_id = 70950068, pos = { x = -3688.924, y = 223.103, z = -3255.435 }, rot = { x = 9.044, y = 0.000, z = 356.533 }, level = 10, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 240002, gadget_id = 70290116, pos = { x = -3673.772, y = 232.602, z = -3279.618 }, rot = { x = 344.057, y = 261.487, z = 348.701 }, level = 10, area_id = 12 },
	{ config_id = 240003, gadget_id = 70950069, pos = { x = -3688.619, y = 237.744, z = -3282.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 12 },
	{ config_id = 240004, gadget_id = 70950069, pos = { x = -3690.219, y = 226.535, z = -3282.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 12 },
	{ config_id = 240005, gadget_id = 70211111, pos = { x = -3670.902, y = 231.580, z = -3280.333 }, rot = { x = 345.870, y = 303.850, z = 340.073 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 240008, gadget_id = 70950068, pos = { x = -3684.283, y = 237.000, z = -3303.014 }, rot = { x = 9.567, y = 357.609, z = 341.778 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 240009, gadget_id = 70290101, pos = { x = -3675.321, y = 225.008, z = -3274.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 240006, shape = RegionShape.SPHERE, radius = 32, pos = { x = -3678.566, y = 222.569, z = -3278.721 }, area_id = 12, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1240007, name = "VARIABLE_CHANGE_240007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_240007", action = "" }
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
		gadgets = { 240001, 240002, 240003, 240004, 240008, 240009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 240006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 240005 },
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
function condition_EVENT_VARIABLE_CHANGE_240007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"