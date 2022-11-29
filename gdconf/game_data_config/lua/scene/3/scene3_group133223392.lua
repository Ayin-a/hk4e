-- 基础信息
local base_info = {
	group_id = 133223392
}

-- Trigger变量
local defs = {
	group_ID = 133223392,
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
	{ config_id = 392001, gadget_id = 70950068, pos = { x = -6224.685, y = 212.164, z = -2814.356 }, rot = { x = 358.583, y = 27.964, z = 359.893 }, level = 10, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 392002, gadget_id = 70290116, pos = { x = -6242.742, y = 215.925, z = -2802.865 }, rot = { x = 0.000, y = 27.652, z = 0.000 }, level = 10, area_id = 18 },
	{ config_id = 392003, gadget_id = 70950069, pos = { x = -6224.750, y = 213.297, z = -2808.413 }, rot = { x = 336.509, y = 0.000, z = 0.000 }, level = 10, area_id = 18 },
	{ config_id = 392004, gadget_id = 70950069, pos = { x = -6273.480, y = 221.807, z = -2818.090 }, rot = { x = 0.000, y = 0.000, z = 337.129 }, level = 10, area_id = 18 },
	{ config_id = 392005, gadget_id = 70211101, pos = { x = -6249.457, y = 217.369, z = -2802.330 }, rot = { x = 0.000, y = 109.297, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 392008, gadget_id = 70950068, pos = { x = -6268.877, y = 232.708, z = -2805.663 }, rot = { x = 355.691, y = 36.674, z = 335.437 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 392009, gadget_id = 70950069, pos = { x = -6259.154, y = 219.684, z = -2798.611 }, rot = { x = 16.521, y = 344.656, z = 348.167 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 392006, shape = RegionShape.SPHERE, radius = 40, pos = { x = -6252.507, y = 218.211, z = -2799.035 }, area_id = 18, team_ability_group_list = { "Move_Electric_Stake_Play" } }
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
		gadgets = { 392001, 392002, 392003, 392004, 392008, 392009 },
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