-- 基础信息
local base_info = {
	group_id = 133217220
}

-- Trigger变量
local defs = {
	group_ID = 133217220,
	gadget_1 = 220001,
	rotation_1 = 0,
	gadget_2 = 220002,
	rotation_2 = 270,
	gadget_3 = 220003,
	rotation_3 = 0,
	gadget_4 = 220005,
	rotation_4 = 270,
	gadget_5 = 220008,
	rotation_5 = 0,
	gadget_connect1 = {},
	gadget_connect2 = {220001},
	gadget_connect3 = {220002,220005},
	gadget_connect4 = {220008},
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
	{ config_id = 220001, gadget_id = 70330081, pos = { x = -4625.152, y = 200.954, z = -4006.216 }, rot = { x = 0.000, y = 70.154, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 14 },
	{ config_id = 220002, gadget_id = 70330081, pos = { x = -4626.983, y = 201.388, z = -4004.056 }, rot = { x = 0.000, y = 70.154, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 14 },
	{ config_id = 220003, gadget_id = 70330081, pos = { x = -4628.922, y = 201.614, z = -4002.313 }, rot = { x = 0.000, y = 70.154, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 14 },
	{ config_id = 220004, gadget_id = 70330084, pos = { x = -4625.152, y = 200.954, z = -4006.216 }, rot = { x = 0.000, y = 338.249, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 220005, gadget_id = 70330081, pos = { x = -4628.664, y = 201.441, z = -3999.428 }, rot = { x = 0.000, y = 70.154, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 14 },
	{ config_id = 220006, gadget_id = 70211101, pos = { x = -4626.406, y = 200.998, z = -4001.015 }, rot = { x = 8.134, y = 72.170, z = 2.047 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 220008, gadget_id = 70330081, pos = { x = -4628.226, y = 200.950, z = -3996.246 }, rot = { x = 0.000, y = 70.154, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 14 },
	{ config_id = 220009, gadget_id = 70330084, pos = { x = -4626.983, y = 201.321, z = -4004.056 }, rot = { x = 0.000, y = 338.249, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 220010, gadget_id = 70330084, pos = { x = -4628.922, y = 201.685, z = -4002.313 }, rot = { x = 0.000, y = 338.249, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 220011, gadget_id = 70330084, pos = { x = -4628.664, y = 201.375, z = -3999.428 }, rot = { x = 0.000, y = 338.249, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 220012, gadget_id = 70330084, pos = { x = -4628.226, y = 200.950, z = -3996.246 }, rot = { x = 0.000, y = 338.249, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1220007, name = "VARIABLE_CHANGE_220007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_220007", action = "" }
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
		gadgets = { 220001, 220002, 220003, 220004, 220005, 220008, 220009, 220010, 220011, 220012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 220006 },
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
function condition_EVENT_VARIABLE_CHANGE_220007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightSquare"