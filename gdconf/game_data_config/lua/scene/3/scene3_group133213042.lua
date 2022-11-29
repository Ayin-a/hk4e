-- 基础信息
local base_info = {
	group_id = 133213042
}

-- Trigger变量
local defs = {
	group_ID = 133213042,
	trigger_playRegion = 42006,
	gadget_1 = 42002
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
	{ config_id = 42001, gadget_id = 70950068, pos = { x = -3173.755, y = 202.666, z = -3362.541 }, rot = { x = 27.211, y = 2.053, z = 13.586 }, level = 10, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 42002, gadget_id = 70950070, pos = { x = -3149.456, y = 200.863, z = -3360.287 }, rot = { x = 32.509, y = 358.221, z = 353.903 }, level = 10, area_id = 12 },
	{ config_id = 42003, gadget_id = 70950069, pos = { x = -3174.831, y = 198.874, z = -3359.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 12 },
	{ config_id = 42004, gadget_id = 70950069, pos = { x = -3183.122, y = 200.514, z = -3373.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 12 },
	{ config_id = 42005, gadget_id = 70211111, pos = { x = -3149.844, y = 200.731, z = -3363.010 }, rot = { x = 355.235, y = 359.147, z = 20.279 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 42006, shape = RegionShape.SPHERE, radius = 30, pos = { x = -3172.239, y = 198.566, z = -3359.497 }, area_id = 12, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1042007, name = "VARIABLE_CHANGE_42007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_42007", action = "" }
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
		gadgets = { 42001, 42002, 42003, 42004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 42006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 42005 },
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
function condition_EVENT_VARIABLE_CHANGE_42007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"