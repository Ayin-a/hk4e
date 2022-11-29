-- 基础信息
local base_info = {
	group_id = 133222136
}

-- Trigger变量
local defs = {
	group_ID = 133222136,
	trigger_playRegion = 136006,
	gadget_1 = 136002
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
	{ config_id = 136001, gadget_id = 70950068, pos = { x = -4908.781, y = 220.964, z = -4678.722 }, rot = { x = 0.000, y = 1.044, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 136002, gadget_id = 70950070, pos = { x = -4928.897, y = 214.165, z = -4666.982 }, rot = { x = 5.292, y = 17.574, z = 352.665 }, level = 10, area_id = 14 },
	{ config_id = 136003, gadget_id = 70950069, pos = { x = -4915.878, y = 212.325, z = -4686.313 }, rot = { x = 358.483, y = 359.870, z = 359.345 }, level = 10, area_id = 14 },
	{ config_id = 136005, gadget_id = 70211111, pos = { x = -4926.594, y = 214.261, z = -4667.860 }, rot = { x = 354.446, y = 110.663, z = 357.545 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 136009, gadget_id = 70950069, pos = { x = -4910.314, y = 217.831, z = -4670.355 }, rot = { x = 358.953, y = -0.001, z = 0.151 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 136006, shape = RegionShape.SPHERE, radius = 15, pos = { x = -4918.063, y = 215.848, z = -4675.202 }, area_id = 14, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1136007, name = "VARIABLE_CHANGE_136007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_136007", action = "" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 136004, gadget_id = 70950069, pos = { x = -4892.047, y = 201.648, z = -4625.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 14 },
		{ config_id = 136008, gadget_id = 70900387, pos = { x = -4894.720, y = 203.040, z = -4627.729 }, rot = { x = 350.099, y = 280.089, z = 347.469 }, level = 30, area_id = 14 },
		{ config_id = 136010, gadget_id = 70950068, pos = { x = -4888.342, y = 200.298, z = -4623.085 }, rot = { x = 3.409, y = 40.984, z = 12.241 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
		{ config_id = 136011, gadget_id = 70950068, pos = { x = -4849.417, y = 230.827, z = -4656.741 }, rot = { x = 6.643, y = 348.861, z = 6.456 }, level = 30, state = GadgetState.GearStart, area_id = 14 }
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
		gadgets = { 136001, 136002, 136003, 136009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 136006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 136005 },
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
function condition_EVENT_VARIABLE_CHANGE_136007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"