-- 基础信息
local base_info = {
	group_id = 133210088
}

-- Trigger变量
local defs = {
	group_ID = 133210088,
	gadget_fundation01 = 88001,
	gadget_hand01 = 88003,
	gadget_fundation02 = 88002,
	gadget_hand02 = 88004,
	gadget_fundation03 = 88007,
	gadget_hand03 = 88008,
	gadget_fundation04 = 88009,
	gadget_hand04 = 88010,
	gadget_fundation05 = 0,
	gadget_hand05 = 0,
	minDiscrapancy = 15
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
	{ config_id = 88001, gadget_id = 70950084, pos = { x = -3578.511, y = 203.281, z = -1122.462 }, rot = { x = 0.000, y = 245.683, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 88002, gadget_id = 70950084, pos = { x = -3628.759, y = 207.627, z = -1140.357 }, rot = { x = 0.000, y = 76.907, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 88003, gadget_id = 70950085, pos = { x = -3578.514, y = 203.281, z = -1122.463 }, rot = { x = 0.000, y = 104.208, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 88004, gadget_id = 70950085, pos = { x = -3628.759, y = 207.627, z = -1140.357 }, rot = { x = 0.000, y = 329.552, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 88007, gadget_id = 70950084, pos = { x = -3592.761, y = 204.730, z = -1156.090 }, rot = { x = 0.000, y = 335.521, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 88008, gadget_id = 70950085, pos = { x = -3592.761, y = 204.730, z = -1156.090 }, rot = { x = 0.000, y = 188.718, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 88009, gadget_id = 70950084, pos = { x = -3611.977, y = 209.366, z = -1109.154 }, rot = { x = 0.000, y = 159.220, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 88010, gadget_id = 70950085, pos = { x = -3611.977, y = 209.366, z = -1109.154 }, rot = { x = 0.000, y = 280.342, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1088006, name = "VARIABLE_CHANGE_88006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_88006", action = "action_EVENT_VARIABLE_CHANGE_88006" }
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
		gadgets = { 88001, 88002, 88003, 88004, 88007, 88008, 88009, 88010 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_88006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_VARIABLE_CHANGE_88006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_88006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210346, 2)
	
	return 0
end

require "BlackBoxPlay/MagneticGear"