-- 基础信息
local base_info = {
	group_id = 133210241
}

-- Trigger变量
local defs = {
	group_ID = 133210241,
	trigger_playRegion = 241006,
	gadget_1 = 241002
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
	{ config_id = 241002, gadget_id = 70290116, pos = { x = -3671.959, y = 202.901, z = -570.466 }, rot = { x = 5.627, y = 285.306, z = 2.544 }, level = 10, area_id = 17 },
	{ config_id = 241004, gadget_id = 70950069, pos = { x = -3660.575, y = 202.949, z = -562.323 }, rot = { x = 0.000, y = 226.056, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 241005, gadget_id = 70211111, pos = { x = -3671.573, y = 202.940, z = -564.312 }, rot = { x = 356.774, y = 203.962, z = 358.669 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 241008, gadget_id = 70950068, pos = { x = -3669.740, y = 201.006, z = -543.105 }, rot = { x = 4.277, y = 4.864, z = 1.097 }, level = 30, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 241009, gadget_id = 70950068, pos = { x = -3640.846, y = 201.692, z = -605.812 }, rot = { x = 9.620, y = 305.585, z = 342.095 }, level = 30, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 241010, gadget_id = 70950069, pos = { x = -3636.750, y = 200.748, z = -581.987 }, rot = { x = 0.000, y = 258.204, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 241006, shape = RegionShape.SPHERE, radius = 55, pos = { x = -3658.030, y = 212.911, z = -567.281 }, area_id = 17, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1241007, name = "VARIABLE_CHANGE_241007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_241007", action = "action_EVENT_VARIABLE_CHANGE_241007" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 241001, gadget_id = 70950068, pos = { x = -3691.571, y = 218.333, z = -575.487 }, rot = { x = 357.184, y = 356.310, z = 354.143 }, level = 10, state = GadgetState.GearStart, area_id = 17 },
		{ config_id = 241003, gadget_id = 70950069, pos = { x = -3692.512, y = 217.270, z = -584.690 }, rot = { x = 0.000, y = 230.923, z = 0.000 }, level = 10, area_id = 17 }
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
		gadgets = { 241002, 241004, 241008, 241009, 241010 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_241007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 241006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 241005 },
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
function condition_EVENT_VARIABLE_CHANGE_241007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_241007(context, evt)
	-- 将本组内变量名为 "Success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 1, 133210119) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/ChargingPort"