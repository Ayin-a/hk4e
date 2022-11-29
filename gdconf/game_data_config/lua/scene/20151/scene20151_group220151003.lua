-- 基础信息
local base_info = {
	group_id = 220151003
}

-- Trigger变量
local defs = {
	option_id = 494,
	pointarray_ID = 2,
	elevatorOptionID = 24,
	gadget_elevatorID = 3005
}

-- DEFS_MISCS
--方尖碑configID
defs.gadget_1 = 3001
defs.gadget_2 = 3002
defs.gadget_3 = 3003

--方尖碑初始旋转角
defs.rotation_1 = 120
defs.rotation_2 = 0
defs.rotation_3 = 240

--方尖碑旋转影响的configID表
defs.gadget_connect1= { 3002,3003}
defs.gadget_connect2 = {3003}
defs.gadget_connect3=  {}

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
	{ config_id = 3001, gadget_id = 70330302, pos = { x = -15.479, y = 0.600, z = 50.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 3002, gadget_id = 70330302, pos = { x = -29.778, y = 0.615, z = 50.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 3003, gadget_id = 70330302, pos = { x = -44.552, y = 0.615, z = 50.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 3007, gadget_id = 70330303, pos = { x = -15.479, y = 0.600, z = 50.018 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 3008, gadget_id = 70330303, pos = { x = -29.778, y = 0.615, z = 50.017 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 3009, gadget_id = 70330303, pos = { x = -44.552, y = 0.615, z = 50.017 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, is_use_point_array = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003004, name = "VARIABLE_CHANGE_3004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_3004", action = "action_EVENT_VARIABLE_CHANGE_3004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 3005, gadget_id = 70330316, pos = { x = -30.294, y = -11.000, z = 72.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 3006, gadget_id = 70330341, pos = { x = -35.662, y = -19.640, z = 77.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 24 } } }
	}
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
		gadgets = { 3001, 3002, 3003, 3007, 3008, 3009 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_3004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "success", 220151003) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3004(context, evt)
	-- 将本组内变量名为 "success1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "success1", 1, 220151004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V3_1/DesertRotObelisk_Select"