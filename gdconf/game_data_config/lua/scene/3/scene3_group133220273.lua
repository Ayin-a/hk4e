-- 基础信息
local base_info = {
	group_id = 133220273
}

-- Trigger变量
local defs = {
	group_ID = 133220273,
	trigger_playRegion = 273006,
	gadget_1 = 273002
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
	{ config_id = 273001, gadget_id = 70950068, pos = { x = -2471.085, y = 223.268, z = -4124.437 }, rot = { x = 11.017, y = 357.518, z = 353.201 }, level = 10, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 273002, gadget_id = 70290116, pos = { x = -2478.804, y = 225.737, z = -4163.997 }, rot = { x = 2.020, y = 298.540, z = 4.125 }, level = 10, area_id = 11 },
	{ config_id = 273003, gadget_id = 70950069, pos = { x = -2485.743, y = 223.616, z = -4139.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 273004, gadget_id = 70950069, pos = { x = -2500.677, y = 227.819, z = -4182.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 273005, gadget_id = 70211121, pos = { x = -2476.593, y = 225.918, z = -4165.007 }, rot = { x = 1.009, y = 293.028, z = 3.076 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 273008, gadget_id = 70950068, pos = { x = -2513.659, y = 226.911, z = -4148.572 }, rot = { x = 356.105, y = 342.279, z = 355.906 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 273010, gadget_id = 70900388, pos = { x = -2485.992, y = 223.542, z = -4139.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 273011, gadget_id = 70900388, pos = { x = -2487.844, y = 223.338, z = -4138.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 273012, gadget_id = 70900388, pos = { x = -2487.537, y = 223.691, z = -4141.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 273013, gadget_id = 70950069, pos = { x = -2507.506, y = 225.228, z = -4153.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 273006, shape = RegionShape.SPHERE, radius = 45, pos = { x = -2483.021, y = 223.571, z = -4147.803 }, area_id = 11, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1273007, name = "VARIABLE_CHANGE_273007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_273007", action = "" }
}

-- 变量
variables = {
	{ config_id = 1, name = "collector_should_unlock", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 273009, gadget_id = 70950068, pos = { x = -2454.907, y = 224.386, z = -4185.463 }, rot = { x = 9.607, y = 359.510, z = 357.732 }, level = 27, state = GadgetState.GearStart, area_id = 11 }
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
		gadgets = { 273001, 273002, 273003, 273004, 273008, 273010, 273011, 273012, 273013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 273006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 273005 },
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
function condition_EVENT_VARIABLE_CHANGE_273007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"