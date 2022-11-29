-- 基础信息
local base_info = {
	group_id = 133212382
}

-- Trigger变量
local defs = {
	group_ID = 133212382,
	trigger_playRegion = 382006,
	gadget_1 = 382002
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
	{ config_id = 382001, gadget_id = 70950068, pos = { x = -3560.690, y = 200.373, z = -2630.913 }, rot = { x = 0.000, y = 325.985, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 382002, gadget_id = 70950070, pos = { x = -3578.358, y = 200.074, z = -2613.884 }, rot = { x = 0.000, y = 130.782, z = 0.000 }, level = 10, area_id = 13 },
	{ config_id = 382003, gadget_id = 70950069, pos = { x = -3585.296, y = 204.852, z = -2630.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 13 },
	{ config_id = 382005, gadget_id = 70211101, pos = { x = -3568.976, y = 200.549, z = -2625.128 }, rot = { x = 4.154, y = 172.115, z = 3.926 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 382006, shape = RegionShape.SPHERE, radius = 30, pos = { x = -3567.721, y = 200.322, z = -2617.225 }, area_id = 13, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1382007, name = "VARIABLE_CHANGE_382007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_382007", action = "" }
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
		gadgets = { 382001, 382002, 382003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 382006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 382005 },
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
function condition_EVENT_VARIABLE_CHANGE_382007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"