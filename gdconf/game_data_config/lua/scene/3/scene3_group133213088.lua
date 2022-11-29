-- 基础信息
local base_info = {
	group_id = 133213088
}

-- Trigger变量
local defs = {
	group_ID = 133213088,
	trigger_playRegion = 88006,
	gadget_1 = 88002
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
	{ config_id = 88001, gadget_id = 70950068, pos = { x = -3327.027, y = 216.423, z = -3475.449 }, rot = { x = 347.102, y = 0.725, z = 353.591 }, level = 10, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 88002, gadget_id = 70290116, pos = { x = -3331.714, y = 217.641, z = -3448.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 12 },
	{ config_id = 88003, gadget_id = 70950069, pos = { x = -3355.502, y = 224.353, z = -3459.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 12 },
	{ config_id = 88004, gadget_id = 70950069, pos = { x = -3321.342, y = 217.453, z = -3435.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 12 },
	{ config_id = 88005, gadget_id = 70211111, pos = { x = -3346.184, y = 206.365, z = -3450.841 }, rot = { x = 19.019, y = 97.629, z = 347.131 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 88008, gadget_id = 70950068, pos = { x = -3358.240, y = 221.371, z = -3439.473 }, rot = { x = 9.388, y = 358.849, z = 346.052 }, level = 27, state = GadgetState.GearStart, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 88006, shape = RegionShape.SPHERE, radius = 30, pos = { x = -3339.919, y = 217.567, z = -3449.020 }, area_id = 12, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1088007, name = "VARIABLE_CHANGE_88007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_88007", action = "action_EVENT_VARIABLE_CHANGE_88007" }
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
		gadgets = { 88001, 88002, 88003, 88004, 88008 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_88007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 88006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 88005 },
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
function condition_EVENT_VARIABLE_CHANGE_88007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_88007(context, evt)
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count", 1, 133213203) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/ChargingPort"