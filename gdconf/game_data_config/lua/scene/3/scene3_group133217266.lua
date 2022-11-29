-- 基础信息
local base_info = {
	group_id = 133217266
}

-- Trigger变量
local defs = {
	group_ID = 133217266,
	gadget_1 = 266001,
	rotation_1 = 90,
	gadget_2 = 266002,
	rotation_2 = 90,
	gadget_3 = 266003,
	rotation_3 = 90,
	gadget_4 = 266008,
	rotation_4 = 180,
	gadget_5 = 266011,
	rotation_5 = 270,
	gadget_connect1 = {},
	gadget_connect2 = {},
	gadget_connect3 = {},
	gadget_connect4 = {266002},
	gadget_connect5 = {266003}
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
	{ config_id = 266001, gadget_id = 70330081, pos = { x = -4547.462, y = 200.115, z = -3868.994 }, rot = { x = 0.000, y = 19.864, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 14 },
	{ config_id = 266002, gadget_id = 70330081, pos = { x = -4547.462, y = 201.426, z = -3868.994 }, rot = { x = 0.000, y = 19.864, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 14 },
	{ config_id = 266003, gadget_id = 70330081, pos = { x = -4547.446, y = 202.688, z = -3868.996 }, rot = { x = 0.000, y = 19.864, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 14 },
	{ config_id = 266004, gadget_id = 70330084, pos = { x = -4547.462, y = 200.114, z = -3868.994 }, rot = { x = 0.000, y = 94.215, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 266005, gadget_id = 70330085, pos = { x = -4547.462, y = 204.572, z = -3868.994 }, rot = { x = 0.000, y = 19.864, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 266006, gadget_id = 70211101, pos = { x = -4550.282, y = 200.671, z = -3874.960 }, rot = { x = 8.007, y = 16.188, z = 358.989 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 266008, gadget_id = 70330081, pos = { x = -4548.833, y = 200.102, z = -3868.536 }, rot = { x = 0.000, y = 19.864, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 14 },
	{ config_id = 266009, gadget_id = 70310006, pos = { x = -4555.774, y = 200.295, z = -3858.699 }, rot = { x = 0.070, y = 103.347, z = 359.654 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 266010, gadget_id = 70330084, pos = { x = -4548.833, y = 200.101, z = -3868.535 }, rot = { x = 0.000, y = 3.601, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 266011, gadget_id = 70330081, pos = { x = -4550.211, y = 200.096, z = -3868.018 }, rot = { x = 0.000, y = 19.864, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 14 },
	{ config_id = 266012, gadget_id = 70330084, pos = { x = -4550.211, y = 200.095, z = -3868.017 }, rot = { x = 0.000, y = 144.937, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 266013, gadget_id = 70950135, pos = { x = -4557.125, y = 200.298, z = -3854.688 }, rot = { x = 2.858, y = 182.265, z = 355.647 }, level = 30, area_id = 14 },
	{ config_id = 266015, gadget_id = 70220052, pos = { x = -4555.393, y = 200.395, z = -3855.679 }, rot = { x = 0.000, y = 169.248, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 266016, gadget_id = 70710352, pos = { x = -4558.711, y = 199.986, z = -3854.710 }, rot = { x = 0.000, y = 329.633, z = 335.547 }, level = 30, area_id = 14 },
	{ config_id = 266017, gadget_id = 70220052, pos = { x = -4547.303, y = 200.570, z = -3863.236 }, rot = { x = 354.790, y = 301.358, z = 197.579 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 【后果自负】检测玩法成功的Trigger。如果你希望在玩法成功后再做某些事，将这个Trigger挪到suite1里，并在action里写上你想做的事。
	{ config_id = 1266007, name = "VARIABLE_CHANGE_266007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_266007", action = "action_EVENT_VARIABLE_CHANGE_266007" }
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
		gadgets = { 266001, 266002, 266003, 266004, 266005, 266008, 266009, 266010, 266011, 266012, 266013, 266015, 266016, 266017 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_266007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 266006 },
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
function condition_EVENT_VARIABLE_CHANGE_266007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_266007(context, evt)
	-- 创建id为266006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 266006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/LightSquare"