-- 基础信息
local base_info = {
	group_id = 133225045
}

-- Trigger变量
local defs = {
	group_ID = 133225045,
	gadget_1 = 45001,
	rotation_1 = 0,
	gadget_2 = 45002,
	rotation_2 = 90,
	gadget_3 = 45003,
	rotation_3 = 180,
	gadget_4 = 45006,
	rotation_4 = 0,
	gadget_5 = 45010,
	rotation_5 = 90,
	gadget_connect1 = {45010,45002},
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
	{ config_id = 45001, gadget_id = 70330081, pos = { x = -6236.079, y = 245.403, z = -2548.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 18 },
	{ config_id = 45002, gadget_id = 70330081, pos = { x = -6237.464, y = 246.238, z = -2560.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 18 },
	{ config_id = 45003, gadget_id = 70330081, pos = { x = -6228.472, y = 243.534, z = -2547.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 45004, gadget_id = 70330084, pos = { x = -6237.500, y = 246.195, z = -2560.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 18 },
	{ config_id = 45005, gadget_id = 70330085, pos = { x = -6237.441, y = 247.994, z = -2560.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 18 },
	{ config_id = 45006, gadget_id = 70330083, pos = { x = -6236.079, y = 244.145, z = -2548.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 45008, gadget_id = 70330084, pos = { x = -6228.508, y = 243.491, z = -2547.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 45009, gadget_id = 70330085, pos = { x = -6228.449, y = 245.290, z = -2547.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 45010, gadget_id = 70330081, pos = { x = -6235.147, y = 244.813, z = -2536.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 45011, gadget_id = 70330084, pos = { x = -6235.183, y = 244.770, z = -2536.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 45012, gadget_id = 70330085, pos = { x = -6235.124, y = 246.569, z = -2536.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 45013, gadget_id = 70211101, pos = { x = -6239.206, y = 244.424, z = -2548.334 }, rot = { x = 0.000, y = 269.029, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1045007, name = "VARIABLE_CHANGE_45007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_45007", action = "" }
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
		gadgets = { 45001, 45002, 45003, 45004, 45005, 45006, 45008, 45009, 45010, 45011, 45012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 45013 },
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
function condition_EVENT_VARIABLE_CHANGE_45007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightSquare"