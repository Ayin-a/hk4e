-- 基础信息
local base_info = {
	group_id = 133217002
}

-- Trigger变量
local defs = {
	group_ID = 133217002,
	trigger_playRegion = 2006,
	gadget_1 = 2002
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
	{ config_id = 2001, gadget_id = 70950068, pos = { x = -4447.033, y = 200.393, z = -4310.560 }, rot = { x = 5.452, y = 6.980, z = 355.332 }, level = 10, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 2002, gadget_id = 70290116, pos = { x = -4472.473, y = 201.845, z = -4296.187 }, rot = { x = 15.129, y = 38.475, z = 2.542 }, level = 10, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 2003, gadget_id = 70950069, pos = { x = -4473.589, y = 201.615, z = -4354.400 }, rot = { x = 0.000, y = 359.867, z = 0.000 }, level = 10, area_id = 14 },
	{ config_id = 2004, gadget_id = 70950069, pos = { x = -4489.146, y = 199.914, z = -4318.065 }, rot = { x = 0.000, y = 0.357, z = 0.000 }, level = 10, area_id = 14 },
	{ config_id = 2005, gadget_id = 70211111, pos = { x = -4474.891, y = 201.582, z = -4293.446 }, rot = { x = 356.004, y = 129.154, z = 13.699 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 2008, gadget_id = 70950068, pos = { x = -4468.170, y = 200.794, z = -4339.080 }, rot = { x = 0.596, y = 344.842, z = 18.631 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 2010, gadget_id = 70950069, pos = { x = -4466.122, y = 206.854, z = -4313.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 2006, shape = RegionShape.SPHERE, radius = 50, pos = { x = -4458.222, y = 205.035, z = -4323.689 }, area_id = 14, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1002007, name = "VARIABLE_CHANGE_2007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2007", action = "" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 2009, gadget_id = 70900387, pos = { x = -4466.213, y = 200.671, z = -4320.940 }, rot = { x = 16.107, y = 80.991, z = 336.809 }, level = 30, isOneoff = true, persistent = true, area_id = 14 }
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
		gadgets = { 2001, 2002, 2003, 2004, 2008, 2010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 2006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 2005 },
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
function condition_EVENT_VARIABLE_CHANGE_2007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"