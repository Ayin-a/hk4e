-- 基础信息
local base_info = {
	group_id = 133220515
}

-- Trigger变量
local defs = {
	group_ID = 133220515,
	gadget_1 = 515001,
	rotation_1 = 90,
	gadget_2 = 515002,
	rotation_2 = 0,
	gadget_3 = 515003,
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
	{ config_id = 515001, gadget_id = 70330081, pos = { x = -2662.498, y = 209.548, z = -4096.158 }, rot = { x = 0.000, y = 323.896, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 515002, gadget_id = 70330083, pos = { x = -2660.624, y = 209.730, z = -4094.783 }, rot = { x = 0.000, y = 323.896, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 515003, gadget_id = 70330081, pos = { x = -2664.372, y = 209.305, z = -4097.526 }, rot = { x = 0.000, y = 323.896, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 515004, gadget_id = 70330084, pos = { x = -2662.498, y = 209.548, z = -4096.158 }, rot = { x = 0.000, y = 323.896, z = 0.000 }, level = 2, area_id = 11 },
	{ config_id = 515005, gadget_id = 70330084, pos = { x = -2664.372, y = 209.305, z = -4097.526 }, rot = { x = 0.000, y = 231.379, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 515006, gadget_id = 70211111, pos = { x = -2664.289, y = 209.118, z = -4093.633 }, rot = { x = 8.511, y = 321.606, z = 6.749 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1515007, name = "VARIABLE_CHANGE_515007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_515007", action = "" }
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
		gadgets = { 515001, 515002, 515003, 515004, 515005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 515006 },
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
function condition_EVENT_VARIABLE_CHANGE_515007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightSquare"