-- 基础信息
local base_info = {
	group_id = 133210183
}

-- Trigger变量
local defs = {
	group_ID = 133210183,
	trigger_playRegion = 183006,
	gadget_1 = 183002
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
	{ config_id = 183001, gadget_id = 70950068, pos = { x = -3622.892, y = 112.239, z = -827.432 }, rot = { x = 356.630, y = 39.541, z = 0.496 }, level = 10, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 183002, gadget_id = 70950070, pos = { x = -3657.574, y = 113.717, z = -837.394 }, rot = { x = 358.534, y = 13.098, z = 1.617 }, level = 10, area_id = 17 },
	{ config_id = 183005, gadget_id = 70211101, pos = { x = -3649.416, y = 112.741, z = -830.387 }, rot = { x = 350.813, y = 163.195, z = 357.226 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 183006, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3643.289, y = 130.299, z = -807.642 }, area_id = 17, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1183007, name = "VARIABLE_CHANGE_183007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_183007", action = "" }
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
		gadgets = { 183001, 183002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 183006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 183005 },
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
function condition_EVENT_VARIABLE_CHANGE_183007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"