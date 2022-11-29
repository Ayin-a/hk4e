-- 基础信息
local base_info = {
	group_id = 133217203
}

-- Trigger变量
local defs = {
	group_ID = 133217203,
	gadget_1 = 203001,
	rotation_1 = 90,
	gadget_2 = 203002,
	rotation_2 = 270,
	gadget_3 = 203003,
	rotation_3 = 180,
	gadget_4 = 203008,
	rotation_4 = 0,
	gadget_5 = 0,
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
	{ config_id = 203001, gadget_id = 70330081, pos = { x = -4840.996, y = 203.043, z = -4115.231 }, rot = { x = 359.066, y = 316.582, z = 359.013 }, level = 2, is_use_point_array = true, area_id = 14 },
	{ config_id = 203002, gadget_id = 70330081, pos = { x = -4838.897, y = 201.530, z = -4113.958 }, rot = { x = 359.066, y = 316.582, z = 359.013 }, level = 2, is_use_point_array = true, area_id = 14 },
	{ config_id = 203003, gadget_id = 70330081, pos = { x = -4842.403, y = 201.468, z = -4117.317 }, rot = { x = 359.066, y = 316.582, z = 359.013 }, level = 2, is_use_point_array = true, area_id = 14 },
	{ config_id = 203004, gadget_id = 70330084, pos = { x = -4838.890, y = 201.500, z = -4113.958 }, rot = { x = 359.066, y = 316.582, z = 359.013 }, level = 2, area_id = 14 },
	{ config_id = 203006, gadget_id = 70211101, pos = { x = -4842.298, y = 201.316, z = -4113.840 }, rot = { x = 5.493, y = 316.513, z = 2.762 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 203008, gadget_id = 70330083, pos = { x = -4841.032, y = 201.468, z = -4115.231 }, rot = { x = 359.066, y = 316.582, z = 359.013 }, level = 30, is_use_point_array = true, area_id = 14 },
	{ config_id = 203009, gadget_id = 70330084, pos = { x = -4842.396, y = 201.457, z = -4117.317 }, rot = { x = 359.066, y = 316.582, z = 359.013 }, level = 30, is_use_point_array = true, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1203007, name = "VARIABLE_CHANGE_203007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_203007", action = "" }
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
		gadgets = { 203001, 203002, 203003, 203004, 203008, 203009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 203006 },
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
function condition_EVENT_VARIABLE_CHANGE_203007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightSquare"