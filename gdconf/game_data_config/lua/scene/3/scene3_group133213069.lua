-- 基础信息
local base_info = {
	group_id = 133213069
}

-- Trigger变量
local defs = {
	group_ID = 133213069,
	gadget_fundation01 = 69001,
	gadget_hand01 = 69003,
	gadget_fundation02 = 69002,
	gadget_hand02 = 69004,
	gadget_fundation03 = 0,
	gadget_hand03 = 0,
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
	{ config_id = 69001, gadget_id = 70950084, pos = { x = -3749.733, y = 200.522, z = -3447.288 }, rot = { x = 0.000, y = 121.674, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 69002, gadget_id = 70950084, pos = { x = -3758.257, y = 202.925, z = -3462.793 }, rot = { x = 0.000, y = 35.346, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 69003, gadget_id = 70950085, pos = { x = -3749.733, y = 200.522, z = -3447.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 69004, gadget_id = 70950085, pos = { x = -3758.257, y = 202.925, z = -3462.793 }, rot = { x = 0.000, y = 125.346, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 69005, gadget_id = 70211111, pos = { x = -3751.613, y = 201.247, z = -3454.488 }, rot = { x = 6.224, y = 358.892, z = 358.990 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1069006, name = "VARIABLE_CHANGE_69006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_69006", action = "" }
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
		gadgets = { 69001, 69002, 69003, 69004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 69005 },
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
function condition_EVENT_VARIABLE_CHANGE_69006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/MagneticGear"