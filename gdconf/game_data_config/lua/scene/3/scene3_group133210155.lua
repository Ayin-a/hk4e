-- 基础信息
local base_info = {
	group_id = 133210155
}

-- Trigger变量
local defs = {
	group_ID = 133210155,
	trigger_playRegion = 155006,
	gadget_1 = 155002
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
	{ config_id = 155001, gadget_id = 70950068, pos = { x = -3899.305, y = 216.420, z = -549.606 }, rot = { x = 356.710, y = 349.084, z = 15.285 }, level = 10, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 155002, gadget_id = 70950070, pos = { x = -3886.723, y = 231.048, z = -528.616 }, rot = { x = 354.547, y = 1.050, z = 27.612 }, level = 10, area_id = 17 },
	{ config_id = 155004, gadget_id = 70950069, pos = { x = -3886.413, y = 208.843, z = -540.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 155005, gadget_id = 70211101, pos = { x = -3894.088, y = 219.125, z = -538.470 }, rot = { x = 354.844, y = 359.499, z = 11.095 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 155006, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3892.255, y = 209.058, z = -539.304 }, area_id = 17, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1155007, name = "VARIABLE_CHANGE_155007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_155007", action = "" }
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
		gadgets = { 155001, 155002, 155004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 155006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 155005 },
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
function condition_EVENT_VARIABLE_CHANGE_155007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"