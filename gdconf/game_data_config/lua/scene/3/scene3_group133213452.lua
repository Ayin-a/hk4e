-- 基础信息
local base_info = {
	group_id = 133213452
}

-- Trigger变量
local defs = {
	group_ID = 133213452,
	trigger_playRegion = 452006,
	gadget_1 = 452002
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
	{ config_id = 452001, gadget_id = 70950068, pos = { x = -3641.502, y = 228.523, z = -3205.771 }, rot = { x = 11.754, y = 354.303, z = 351.130 }, level = 10, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 452002, gadget_id = 70950070, pos = { x = -3624.989, y = 208.086, z = -3188.795 }, rot = { x = 0.000, y = 248.340, z = 0.000 }, level = 10, area_id = 12 },
	{ config_id = 452003, gadget_id = 70950069, pos = { x = -3612.676, y = 219.467, z = -3198.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 12 },
	{ config_id = 452004, gadget_id = 70950069, pos = { x = -3615.024, y = 208.623, z = -3192.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 12 },
	{ config_id = 452005, gadget_id = 70211121, pos = { x = -3621.531, y = 208.195, z = -3190.736 }, rot = { x = 0.000, y = 249.497, z = 0.000 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 452006, shape = RegionShape.SPHERE, radius = 30, pos = { x = -3622.398, y = 222.858, z = -3204.733 }, area_id = 12, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1452007, name = "VARIABLE_CHANGE_452007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_452007", action = "" }
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
		gadgets = { 452001, 452002, 452003, 452004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 452006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 452005 },
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
function condition_EVENT_VARIABLE_CHANGE_452007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"