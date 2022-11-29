-- 基础信息
local base_info = {
	group_id = 133212392
}

-- Trigger变量
local defs = {
	group_ID = 133212392,
	trigger_playRegion = 392006,
	gadget_1 = 392002
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
	{ config_id = 392001, gadget_id = 70950068, pos = { x = -3989.291, y = 269.828, z = -2246.769 }, rot = { x = 0.000, y = 20.608, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 392002, gadget_id = 70290116, pos = { x = -4013.874, y = 275.415, z = -2243.676 }, rot = { x = 0.000, y = 335.503, z = 0.000 }, level = 10, area_id = 13 },
	{ config_id = 392003, gadget_id = 70950069, pos = { x = -3994.706, y = 274.635, z = -2257.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 13 },
	{ config_id = 392004, gadget_id = 70950069, pos = { x = -3986.532, y = 268.302, z = -2275.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 392005, gadget_id = 70211101, pos = { x = -4019.958, y = 276.778, z = -2247.393 }, rot = { x = 15.253, y = 92.249, z = 355.934 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 392008, gadget_id = 70950068, pos = { x = -4001.364, y = 271.412, z = -2260.804 }, rot = { x = 0.000, y = 20.608, z = 353.040 }, level = 27, state = GadgetState.GearStart, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 392006, shape = RegionShape.SPHERE, radius = 25, pos = { x = -3997.347, y = 269.846, z = -2257.390 }, area_id = 13, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1392007, name = "VARIABLE_CHANGE_392007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_392007", action = "" }
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
		gadgets = { 392001, 392002, 392003, 392004, 392008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 392006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 392005 },
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
function condition_EVENT_VARIABLE_CHANGE_392007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"