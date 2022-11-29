-- 基础信息
local base_info = {
	group_id = 133210075
}

-- Trigger变量
local defs = {
	group_ID = 133210075,
	gadget_1 = 75001,
	rotation_1 = 180,
	gadget_2 = 75002,
	rotation_2 = 270,
	gadget_3 = 75003,
	rotation_3 = 180,
	gadget_4 = 75012,
	rotation_4 = 90,
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
	{ config_id = 75001, gadget_id = 70330081, pos = { x = -3845.495, y = 129.140, z = -660.411 }, rot = { x = 0.000, y = 350.688, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 17 },
	{ config_id = 75002, gadget_id = 70330081, pos = { x = -3849.024, y = 128.041, z = -644.004 }, rot = { x = 0.000, y = 350.688, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 17 },
	{ config_id = 75003, gadget_id = 70330081, pos = { x = -3840.640, y = 125.677, z = -631.603 }, rot = { x = 0.000, y = 350.688, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 17 },
	{ config_id = 75004, gadget_id = 70330084, pos = { x = -3845.496, y = 129.140, z = -660.411 }, rot = { x = 0.000, y = 350.688, z = 0.000 }, level = 2, area_id = 17 },
	{ config_id = 75005, gadget_id = 70330085, pos = { x = -3845.496, y = 130.964, z = -660.411 }, rot = { x = 0.000, y = 350.688, z = 0.000 }, level = 2, area_id = 17 },
	{ config_id = 75006, gadget_id = 70211101, pos = { x = -3845.006, y = 126.842, z = -643.271 }, rot = { x = 344.614, y = 247.468, z = 14.682 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 75008, gadget_id = 70330084, pos = { x = -3849.024, y = 127.710, z = -644.004 }, rot = { x = 0.000, y = 170.688, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 75009, gadget_id = 70330084, pos = { x = -3840.640, y = 125.346, z = -631.603 }, rot = { x = 0.000, y = 350.688, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 75010, gadget_id = 70330085, pos = { x = -3849.024, y = 129.865, z = -644.004 }, rot = { x = 0.000, y = 350.688, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 75011, gadget_id = 70330085, pos = { x = -3840.640, y = 127.501, z = -631.604 }, rot = { x = 0.000, y = 170.688, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 75012, gadget_id = 70330083, pos = { x = -3836.176, y = 120.195, z = -644.699 }, rot = { x = 0.000, y = 350.688, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1075007, name = "VARIABLE_CHANGE_75007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_75007", action = "action_EVENT_VARIABLE_CHANGE_75007" }
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
		gadgets = { 75001, 75002, 75003, 75004, 75005, 75008, 75009, 75010, 75011, 75012 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_75007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 75006 },
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
function condition_EVENT_VARIABLE_CHANGE_75007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_75007(context, evt)
	-- 将本组内变量名为 "GadgetState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GadgetState", 1, 133210152) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/LightSquare"