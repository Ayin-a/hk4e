-- 基础信息
local base_info = {
	group_id = 133223025
}

-- Trigger变量
local defs = {
	group_ID = 133223025,
	trigger_playRegion = 25006,
	gadget_1 = 25002
}

-- DEFS_MISCS
endLinkMap = 
{
{inPort = {25016},outPort = {25012}},
{inPort = {25011},outPort = {25004}},
{inPort = {25014},outPort = {25017}},
{inPort = {25018},outPort = {25013}},
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
	{ config_id = 25002, gadget_id = 70290116, pos = { x = -5953.424, y = 166.036, z = -2740.740 }, rot = { x = 8.027, y = 31.506, z = 3.614 }, level = 10, area_id = 18 },
	{ config_id = 25003, gadget_id = 70950069, pos = { x = -5956.135, y = 152.965, z = -2720.438 }, rot = { x = 24.304, y = 353.874, z = 15.646 }, level = 33, area_id = 18 },
	{ config_id = 25004, gadget_id = 70330136, pos = { x = -5956.529, y = 166.721, z = -2738.505 }, rot = { x = 9.466, y = 35.230, z = 355.625 }, level = 33, area_id = 18 },
	{ config_id = 25005, gadget_id = 70211131, pos = { x = -5961.059, y = 167.221, z = -2739.021 }, rot = { x = 18.357, y = 33.681, z = 0.000 }, level = 26, drop_tag = "解谜超级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 25007, gadget_id = 70950069, pos = { x = -5967.087, y = 151.290, z = -2731.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 25008, gadget_id = 70950068, pos = { x = -5967.764, y = 151.630, z = -2734.868 }, rot = { x = 0.000, y = 32.469, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 25009, gadget_id = 70950068, pos = { x = -5952.355, y = 153.901, z = -2703.248 }, rot = { x = 0.000, y = 34.529, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 25010, gadget_id = 70950069, pos = { x = -5943.791, y = 168.370, z = -2724.284 }, rot = { x = 19.368, y = 4.210, z = 22.265 }, level = 33, area_id = 18 },
	{ config_id = 25011, gadget_id = 70330136, pos = { x = -5965.090, y = 166.891, z = -2731.864 }, rot = { x = 9.327, y = 39.339, z = 3.270 }, level = 33, area_id = 18 },
	{ config_id = 25012, gadget_id = 70330136, pos = { x = -5969.826, y = 169.831, z = -2723.296 }, rot = { x = 354.837, y = 32.287, z = 0.085 }, level = 33, area_id = 18 },
	{ config_id = 25013, gadget_id = 70330136, pos = { x = -5949.107, y = 164.088, z = -2733.774 }, rot = { x = 9.407, y = 29.862, z = 5.227 }, level = 33, area_id = 18 },
	{ config_id = 25014, gadget_id = 70330136, pos = { x = -5949.999, y = 153.666, z = -2704.861 }, rot = { x = 359.082, y = 33.852, z = 4.725 }, level = 33, area_id = 18 },
	{ config_id = 25016, gadget_id = 70330136, pos = { x = -5966.399, y = 151.490, z = -2728.200 }, rot = { x = 1.465, y = 30.565, z = 7.095 }, level = 33, area_id = 18 },
	{ config_id = 25017, gadget_id = 70330136, pos = { x = -5944.257, y = 153.849, z = -2708.672 }, rot = { x = 359.052, y = 34.208, z = 4.719 }, level = 33, area_id = 18 },
	{ config_id = 25018, gadget_id = 70330136, pos = { x = -5938.337, y = 155.911, z = -2712.468 }, rot = { x = 359.294, y = 31.295, z = 87.791 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 25006, shape = RegionShape.POLYGON, pos = { x = -5957.094, y = 169.914, z = -2721.973 }, height = 46.987, point_array = { { x = -6006.887, y = -2705.062 }, { x = -5968.689, y = -2674.623 }, { x = -5941.691, y = -2678.599 }, { x = -5907.302, y = -2700.570 }, { x = -5925.712, y = -2744.478 }, { x = -5945.553, y = -2769.323 }, { x = -5992.884, y = -2735.762 } }, area_id = 18, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1025001, name = "VARIABLE_CHANGE_25001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_25001", action = "action_EVENT_VARIABLE_CHANGE_25001" },
	-- 解谜保底
	{ config_id = 1025015, name = "GROUP_LOAD_25015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_25015", action = "action_EVENT_GROUP_LOAD_25015", trigger_count = 0 }
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
		gadgets = { 25002, 25003, 25004, 25007, 25008, 25009, 25010, 25011, 25012, 25013, 25014, 25016, 25017, 25018 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_25001", "GROUP_LOAD_25015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 25006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 25005 },
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
function condition_EVENT_VARIABLE_CHANGE_25001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_25001(context, evt)
	-- 将本组内变量名为 "gear_can_trigger" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "gear_can_trigger", 1, 133223066) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_25015(context, evt)
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_25015(context, evt)
	-- 将本组内变量名为 "gear_can_trigger" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "gear_can_trigger", 1, 133223066) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/ChargingPort"
require "V2_2/Circuit"