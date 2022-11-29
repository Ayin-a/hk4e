-- 基础信息
local base_info = {
	group_id = 133213205
}

-- Trigger变量
local defs = {
	group_ID = 133213205,
	gadget_1 = 205001,
	rotation_1 = 0,
	gadget_2 = 205002,
	rotation_2 = 0,
	gadget_3 = 205003,
	rotation_3 = 0,
	gadget_4 = 205008,
	rotation_4 = 270,
	gadget_5 = 205012,
	rotation_5 = 0,
	gadget_connect1 = {205003,205008},
	gadget_connect2 = {205008,205012},
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
	{ config_id = 205001, gadget_id = 70330081, pos = { x = -3213.505, y = 221.187, z = -3440.116 }, rot = { x = 10.979, y = 50.033, z = 357.377 }, level = 2, is_use_point_array = true, area_id = 12 },
	{ config_id = 205002, gadget_id = 70330081, pos = { x = -3217.944, y = 221.355, z = -3432.906 }, rot = { x = 10.999, y = 66.766, z = 358.809 }, level = 2, is_use_point_array = true, area_id = 12 },
	{ config_id = 205003, gadget_id = 70330083, pos = { x = -3218.839, y = 223.066, z = -3444.136 }, rot = { x = 5.381, y = 49.340, z = 355.618 }, level = 27, is_use_point_array = true, area_id = 12 },
	{ config_id = 205004, gadget_id = 70330084, pos = { x = -3213.505, y = 221.187, z = -3440.116 }, rot = { x = 10.979, y = 50.033, z = 357.377 }, level = 2, area_id = 12 },
	{ config_id = 205005, gadget_id = 70330085, pos = { x = -3213.147, y = 223.254, z = -3439.958 }, rot = { x = 10.979, y = 50.033, z = 357.377 }, level = 2, area_id = 12 },
	{ config_id = 205006, gadget_id = 70211111, pos = { x = -3217.962, y = 221.726, z = -3438.062 }, rot = { x = 8.451, y = 51.302, z = 357.699 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 205008, gadget_id = 70330083, pos = { x = -3220.713, y = 223.746, z = -3438.617 }, rot = { x = 19.761, y = 64.535, z = 353.520 }, level = 27, is_use_point_array = true, area_id = 12 },
	{ config_id = 205010, gadget_id = 70330084, pos = { x = -3217.944, y = 221.355, z = -3432.906 }, rot = { x = 10.999, y = 66.766, z = 358.809 }, level = 27, area_id = 12 },
	{ config_id = 205011, gadget_id = 70330085, pos = { x = -3217.587, y = 223.423, z = -3432.747 }, rot = { x = 10.999, y = 66.766, z = 358.809 }, level = 27, area_id = 12 },
	{ config_id = 205012, gadget_id = 70330083, pos = { x = -3223.882, y = 224.423, z = -3434.372 }, rot = { x = 12.211, y = 66.997, z = 354.129 }, level = 27, is_use_point_array = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1205007, name = "VARIABLE_CHANGE_205007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_205007", action = "" }
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
		gadgets = { 205001, 205002, 205003, 205004, 205005, 205008, 205010, 205011, 205012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 205006 },
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
function condition_EVENT_VARIABLE_CHANGE_205007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightSquare"