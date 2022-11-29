-- 基础信息
local base_info = {
	group_id = 133213473
}

-- Trigger变量
local defs = {
	group_ID = 133213473,
	gadget_1 = 473001,
	rotation_1 = 0,
	gadget_2 = 473002,
	rotation_2 = 90,
	gadget_3 = 473003,
	rotation_3 = 0,
	gadget_4 = 0,
	rotation_4 = 0,
	gadget_5 = 0,
	rotation_5 = 0,
	gadget_connect1 = {473002},
	gadget_connect2 = {473001,473003},
	gadget_connect3 = {473002},
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
	{ config_id = 473001, gadget_id = 70330081, pos = { x = -3206.421, y = 203.391, z = -3580.401 }, rot = { x = 0.863, y = 215.875, z = 1.577 }, level = 2, is_use_point_array = true, area_id = 12 },
	{ config_id = 473002, gadget_id = 70330081, pos = { x = -3200.958, y = 201.039, z = -3581.453 }, rot = { x = 0.000, y = 215.863, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 12 },
	{ config_id = 473003, gadget_id = 70330081, pos = { x = -3202.255, y = 204.042, z = -3575.416 }, rot = { x = 0.000, y = 215.863, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 12 },
	{ config_id = 473004, gadget_id = 70330084, pos = { x = -3206.407, y = 203.121, z = -3580.430 }, rot = { x = 4.968, y = 216.288, z = 9.770 }, level = 2, area_id = 12 },
	{ config_id = 473005, gadget_id = 70330085, pos = { x = -3206.403, y = 205.476, z = -3580.448 }, rot = { x = 0.000, y = 215.863, z = 0.000 }, level = 2, area_id = 12 },
	{ config_id = 473006, gadget_id = 70211111, pos = { x = -3196.754, y = 200.290, z = -3582.839 }, rot = { x = 3.630, y = 125.705, z = 2.606 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 473008, gadget_id = 70330084, pos = { x = -3202.241, y = 203.611, z = -3575.272 }, rot = { x = 3.517, y = 216.054, z = 6.214 }, level = 27, area_id = 12 },
	{ config_id = 473009, gadget_id = 70330085, pos = { x = -3202.271, y = 206.143, z = -3575.367 }, rot = { x = 0.000, y = 215.863, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 473010, gadget_id = 70330085, pos = { x = -3200.963, y = 203.071, z = -3581.450 }, rot = { x = 0.000, y = 215.863, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 473011, gadget_id = 70330084, pos = { x = -3201.081, y = 200.706, z = -3581.432 }, rot = { x = 359.979, y = 215.695, z = 7.656 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1473007, name = "VARIABLE_CHANGE_473007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_473007", action = "" }
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
		gadgets = { 473001, 473002, 473003, 473004, 473005, 473008, 473009, 473010, 473011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 473006 },
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
function condition_EVENT_VARIABLE_CHANGE_473007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightSquare"