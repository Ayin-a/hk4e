-- 基础信息
local base_info = {
	group_id = 133212340
}

-- Trigger变量
local defs = {
	group_ID = 133212340,
	trigger_playRegion = 340006,
	gadget_1 = 340002
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
	{ config_id = 340001, gadget_id = 70950068, pos = { x = -3730.694, y = 236.387, z = -2264.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 340002, gadget_id = 70950070, pos = { x = -3755.820, y = 235.796, z = -2215.215 }, rot = { x = 0.000, y = 19.576, z = 0.000 }, level = 10, area_id = 13 },
	{ config_id = 340003, gadget_id = 70950069, pos = { x = -3753.193, y = 236.201, z = -2269.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 13 },
	{ config_id = 340005, gadget_id = 70211121, pos = { x = -3762.993, y = 241.123, z = -2213.123 }, rot = { x = 358.218, y = 169.212, z = 355.781 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 340011, gadget_id = 70950108, pos = { x = -3757.103, y = 236.647, z = -2245.643 }, rot = { x = 285.378, y = 327.683, z = 20.833 }, level = 27, area_id = 13 },
	{ config_id = 340012, gadget_id = 77115002, pos = { x = -3756.727, y = 236.602, z = -2245.651 }, rot = { x = 14.105, y = 354.791, z = 7.891 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 340006, shape = RegionShape.SPHERE, radius = 60, pos = { x = -3752.865, y = 235.721, z = -2224.473 }, area_id = 13, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1340007, name = "VARIABLE_CHANGE_340007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_340007", action = "" }
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
		gadgets = { 340001, 340002, 340003, 340011, 340012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 340006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 340005 },
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
function condition_EVENT_VARIABLE_CHANGE_340007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"