-- 基础信息
local base_info = {
	group_id = 133213089
}

-- Trigger变量
local defs = {
	group_ID = 133213089,
	gadget_1 = 89001,
	rotation_1 = 0,
	gadget_2 = 89002,
	rotation_2 = 90,
	gadget_3 = 89003,
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
	{ config_id = 89001, gadget_id = 70330081, pos = { x = -3400.466, y = 199.325, z = -2992.182 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 2, state = GadgetState.GearStop, is_use_point_array = true, area_id = 12 },
	{ config_id = 89002, gadget_id = 70330081, pos = { x = -3405.453, y = 199.637, z = -2992.029 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 2, state = GadgetState.GearStop, is_use_point_array = true, area_id = 12 },
	{ config_id = 89003, gadget_id = 70330081, pos = { x = -3410.228, y = 199.637, z = -2991.966 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 2, state = GadgetState.GearStop, is_use_point_array = true, area_id = 12 },
	{ config_id = 89004, gadget_id = 70330084, pos = { x = -3410.318, y = 200.000, z = -2992.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 12 },
	{ config_id = 89005, gadget_id = 70330085, pos = { x = -3410.234, y = 201.366, z = -2991.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 12 },
	{ config_id = 89006, gadget_id = 70211131, pos = { x = -3405.505, y = 199.637, z = -2994.174 }, rot = { x = 0.000, y = 182.910, z = 0.000 }, level = 26, drop_tag = "解谜超级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 89008, gadget_id = 70330084, pos = { x = -3405.468, y = 200.000, z = -2992.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 89009, gadget_id = 70330085, pos = { x = -3405.470, y = 201.414, z = -2992.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 89010, gadget_id = 70330084, pos = { x = -3400.472, y = 199.707, z = -2992.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 89011, gadget_id = 70330085, pos = { x = -3400.457, y = 201.094, z = -2992.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1089007, name = "VARIABLE_CHANGE_89007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_89007", action = "" }
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
		gadgets = { 89001, 89002, 89003, 89004, 89005, 89008, 89009, 89010, 89011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 89006 },
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
function condition_EVENT_VARIABLE_CHANGE_89007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightSquare"