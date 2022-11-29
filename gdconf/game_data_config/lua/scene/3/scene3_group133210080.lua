-- 基础信息
local base_info = {
	group_id = 133210080
}

-- Trigger变量
local defs = {
	group_ID = 133210080,
	trigger_playRegion = 80006,
	gadget_1 = 80002
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
	{ config_id = 80001, gadget_id = 70950068, pos = { x = -3887.600, y = 201.876, z = -1203.040 }, rot = { x = 358.551, y = 0.179, z = 7.741 }, level = 10, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 80002, gadget_id = 70950070, pos = { x = -3849.014, y = 204.220, z = -1199.978 }, rot = { x = 7.702, y = 357.839, z = 344.403 }, level = 10, area_id = 17 },
	{ config_id = 80003, gadget_id = 70950069, pos = { x = -3867.786, y = 201.347, z = -1186.998 }, rot = { x = 0.000, y = 241.827, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 80005, gadget_id = 70211101, pos = { x = -3841.077, y = 202.356, z = -1198.557 }, rot = { x = 344.082, y = 245.505, z = 2.243 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 80006, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3869.603, y = 201.760, z = -1196.665 }, area_id = 17, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1080007, name = "VARIABLE_CHANGE_80007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_80007", action = "" }
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
		gadgets = { 80001, 80002, 80003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 80006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 80005 },
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
function condition_EVENT_VARIABLE_CHANGE_80007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/ChargingPort"