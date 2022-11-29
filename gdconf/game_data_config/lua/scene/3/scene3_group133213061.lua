-- 基础信息
local base_info = {
	group_id = 133213061
}

-- Trigger变量
local defs = {
	group_ID = 133213061,
	gadget_fundation01 = 61001,
	gadget_hand01 = 61003,
	gadget_fundation02 = 61002,
	gadget_hand02 = 61004,
	gadget_fundation03 = 61007,
	gadget_hand03 = 61008,
	gadget_fundation04 = 0,
	gadget_hand04 = 0,
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
	{ config_id = 61001, gadget_id = 70950084, pos = { x = -3404.712, y = 200.169, z = -3050.450 }, rot = { x = 0.000, y = 208.140, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 61002, gadget_id = 70950084, pos = { x = -3414.735, y = 200.301, z = -3053.960 }, rot = { x = 0.000, y = 118.212, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 61003, gadget_id = 70950085, pos = { x = -3404.712, y = 200.169, z = -3050.450 }, rot = { x = 0.000, y = 278.140, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 61004, gadget_id = 70950085, pos = { x = -3414.735, y = 200.301, z = -3053.960 }, rot = { x = 0.000, y = 182.460, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 61005, gadget_id = 70211111, pos = { x = -3410.305, y = 200.320, z = -3056.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 61007, gadget_id = 70950084, pos = { x = -3407.591, y = 200.169, z = -3064.546 }, rot = { x = 0.000, y = 255.257, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 61008, gadget_id = 70950085, pos = { x = -3407.591, y = 200.169, z = -3064.546 }, rot = { x = 0.000, y = 112.425, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1061006, name = "VARIABLE_CHANGE_61006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_61006", action = "action_EVENT_VARIABLE_CHANGE_61006" }
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
		gadgets = { 61001, 61002, 61003, 61004, 61007, 61008 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_61006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 61005 },
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
function condition_EVENT_VARIABLE_CHANGE_61006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_61006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133213093, 1)
	
	return 0
end

require "BlackBoxPlay/MagneticGear"