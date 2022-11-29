-- 基础信息
local base_info = {
	group_id = 133223124
}

-- Trigger变量
local defs = {
	group_ID = 133223124,
	gadget_1 = 124001,
	rotation_1 = 0,
	gadget_2 = 124002,
	rotation_2 = 90,
	gadget_3 = 124003,
	rotation_3 = 180,
	gadget_4 = 124006,
	rotation_4 = 0,
	gadget_5 = 0,
	rotation_5 = 0,
	gadget_connect1 = {124003},
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
	{ config_id = 124001, gadget_id = 70330081, pos = { x = -5812.322, y = 208.924, z = -2585.236 }, rot = { x = 0.000, y = 76.179, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 124002, gadget_id = 70330081, pos = { x = -5812.322, y = 210.145, z = -2585.236 }, rot = { x = 0.000, y = 76.179, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 124003, gadget_id = 70330081, pos = { x = -5812.322, y = 211.511, z = -2585.236 }, rot = { x = 0.000, y = 76.179, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 124004, gadget_id = 70330084, pos = { x = -5812.322, y = 208.966, z = -2585.236 }, rot = { x = 0.000, y = 76.179, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 124005, gadget_id = 70330085, pos = { x = -5812.322, y = 213.281, z = -2585.236 }, rot = { x = 0.000, y = 76.179, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 124006, gadget_id = 70330083, pos = { x = -5806.579, y = 209.412, z = -2583.759 }, rot = { x = 0.000, y = 77.749, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 124008, gadget_id = 70211101, pos = { x = -5808.892, y = 209.498, z = -2579.756 }, rot = { x = 0.000, y = 175.008, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1124007, name = "VARIABLE_CHANGE_124007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_124007", action = "action_EVENT_VARIABLE_CHANGE_124007" }
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
		gadgets = { 124001, 124002, 124003, 124004, 124005, 124006 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_124007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 124008 },
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
function condition_EVENT_VARIABLE_CHANGE_124007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_124007(context, evt)
	-- 针对当前group内变量名为 "puzzle_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "puzzle_progress", 1, 133223096) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/LightSquare"