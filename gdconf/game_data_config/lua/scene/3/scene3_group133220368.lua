-- 基础信息
local base_info = {
	group_id = 133220368
}

-- Trigger变量
local defs = {
	group_ID = 133220368,
	trigger_playRegion = 368006,
	gadget_1 = 368002
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
	{ config_id = 368001, gadget_id = 70950068, pos = { x = -2511.397, y = 366.169, z = -4442.522 }, rot = { x = 5.385, y = 342.425, z = 11.791 }, level = 10, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 368002, gadget_id = 70290116, pos = { x = -2536.852, y = 364.059, z = -4431.434 }, rot = { x = 1.417, y = 25.115, z = 357.053 }, level = 10, area_id = 11 },
	{ config_id = 368003, gadget_id = 70950069, pos = { x = -2524.274, y = 365.565, z = -4432.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 368004, gadget_id = 70950069, pos = { x = -2538.457, y = 364.452, z = -4438.749 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 368005, gadget_id = 70211131, pos = { x = -2536.166, y = 364.061, z = -4429.521 }, rot = { x = 0.434, y = 198.677, z = 358.790 }, level = 26, drop_tag = "解谜超级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 368008, gadget_id = 70950068, pos = { x = -2555.560, y = 358.307, z = -4461.667 }, rot = { x = 353.523, y = 342.675, z = 340.244 }, level = 27, state = GadgetState.GearStart, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 368006, shape = RegionShape.SPHERE, radius = 40, pos = { x = -2531.424, y = 371.646, z = -4449.874 }, area_id = 11, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1368007, name = "VARIABLE_CHANGE_368007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_368007", action = "action_EVENT_VARIABLE_CHANGE_368007" }
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
		gadgets = { 368001, 368002, 368004, 368008 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_368007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 368006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 368005 },
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
function condition_EVENT_VARIABLE_CHANGE_368007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_368007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220444, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "BlackBoxPlay/ChargingPort"