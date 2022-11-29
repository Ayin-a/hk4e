-- 基础信息
local base_info = {
	group_id = 111101175
}

-- Trigger变量
local defs = {
	group_ID = 111101175,
	gadget_1 = 175001,
	rotation_1 = 0,
	gadget_2 = 175002,
	rotation_2 = 0,
	gadget_3 = 175003,
	rotation_3 = 0,
	gadget_4 = 175008,
	rotation_4 = 270,
	gadget_5 = 175009,
	rotation_5 = 0,
	gadget_connect1 = {175003,175008},
	gadget_connect2 = {175008,175009},
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
	{ config_id = 175001, gadget_id = 70330081, pos = { x = 2454.311, y = 290.939, z = -1536.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 175002, gadget_id = 70330081, pos = { x = 2450.750, y = 290.466, z = -1536.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 175003, gadget_id = 70330083, pos = { x = 2456.303, y = 289.058, z = -1536.509 }, rot = { x = 3.720, y = 0.422, z = 12.947 }, level = 1, is_use_point_array = true },
	{ config_id = 175004, gadget_id = 70330084, pos = { x = 2454.312, y = 288.631, z = -1536.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 175006, gadget_id = 70211111, pos = { x = 2453.199, y = 288.095, z = -1532.837 }, rot = { x = 5.085, y = 0.609, z = 13.653 }, level = 6, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true },
	{ config_id = 175008, gadget_id = 70330083, pos = { x = 2452.946, y = 288.287, z = -1536.509 }, rot = { x = 3.688, y = 0.418, z = 12.919 }, level = 1, is_use_point_array = true },
	{ config_id = 175009, gadget_id = 70330083, pos = { x = 2449.390, y = 287.495, z = -1536.509 }, rot = { x = 3.961, y = 0.408, z = 11.750 }, level = 1, is_use_point_array = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1175007, name = "VARIABLE_CHANGE_175007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_175007", action = "" }
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
		gadgets = { 175001, 175002, 175003, 175004, 175008, 175009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 175006 },
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
function condition_EVENT_VARIABLE_CHANGE_175007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightSquare"