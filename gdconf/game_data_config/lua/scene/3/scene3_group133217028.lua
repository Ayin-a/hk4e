-- 基础信息
local base_info = {
	group_id = 133217028
}

-- Trigger变量
local defs = {
	group_ID = 133217028,
	trigger_playRegion = 28006,
	gadget_1 = 28002
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
	{ config_id = 28001, gadget_id = 70950068, pos = { x = -4459.356, y = 239.538, z = -3960.505 }, rot = { x = 26.614, y = 70.464, z = 356.068 }, level = 10, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 28002, gadget_id = 70290117, pos = { x = -4466.254, y = 234.269, z = -3943.322 }, rot = { x = 19.194, y = 331.048, z = 344.288 }, level = 10, area_id = 14 },
	{ config_id = 28004, gadget_id = 70950069, pos = { x = -4457.695, y = 238.470, z = -3964.033 }, rot = { x = 12.921, y = 356.099, z = 347.210 }, level = 10, area_id = 14 },
	{ config_id = 28005, gadget_id = 70211111, pos = { x = -4466.083, y = 234.812, z = -3945.326 }, rot = { x = 15.919, y = 72.957, z = 12.980 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 28008, gadget_id = 70950068, pos = { x = -4484.688, y = 246.033, z = -3961.333 }, rot = { x = 40.274, y = 25.904, z = 357.397 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 28009, gadget_id = 70950068, pos = { x = -4446.894, y = 232.653, z = -3937.107 }, rot = { x = 1.412, y = 333.581, z = 348.514 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 28010, gadget_id = 70950069, pos = { x = -4475.233, y = 233.162, z = -3930.591 }, rot = { x = 17.281, y = 356.657, z = 338.479 }, level = 30, area_id = 14 },
	{ config_id = 28011, gadget_id = 70950069, pos = { x = -4482.211, y = 247.722, z = -3977.375 }, rot = { x = 0.000, y = 358.728, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 28013, gadget_id = 70950069, pos = { x = -4460.277, y = 231.317, z = -3924.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 28006, shape = RegionShape.SPHERE, radius = 45, pos = { x = -4475.419, y = 234.760, z = -3961.377 }, area_id = 14, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1028007, name = "VARIABLE_CHANGE_28007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_28007", action = "" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 28003, gadget_id = 70950069, pos = { x = -4463.213, y = 227.528, z = -3923.860 }, rot = { x = 12.262, y = 358.748, z = 356.239 }, level = 10, area_id = 14 },
		{ config_id = 28012, gadget_id = 70950069, pos = { x = -4478.968, y = 239.933, z = -3955.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
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
		gadgets = { 28001, 28002, 28004, 28008, 28009, 28010, 28011, 28013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 28006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 28005 },
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
function condition_EVENT_VARIABLE_CHANGE_28007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"