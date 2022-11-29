-- 基础信息
local base_info = {
	group_id = 111101115
}

-- Trigger变量
local defs = {
	group_ID = 111101115,
	gadget_1 = 115001,
	rotation_1 = 0,
	gadget_2 = 115002,
	rotation_2 = 90,
	gadget_3 = 115003,
	rotation_3 = 180,
	gadget_4 = 115004,
	rotation_4 = 270,
	gadget_5 = 115005,
	rotation_5 = 0,
	gadget_connect1 = {115005},
	gadget_connect2 = {115003,115004},
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
	{ config_id = 115001, gadget_id = 70950056, pos = { x = 2626.200, y = 219.675, z = -1375.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 115002, gadget_id = 70950056, pos = { x = 2626.200, y = 221.675, z = -1375.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 115003, gadget_id = 70950056, pos = { x = 2626.200, y = 223.675, z = -1375.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 115004, gadget_id = 70950056, pos = { x = 2626.200, y = 223.675, z = -1373.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 115005, gadget_id = 70950056, pos = { x = 2626.200, y = 223.675, z = -1377.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 115006, gadget_id = 70211111, pos = { x = 2622.035, y = 217.705, z = -1375.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1115007, name = "VARIABLE_CHANGE_115007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_115007", action = "" }
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
		gadgets = { 115001, 115002, 115003, 115004, 115005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 115006 },
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
function condition_EVENT_VARIABLE_CHANGE_115007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightSquare"