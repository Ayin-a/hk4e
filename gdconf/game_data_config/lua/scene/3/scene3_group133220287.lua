-- 基础信息
local base_info = {
	group_id = 133220287
}

-- Trigger变量
local defs = {
	group_ID = 133220287,
	trigger_playRegion = 287006,
	gadget_1 = 287002
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
	{ config_id = 287001, gadget_id = 70950068, pos = { x = -2740.680, y = 234.219, z = -4380.872 }, rot = { x = 345.002, y = 214.895, z = 352.077 }, level = 10, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 287002, gadget_id = 70950070, pos = { x = -2747.235, y = 239.449, z = -4429.340 }, rot = { x = 0.000, y = 87.880, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 287003, gadget_id = 70950069, pos = { x = -2768.546, y = 237.893, z = -4401.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 287004, gadget_id = 70950069, pos = { x = -2738.468, y = 238.055, z = -4402.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 287005, gadget_id = 70211111, pos = { x = -2741.140, y = 238.061, z = -4429.437 }, rot = { x = 1.320, y = 336.526, z = 346.904 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 287006, shape = RegionShape.SPHERE, radius = 30, pos = { x = -2743.761, y = 234.876, z = -4403.633 }, area_id = 11, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1287007, name = "VARIABLE_CHANGE_287007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_287007", action = "" }
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
		gadgets = { 287001, 287002, 287003, 287004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 287006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 287005 },
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
function condition_EVENT_VARIABLE_CHANGE_287007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"