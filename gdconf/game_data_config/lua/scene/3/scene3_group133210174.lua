-- 基础信息
local base_info = {
	group_id = 133210174
}

-- Trigger变量
local defs = {
	group_ID = 133210174,
	gadget_1 = 174001,
	rotation_1 = 0,
	gadget_2 = 174002,
	rotation_2 = 90,
	gadget_3 = 174003,
	rotation_3 = 180,
	gadget_4 = 174012,
	rotation_4 = 270,
	gadget_5 = 174015,
	rotation_5 = 0,
	gadget_connect1 = {174002},
	gadget_connect2 = {174001,174003},
	gadget_connect3 = {174002,174012},
	gadget_connect4 = {174003},
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
	{ config_id = 174001, gadget_id = 70330081, pos = { x = -3811.736, y = 108.773, z = -909.230 }, rot = { x = 0.000, y = 24.017, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 17 },
	{ config_id = 174002, gadget_id = 70330081, pos = { x = -3820.012, y = 108.759, z = -909.433 }, rot = { x = 0.000, y = 24.017, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 17 },
	{ config_id = 174003, gadget_id = 70330081, pos = { x = -3829.377, y = 108.747, z = -904.737 }, rot = { x = 0.000, y = 24.017, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 17 },
	{ config_id = 174004, gadget_id = 70330084, pos = { x = -3811.736, y = 108.441, z = -909.230 }, rot = { x = 0.000, y = 24.017, z = 0.000 }, level = 2, area_id = 17 },
	{ config_id = 174005, gadget_id = 70330085, pos = { x = -3811.736, y = 110.612, z = -909.230 }, rot = { x = 0.000, y = 24.017, z = 0.000 }, level = 2, area_id = 17 },
	{ config_id = 174006, gadget_id = 70211111, pos = { x = -3825.531, y = 108.045, z = -903.477 }, rot = { x = 7.180, y = 30.641, z = 0.112 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 174008, gadget_id = 70330084, pos = { x = -3820.012, y = 108.427, z = -909.433 }, rot = { x = 0.000, y = 24.017, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 174009, gadget_id = 70330085, pos = { x = -3820.012, y = 110.599, z = -909.433 }, rot = { x = 0.000, y = 24.017, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 174010, gadget_id = 70330084, pos = { x = -3829.377, y = 108.415, z = -904.737 }, rot = { x = 0.000, y = 24.017, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 174011, gadget_id = 70330085, pos = { x = -3829.377, y = 110.586, z = -904.737 }, rot = { x = 0.000, y = 24.017, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 174012, gadget_id = 70330081, pos = { x = -3832.131, y = 107.905, z = -897.515 }, rot = { x = 0.000, y = 24.017, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 17 },
	{ config_id = 174013, gadget_id = 70330084, pos = { x = -3832.131, y = 107.905, z = -897.515 }, rot = { x = 0.000, y = 24.017, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 174014, gadget_id = 70330085, pos = { x = -3832.131, y = 109.745, z = -897.515 }, rot = { x = 0.000, y = 24.017, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 174015, gadget_id = 70330083, pos = { x = -3822.646, y = 107.967, z = -904.775 }, rot = { x = 0.000, y = 24.017, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1174007, name = "VARIABLE_CHANGE_174007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_174007", action = "action_EVENT_VARIABLE_CHANGE_174007" }
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
		gadgets = { 174001, 174002, 174003, 174004, 174005, 174008, 174009, 174010, 174011, 174012, 174013, 174014, 174015 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_174007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 174006 },
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
function condition_EVENT_VARIABLE_CHANGE_174007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_174007(context, evt)
	-- 将本组内变量名为 "GadgetState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GadgetState", 1, 133210272) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/LightSquare"