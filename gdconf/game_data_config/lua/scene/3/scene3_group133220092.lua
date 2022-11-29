-- 基础信息
local base_info = {
	group_id = 133220092
}

-- Trigger变量
local defs = {
	group_ID = 133220092,
	trigger_playRegion = 92006,
	gadget_1 = 92002
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
	{ config_id = 92001, gadget_id = 70950068, pos = { x = -2577.991, y = 211.241, z = -4102.524 }, rot = { x = 8.200, y = 303.635, z = 357.839 }, level = 10, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 92002, gadget_id = 70950070, pos = { x = -2573.938, y = 216.309, z = -4130.279 }, rot = { x = 11.917, y = 311.419, z = 4.206 }, level = 10, area_id = 11 },
	{ config_id = 92003, gadget_id = 70950069, pos = { x = -2578.684, y = 210.340, z = -4115.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 92004, gadget_id = 70950069, pos = { x = -2574.967, y = 216.553, z = -4134.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 92005, gadget_id = 70211111, pos = { x = -2569.111, y = 217.426, z = -4132.541 }, rot = { x = 11.356, y = 297.854, z = 0.342 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 92006, shape = RegionShape.SPHERE, radius = 25, pos = { x = -2563.289, y = 216.630, z = -4114.587 }, area_id = 11, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1092007, name = "VARIABLE_CHANGE_92007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_92007", action = "" }
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
		gadgets = { 92001, 92002, 92003, 92004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 92006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 92005 },
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
function condition_EVENT_VARIABLE_CHANGE_92007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"