-- 基础信息
local base_info = {
	group_id = 111101158
}

-- Trigger变量
local defs = {
	group_ID = 111101158,
	gadget_1 = 158001,
	rotation_1 = 0,
	gadget_2 = 158002,
	rotation_2 = 90,
	gadget_3 = 158003,
	rotation_3 = 180,
	gadget_4 = 0,
	rotation_4 = 0,
	gadget_5 = 0,
	rotation_5 = 0,
	gadget_connect1 = {158002,158003},
	gadget_connect2 = {158003},
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
	{ config_id = 158001, gadget_id = 70330081, pos = { x = 2877.108, y = 270.365, z = -1269.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 158002, gadget_id = 70330081, pos = { x = 2877.140, y = 271.634, z = -1269.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 158003, gadget_id = 70330081, pos = { x = 2877.173, y = 272.925, z = -1269.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 158004, gadget_id = 70330084, pos = { x = 2877.108, y = 270.365, z = -1269.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 158005, gadget_id = 70330085, pos = { x = 2877.199, y = 274.739, z = -1269.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 158006, gadget_id = 70211111, pos = { x = 2873.141, y = 270.559, z = -1270.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1158007, name = "VARIABLE_CHANGE_158007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_158007", action = "" }
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
		gadgets = { 158001, 158002, 158003, 158004, 158005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 158006 },
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
function condition_EVENT_VARIABLE_CHANGE_158007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightSquare"