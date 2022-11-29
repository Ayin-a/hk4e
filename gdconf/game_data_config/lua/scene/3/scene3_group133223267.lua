-- 基础信息
local base_info = {
	group_id = 133223267
}

-- Trigger变量
local defs = {
	group_ID = 133223267,
	gadget_fundation01 = 267001,
	gadget_hand01 = 267003,
	gadget_fundation02 = 267002,
	gadget_hand02 = 267004,
	gadget_fundation03 = 267007,
	gadget_hand03 = 267008,
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
	{ config_id = 267001, gadget_id = 70950084, pos = { x = -6234.458, y = 259.103, z = -2961.891 }, rot = { x = 0.000, y = 359.379, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 267002, gadget_id = 70950084, pos = { x = -6242.335, y = 257.914, z = -2919.533 }, rot = { x = 0.000, y = 210.658, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 267003, gadget_id = 70950085, pos = { x = -6234.458, y = 259.103, z = -2961.891 }, rot = { x = 0.000, y = 69.379, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 267004, gadget_id = 70950085, pos = { x = -6242.335, y = 257.914, z = -2919.533 }, rot = { x = 0.000, y = 300.658, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 267005, gadget_id = 70211111, pos = { x = -6240.735, y = 234.251, z = -2947.947 }, rot = { x = 359.760, y = 2.361, z = 13.364 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 267007, gadget_id = 70950084, pos = { x = -6253.730, y = 260.870, z = -2933.672 }, rot = { x = 0.000, y = 158.116, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 267008, gadget_id = 70950085, pos = { x = -6253.730, y = 260.870, z = -2933.672 }, rot = { x = 0.000, y = 16.688, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1267006, name = "VARIABLE_CHANGE_267006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_267006", action = "" }
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
		gadgets = { 267001, 267002, 267003, 267004, 267007, 267008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 267005 },
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
function condition_EVENT_VARIABLE_CHANGE_267006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/MagneticGear"