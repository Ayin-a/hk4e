-- 基础信息
local base_info = {
	group_id = 133220531
}

-- Trigger变量
local defs = {
	group_ID = 133220531,
	gadget_1 = 531001,
	rotation_1 = 0,
	gadget_2 = 531002,
	rotation_2 = 180,
	gadget_3 = 531003,
	rotation_3 = 180,
	gadget_4 = 0,
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
	{ config_id = 531001, gadget_id = 70330083, pos = { x = -2817.371, y = 211.299, z = -4215.493 }, rot = { x = 0.000, y = 324.025, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 531002, gadget_id = 70330081, pos = { x = -2819.253, y = 211.026, z = -4216.932 }, rot = { x = 0.000, y = 324.025, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 531003, gadget_id = 70330081, pos = { x = -2821.266, y = 210.751, z = -4218.327 }, rot = { x = 0.000, y = 324.025, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 531004, gadget_id = 70330084, pos = { x = -2819.229, y = 211.001, z = -4216.895 }, rot = { x = 0.000, y = 324.025, z = 0.000 }, level = 2, area_id = 11 },
	{ config_id = 531006, gadget_id = 70211111, pos = { x = -2820.191, y = 211.056, z = -4215.856 }, rot = { x = 0.000, y = 331.135, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 531008, gadget_id = 70330084, pos = { x = -2821.321, y = 210.754, z = -4218.307 }, rot = { x = 0.000, y = 56.785, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1531007, name = "VARIABLE_CHANGE_531007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_531007", action = "" }
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
		gadgets = { 531001, 531002, 531003, 531004, 531008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 531006 },
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
function condition_EVENT_VARIABLE_CHANGE_531007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightSquare"