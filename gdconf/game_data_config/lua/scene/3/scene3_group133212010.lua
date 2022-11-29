-- 基础信息
local base_info = {
	group_id = 133212010
}

-- Trigger变量
local defs = {
	group_ID = 133212010,
	trigger_playRegion = 10006,
	gadget_1 = 10002
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
	{ config_id = 10001, gadget_id = 70950068, pos = { x = -3861.401, y = 199.085, z = -2625.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 10002, gadget_id = 70950070, pos = { x = -3836.880, y = 210.646, z = -2610.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 13 },
	{ config_id = 10003, gadget_id = 70950069, pos = { x = -3838.375, y = 204.010, z = -2623.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 13 },
	{ config_id = 10004, gadget_id = 70950069, pos = { x = -3854.510, y = 202.692, z = -2587.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 13 },
	{ config_id = 10005, gadget_id = 70211101, pos = { x = -3852.847, y = 200.217, z = -2628.886 }, rot = { x = 358.690, y = -0.002, z = 0.169 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 10006, shape = RegionShape.SPHERE, radius = 35, pos = { x = -3849.449, y = 207.807, z = -2612.001 }, area_id = 13, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1010007, name = "VARIABLE_CHANGE_10007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_10007", action = "" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 10008, gadget_id = 70900387, pos = { x = -3854.804, y = 202.303, z = -2588.741 }, rot = { x = 10.703, y = 72.668, z = 356.185 }, level = 27, isOneoff = true, persistent = true, area_id = 13 }
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
		gadgets = { 10001, 10002, 10003, 10004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 10006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 10005 },
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
function condition_EVENT_VARIABLE_CHANGE_10007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"