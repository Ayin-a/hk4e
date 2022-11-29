-- 基础信息
local base_info = {
	group_id = 133210058
}

-- Trigger变量
local defs = {
	group_ID = 133210058,
	gadget_1 = 58001,
	rotation_1 = 270,
	gadget_2 = 58002,
	rotation_2 = 0,
	gadget_3 = 58003,
	rotation_3 = 90,
	gadget_4 = 58006,
	rotation_4 = 90,
	gadget_5 = 58010,
	rotation_5 = 180,
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
	{ config_id = 58001, gadget_id = 70330081, pos = { x = -3588.974, y = 203.304, z = -843.397 }, rot = { x = 0.000, y = 193.537, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 17 },
	{ config_id = 58002, gadget_id = 70330081, pos = { x = -3588.975, y = 204.889, z = -843.397 }, rot = { x = 0.000, y = 193.537, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 17 },
	{ config_id = 58003, gadget_id = 70330083, pos = { x = -3570.485, y = 203.295, z = -858.256 }, rot = { x = 351.362, y = 193.918, z = 354.960 }, level = 2, is_use_point_array = true, area_id = 17 },
	{ config_id = 58004, gadget_id = 70330084, pos = { x = -3588.973, y = 202.972, z = -843.395 }, rot = { x = 0.000, y = 193.537, z = 0.000 }, level = 2, area_id = 17 },
	{ config_id = 58005, gadget_id = 70330085, pos = { x = -3588.978, y = 206.719, z = -843.396 }, rot = { x = 0.000, y = 193.537, z = 0.000 }, level = 2, area_id = 17 },
	{ config_id = 58006, gadget_id = 70330083, pos = { x = -3597.399, y = 199.441, z = -873.409 }, rot = { x = 352.865, y = 194.643, z = 342.402 }, level = 2, is_use_point_array = true, area_id = 17 },
	{ config_id = 58010, gadget_id = 70330081, pos = { x = -3585.279, y = 207.848, z = -876.144 }, rot = { x = 0.000, y = 193.537, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 17 },
	{ config_id = 58012, gadget_id = 70330084, pos = { x = -3585.277, y = 207.511, z = -876.147 }, rot = { x = 0.000, y = 193.537, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 58013, gadget_id = 70330085, pos = { x = -3585.279, y = 209.677, z = -876.144 }, rot = { x = 0.000, y = 193.537, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 【后果自负】检测玩法成功的Trigger。如果你希望在玩法成功后再做某些事，将这个Trigger挪到suite1里，并在action里写上你想做的事。
	{ config_id = 1058007, name = "VARIABLE_CHANGE_58007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_58007", action = "action_EVENT_VARIABLE_CHANGE_58007" }
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
		gadgets = { 58001, 58002, 58003, 58004, 58005, 58006, 58010, 58012, 58013 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_58007" },
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
function condition_EVENT_VARIABLE_CHANGE_58007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_58007(context, evt)
	-- 将本组内变量名为 "GadgetCreate" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GadgetCreate", 1, 133210305) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/LightSquare"