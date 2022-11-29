-- 基础信息
local base_info = {
	group_id = 133212520
}

-- Trigger变量
local defs = {
	group_ID = 133212520,
	gadget_11 = 520001,
	gadget_12 = 520002,
	gadget_13 = 520003,
	gadget_14 = 520004,
	gadget_15 = 520005,
	gadget_21 = 520006,
	gadget_22 = 520007,
	gadget_23 = 520008,
	gadget_24 = 520009,
	gadget_25 = 520010,
	gadget_31 = 520011,
	gadget_32 = 520012,
	gadget_33 = 520013,
	gadget_34 = 520014,
	gadget_35 = 520015,
	gadget_41 = 520016,
	gadget_42 = 520017,
	gadget_43 = 520018,
	gadget_44 = 520019,
	gadget_45 = 520020,
	gadget_51 = 520021,
	gadget_52 = 520022,
	gadget_53 = 520023,
	gadget_54 = 520024,
	gadget_55 = 520025,
	trigger_boarder = 520027,
	gadget_starter = 520013,
	gadget_ender = 520014
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
	{ config_id = 520001, gadget_id = 70360186, pos = { x = -3732.911, y = 204.404, z = -1680.559 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520002, gadget_id = 70360186, pos = { x = -3733.794, y = 204.404, z = -1678.655 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520003, gadget_id = 70360186, pos = { x = -3734.678, y = 204.404, z = -1676.750 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520004, gadget_id = 70360186, pos = { x = -3735.562, y = 204.404, z = -1674.844 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520005, gadget_id = 70360186, pos = { x = -3736.444, y = 204.404, z = -1672.940 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520006, gadget_id = 70360186, pos = { x = -3731.049, y = 204.405, z = -1679.694 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520007, gadget_id = 70360186, pos = { x = -3731.931, y = 204.405, z = -1677.789 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520008, gadget_id = 70360186, pos = { x = -3732.816, y = 204.405, z = -1675.884 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520009, gadget_id = 70360186, pos = { x = -3733.699, y = 204.405, z = -1673.979 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520010, gadget_id = 70360186, pos = { x = -3734.582, y = 204.405, z = -1672.074 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520011, gadget_id = 70360186, pos = { x = -3729.165, y = 204.404, z = -1678.818 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520012, gadget_id = 70360186, pos = { x = -3730.048, y = 204.404, z = -1676.914 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520013, gadget_id = 70360186, pos = { x = -3730.932, y = 204.404, z = -1675.008 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 520014, gadget_id = 70360186, pos = { x = -3731.815, y = 204.404, z = -1673.103 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520015, gadget_id = 70360186, pos = { x = -3732.698, y = 204.404, z = -1671.198 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, state = GadgetState.Action03, area_id = 13 },
	{ config_id = 520016, gadget_id = 70360186, pos = { x = -3727.261, y = 204.388, z = -1677.933 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520017, gadget_id = 70360186, pos = { x = -3728.144, y = 204.388, z = -1676.029 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520018, gadget_id = 70360186, pos = { x = -3729.027, y = 204.388, z = -1674.123 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520019, gadget_id = 70360186, pos = { x = -3729.911, y = 204.388, z = -1672.218 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520020, gadget_id = 70360186, pos = { x = -3730.794, y = 204.388, z = -1670.313 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520021, gadget_id = 70360186, pos = { x = -3725.396, y = 204.386, z = -1677.055 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520022, gadget_id = 70360186, pos = { x = -3726.278, y = 204.386, z = -1675.150 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520023, gadget_id = 70360186, pos = { x = -3727.162, y = 204.386, z = -1673.245 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520024, gadget_id = 70360186, pos = { x = -3728.045, y = 204.386, z = -1671.340 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520025, gadget_id = 70360186, pos = { x = -3728.928, y = 204.386, z = -1669.435 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 10, area_id = 13 },
	{ config_id = 520026, gadget_id = 70211111, pos = { x = -3734.565, y = 223.047, z = -1666.604 }, rot = { x = 0.000, y = 154.755, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 520027, shape = RegionShape.SPHERE, radius = 7.07, pos = { x = -3730.538, y = 203.975, z = -1675.497 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1520028, name = "VARIABLE_CHANGE_520028", event = EventType.EVENT_VARIABLE_CHANGE, source = "successed", condition = "condition_EVENT_VARIABLE_CHANGE_520028", action = "action_EVENT_VARIABLE_CHANGE_520028" },
	{ config_id = 1520029, name = "GROUP_LOAD_520029", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_520029", trigger_count = 0 }
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
	end_suite = 3,
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 520001, 520002, 520003, 520004, 520005, 520006, 520007, 520008, 520009, 520010, 520011, 520012, 520013, 520014, 520015, 520016, 520017, 520018, 520019, 520020, 520021, 520022, 520023, 520024, 520025 },
		regions = { 520027 },
		triggers = { "VARIABLE_CHANGE_520028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 520026 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_520028", "GROUP_LOAD_520029" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_520028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_520028(context, evt)
	-- 将本组内变量名为 "num" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "num", 1, 133212367) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_520029(context, evt)
	-- 将本组内变量名为 "num" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "num", 1, 133212367) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/DrawOneLine"