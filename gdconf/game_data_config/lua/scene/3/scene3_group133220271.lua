-- 基础信息
local base_info = {
	group_id = 133220271
}

-- Trigger变量
local defs = {
	group_ID = 133220271,
	gadget_1 = 271001,
	rotation_1 = 0,
	gadget_2 = 271002,
	rotation_2 = 0,
	gadget_3 = 271003,
	rotation_3 = 0,
	gadget_4 = 271008,
	rotation_4 = 270,
	gadget_5 = 271009,
	rotation_5 = 0,
	gadget_connect1 = {271003,271008},
	gadget_connect2 = {271008,271009},
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
	{ config_id = 271001, gadget_id = 70330081, pos = { x = -2384.366, y = 251.409, z = -4418.396 }, rot = { x = 0.000, y = 292.453, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 271002, gadget_id = 70330081, pos = { x = -2382.854, y = 251.490, z = -4415.502 }, rot = { x = 0.000, y = 292.453, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 271003, gadget_id = 70330083, pos = { x = -2383.469, y = 250.918, z = -4420.411 }, rot = { x = 0.000, y = 292.453, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 271005, gadget_id = 70330084, pos = { x = -2382.821, y = 251.158, z = -4415.502 }, rot = { x = 0.000, y = 110.921, z = 0.000 }, level = 2, area_id = 11 },
	{ config_id = 271006, gadget_id = 70211111, pos = { x = -2385.058, y = 251.284, z = -4415.961 }, rot = { x = 351.714, y = 295.309, z = 2.953 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 271008, gadget_id = 70330083, pos = { x = -2382.143, y = 250.904, z = -4417.688 }, rot = { x = 0.000, y = 292.453, z = 0.000 }, level = 27, is_use_point_array = true, area_id = 11 },
	{ config_id = 271009, gadget_id = 70330083, pos = { x = -2381.019, y = 250.791, z = -4414.532 }, rot = { x = 0.000, y = 292.453, z = 0.000 }, level = 27, is_use_point_array = true, area_id = 11 },
	{ config_id = 271012, gadget_id = 70330084, pos = { x = -2384.250, y = 251.084, z = -4418.553 }, rot = { x = 0.000, y = 110.921, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1271007, name = "VARIABLE_CHANGE_271007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_271007", action = "" }
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
		gadgets = { 271001, 271002, 271003, 271005, 271008, 271009, 271012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 271006 },
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
function condition_EVENT_VARIABLE_CHANGE_271007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightSquare"