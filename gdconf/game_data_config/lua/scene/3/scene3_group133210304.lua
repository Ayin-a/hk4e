-- 基础信息
local base_info = {
	group_id = 133210304
}

-- Trigger变量
local defs = {
	group_ID = 133210304,
	gadget_1 = 304001,
	rotation_1 = 90,
	gadget_2 = 304002,
	rotation_2 = 180,
	gadget_3 = 304003,
	rotation_3 = 270,
	gadget_4 = 304008,
	rotation_4 = 0,
	gadget_5 = 304015,
	rotation_5 = 0,
	gadget_connect1 = {},
	gadget_connect2 = {},
	gadget_connect3 = {},
	gadget_connect4 = {},
	gadget_connect5 = {}
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
	{ config_id = 304001, gadget_id = 70330081, pos = { x = -3802.563, y = 250.235, z = -545.890 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 17 },
	{ config_id = 304002, gadget_id = 70330081, pos = { x = -3807.457, y = 249.996, z = -550.508 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 17 },
	{ config_id = 304003, gadget_id = 70330081, pos = { x = -3798.418, y = 248.596, z = -550.360 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 17 },
	{ config_id = 304004, gadget_id = 70330084, pos = { x = -3802.564, y = 249.903, z = -545.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 17 },
	{ config_id = 304005, gadget_id = 70330085, pos = { x = -3802.562, y = 252.060, z = -545.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 17 },
	{ config_id = 304006, gadget_id = 70330083, pos = { x = -3803.042, y = 250.217, z = -540.020 }, rot = { x = 339.273, y = 175.530, z = 36.168 }, level = 30, state = GadgetState.Action01, is_use_point_array = true, area_id = 17 },
	{ config_id = 304008, gadget_id = 70330083, pos = { x = -3816.403, y = 252.119, z = -550.793 }, rot = { x = 336.324, y = 92.155, z = 325.358 }, level = 30, state = GadgetState.Action01, is_use_point_array = true, area_id = 17 },
	{ config_id = 304009, gadget_id = 70330084, pos = { x = -3807.462, y = 249.664, z = -550.508 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 304010, gadget_id = 70330085, pos = { x = -3807.457, y = 251.821, z = -550.508 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 304011, gadget_id = 70330084, pos = { x = -3798.419, y = 248.597, z = -550.360 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 304012, gadget_id = 70330085, pos = { x = -3798.419, y = 250.421, z = -550.356 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 304013, gadget_id = 70330083, pos = { x = -3791.490, y = 246.330, z = -551.000 }, rot = { x = 314.213, y = 274.248, z = 344.113 }, level = 30, state = GadgetState.Action01, is_use_point_array = true, area_id = 17 },
	{ config_id = 304014, gadget_id = 70330083, pos = { x = -3802.519, y = 246.214, z = -561.311 }, rot = { x = 319.672, y = 18.392, z = 15.117 }, level = 30, state = GadgetState.Action01, is_use_point_array = true, area_id = 17 },
	{ config_id = 304015, gadget_id = 70330081, pos = { x = -3802.930, y = 248.489, z = -556.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 17 },
	{ config_id = 304016, gadget_id = 70330084, pos = { x = -3802.932, y = 248.158, z = -556.038 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 304017, gadget_id = 70330085, pos = { x = -3802.929, y = 250.314, z = -556.037 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 【后果自负】检测玩法成功的Trigger。如果你希望在玩法成功后再做某些事，将这个Trigger挪到suite1里，并在action里写上你想做的事。
	{ config_id = 1304007, name = "VARIABLE_CHANGE_304007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_304007", action = "action_EVENT_VARIABLE_CHANGE_304007" },
	-- 【后果自负】检测玩法成功的Trigger。如果你希望在玩法成功后再做某些事，将这个Trigger挪到suite1里，并在action里写上你想做的事。
	{ config_id = 1304018, name = "GROUP_LOAD_304018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_304018", action = "action_EVENT_GROUP_LOAD_304018", trigger_count = 0 }
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
		gadgets = { 304001, 304002, 304003, 304004, 304005, 304006, 304008, 304009, 304010, 304011, 304012, 304013, 304014, 304015, 304016, 304017 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_304007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_VARIABLE_CHANGE_304007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_304007(context, evt)
	-- 将本组内变量名为 "GadgetCreate" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GadgetCreate", 1, 133210301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_304018(context, evt)
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_304018(context, evt)
	-- 将configid为 304006 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 304006, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 304013 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 304013, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 304014 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 304014, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/LightSquare"