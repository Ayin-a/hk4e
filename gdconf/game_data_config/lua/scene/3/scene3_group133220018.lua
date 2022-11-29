-- 基础信息
local base_info = {
	group_id = 133220018
}

-- Trigger变量
local defs = {
	group_ID = 133220018,
	gadget_11 = 18001,
	gadget_12 = 18002,
	gadget_13 = 18003,
	gadget_14 = 18004,
	gadget_15 = 18005,
	gadget_21 = 18006,
	gadget_22 = 18007,
	gadget_23 = 18008,
	gadget_24 = 18009,
	gadget_25 = 18010,
	gadget_31 = 18011,
	gadget_32 = 18012,
	gadget_33 = 18013,
	gadget_34 = 18014,
	gadget_35 = 18015,
	gadget_41 = 18016,
	gadget_42 = 18017,
	gadget_43 = 18018,
	gadget_44 = 18019,
	gadget_45 = 18020,
	gadget_51 = 18021,
	gadget_52 = 18022,
	gadget_53 = 18023,
	gadget_54 = 18024,
	gadget_55 = 18025,
	trigger_boarder = 18027,
	gadget_starter = 18015,
	gadget_ender = 18014
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
	{ config_id = 18001, gadget_id = 70360186, pos = { x = -2158.900, y = 162.365, z = -4496.152 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18002, gadget_id = 70360186, pos = { x = -2158.049, y = 162.365, z = -4498.071 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18003, gadget_id = 70360186, pos = { x = -2157.198, y = 162.365, z = -4499.992 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18004, gadget_id = 70360186, pos = { x = -2156.347, y = 162.365, z = -4501.911 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18005, gadget_id = 70360186, pos = { x = -2155.496, y = 162.365, z = -4503.830 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18006, gadget_id = 70360186, pos = { x = -2160.777, y = 162.367, z = -4496.987 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18007, gadget_id = 70360186, pos = { x = -2159.926, y = 162.367, z = -4498.905 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18008, gadget_id = 70360186, pos = { x = -2159.075, y = 162.367, z = -4500.826 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18009, gadget_id = 70360186, pos = { x = -2158.224, y = 162.367, z = -4502.745 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18010, gadget_id = 70360186, pos = { x = -2157.372, y = 162.367, z = -4504.666 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18011, gadget_id = 70360186, pos = { x = -2162.676, y = 162.366, z = -4497.832 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18012, gadget_id = 70360186, pos = { x = -2161.823, y = 162.366, z = -4499.750 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18013, gadget_id = 70360186, pos = { x = -2160.972, y = 162.366, z = -4501.670 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, state = GadgetState.Action03, area_id = 11 },
	{ config_id = 18014, gadget_id = 70360186, pos = { x = -2160.121, y = 162.366, z = -4503.589 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18015, gadget_id = 70360186, pos = { x = -2159.270, y = 162.366, z = -4505.510 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 18016, gadget_id = 70360186, pos = { x = -2164.594, y = 162.351, z = -4498.685 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18017, gadget_id = 70360186, pos = { x = -2163.743, y = 162.351, z = -4500.602 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18018, gadget_id = 70360186, pos = { x = -2162.891, y = 162.351, z = -4502.525 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18019, gadget_id = 70360186, pos = { x = -2162.040, y = 162.351, z = -4504.444 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18020, gadget_id = 70360186, pos = { x = -2161.188, y = 162.351, z = -4506.362 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18021, gadget_id = 70360186, pos = { x = -2166.474, y = 162.350, z = -4499.533 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18022, gadget_id = 70360186, pos = { x = -2165.623, y = 162.350, z = -4501.451 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18023, gadget_id = 70360186, pos = { x = -2164.772, y = 162.350, z = -4503.370 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18024, gadget_id = 70360186, pos = { x = -2163.920, y = 162.350, z = -4505.289 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18025, gadget_id = 70360186, pos = { x = -2163.069, y = 162.350, z = -4507.209 }, rot = { x = 0.000, y = 336.084, z = 0.000 }, level = 10, area_id = 11 },
	{ config_id = 18026, gadget_id = 70211111, pos = { x = -2166.674, y = 162.000, z = -4488.082 }, rot = { x = 0.000, y = 157.148, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 18027, shape = RegionShape.SPHERE, radius = 7.07, pos = { x = -2160.990, y = 163.660, z = -4501.758 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1018028, name = "VARIABLE_CHANGE_18028", event = EventType.EVENT_VARIABLE_CHANGE, source = "successed", condition = "condition_EVENT_VARIABLE_CHANGE_18028", action = "action_EVENT_VARIABLE_CHANGE_18028", trigger_count = 0 },
	{ config_id = 1018029, name = "GROUP_LOAD_18029", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_18029", trigger_count = 0 }
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
		gadgets = { 18001, 18002, 18003, 18004, 18005, 18006, 18007, 18008, 18009, 18010, 18011, 18012, 18013, 18014, 18015, 18016, 18017, 18018, 18019, 18020, 18021, 18022, 18023, 18024, 18025 },
		regions = { 18027 },
		triggers = { "VARIABLE_CHANGE_18028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 18026 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_18028", "GROUP_LOAD_18029" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_18028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_18028(context, evt)
	-- 将本组内变量名为 "successed" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "successed", 1, 133220563) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_18029(context, evt)
	-- 将本组内变量名为 "successed" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "successed", 1, 133220563) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/DrawOneLine"