-- 基础信息
local base_info = {
	group_id = 133223139
}

-- Trigger变量
local defs = {
	group_ID = 133223139,
	trigger_playRegion = 139006,
	gadget_1 = 139002
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
	{ config_id = 139001, gadget_id = 70950068, pos = { x = -6139.387, y = 199.954, z = -2740.751 }, rot = { x = 0.000, y = 16.447, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 139002, gadget_id = 70290116, pos = { x = -6141.487, y = 200.346, z = -2720.268 }, rot = { x = 0.000, y = 19.975, z = 0.000 }, level = 10, area_id = 18 },
	{ config_id = 139003, gadget_id = 70950069, pos = { x = -6128.295, y = 199.095, z = -2713.403 }, rot = { x = 340.462, y = 0.000, z = 27.197 }, level = 10, area_id = 18 },
	{ config_id = 139004, gadget_id = 70950069, pos = { x = -6125.542, y = 198.910, z = -2730.020 }, rot = { x = 0.000, y = 0.000, z = 16.270 }, level = 10, area_id = 18 },
	{ config_id = 139005, gadget_id = 70211101, pos = { x = -6143.545, y = 200.952, z = -2718.983 }, rot = { x = 0.000, y = 311.137, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 139009, gadget_id = 70950068, pos = { x = -6154.697, y = 199.517, z = -2705.726 }, rot = { x = 354.581, y = 35.454, z = 349.365 }, level = 33, state = GadgetState.GearStart, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 139006, shape = RegionShape.SPHERE, radius = 30, pos = { x = -6143.088, y = 198.962, z = -2715.593 }, area_id = 18, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1139007, name = "VARIABLE_CHANGE_139007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_139007", action = "" }
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
		gadgets = { 139001, 139002, 139003, 139004, 139009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 139006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 139005 },
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
function condition_EVENT_VARIABLE_CHANGE_139007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"