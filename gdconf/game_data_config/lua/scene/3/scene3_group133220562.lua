-- 基础信息
local base_info = {
	group_id = 133220562
}

-- Trigger变量
local defs = {
	group_ID = 133220562,
	gadget_1 = 562001,
	rotation_1 = 180,
	gadget_2 = 562002,
	rotation_2 = 0,
	gadget_3 = 562003,
	rotation_3 = 180,
	gadget_4 = 562005,
	rotation_4 = 180,
	gadget_5 = 562008,
	rotation_5 = 180,
	gadget_connect1 = {},
	gadget_connect2 = {},
	gadget_connect3 = {},
	gadget_connect4 = {562002,562003},
	gadget_connect5 = {562001,562002}
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
	{ config_id = 562001, gadget_id = 70330083, pos = { x = -2723.612, y = 259.288, z = -4399.223 }, rot = { x = 0.000, y = 333.303, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 562002, gadget_id = 70330083, pos = { x = -2721.825, y = 259.035, z = -4398.325 }, rot = { x = 0.000, y = 333.303, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 562003, gadget_id = 70330083, pos = { x = -2720.039, y = 258.784, z = -4397.426 }, rot = { x = 0.000, y = 333.303, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 562005, gadget_id = 70330081, pos = { x = -2718.251, y = 258.540, z = -4396.527 }, rot = { x = 0.000, y = 333.303, z = 0.000 }, level = 27, is_use_point_array = true, area_id = 11 },
	{ config_id = 562006, gadget_id = 70211111, pos = { x = -2723.981, y = 257.959, z = -4394.902 }, rot = { x = 20.386, y = 328.186, z = 352.134 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 562008, gadget_id = 70330081, pos = { x = -2725.473, y = 259.557, z = -4400.158 }, rot = { x = 0.000, y = 333.303, z = 0.000 }, level = 27, is_use_point_array = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1562007, name = "VARIABLE_CHANGE_562007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_562007", action = "" }
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
		gadgets = { 562001, 562002, 562003, 562005, 562008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 562006 },
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
function condition_EVENT_VARIABLE_CHANGE_562007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightSquare"