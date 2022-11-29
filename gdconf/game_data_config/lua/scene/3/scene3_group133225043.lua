-- 基础信息
local base_info = {
	group_id = 133225043
}

-- Trigger变量
local defs = {
	group_ID = 133225043,
	trigger_playRegion = 43007,
	gadget_1 = 43002
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
	{ config_id = 43001, gadget_id = 70950068, pos = { x = -6373.769, y = 263.255, z = -2641.549 }, rot = { x = 0.000, y = 20.108, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 43002, gadget_id = 70290116, pos = { x = -6394.391, y = 262.433, z = -2654.082 }, rot = { x = 0.000, y = 337.002, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 43003, gadget_id = 70950069, pos = { x = -6398.064, y = 261.159, z = -2651.334 }, rot = { x = 339.499, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 43004, gadget_id = 70950069, pos = { x = -6379.952, y = 261.871, z = -2662.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 43005, gadget_id = 70211111, pos = { x = -6387.141, y = 262.693, z = -2658.731 }, rot = { x = 0.000, y = 337.059, z = 5.021 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 43006, gadget_id = 70950068, pos = { x = -6394.075, y = 261.250, z = -2672.582 }, rot = { x = 2.332, y = 359.323, z = 4.249 }, level = 33, state = GadgetState.GearStart, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 43007, shape = RegionShape.SPHERE, radius = 35, pos = { x = -6386.577, y = 263.155, z = -2652.111 }, area_id = 18, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1043008, name = "VARIABLE_CHANGE_43008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_43008", action = "" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 43009, gadget_id = 70950068, pos = { x = -6379.887, y = 256.214, z = -2667.706 }, rot = { x = 11.309, y = 0.000, z = 4.330 }, level = 33, state = GadgetState.GearStart, area_id = 18 }
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
		gadgets = { 43001, 43002, 43003, 43004, 43006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 43007 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 43005 },
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
function condition_EVENT_VARIABLE_CHANGE_43008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"