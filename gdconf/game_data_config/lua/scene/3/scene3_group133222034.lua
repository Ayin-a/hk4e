-- 基础信息
local base_info = {
	group_id = 133222034
}

-- Trigger变量
local defs = {
	group_ID = 133222034,
	gadget_fundation01 = 34001,
	gadget_hand01 = 34003,
	gadget_fundation02 = 34002,
	gadget_hand02 = 34004,
	gadget_fundation03 = 34007,
	gadget_hand03 = 34008,
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
	{ config_id = 34001, gadget_id = 70950084, pos = { x = -4145.972, y = 200.026, z = -4301.144 }, rot = { x = 0.000, y = 312.106, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 34002, gadget_id = 70950084, pos = { x = -4166.042, y = 201.294, z = -4300.961 }, rot = { x = 0.000, y = 150.275, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 34003, gadget_id = 70950085, pos = { x = -4145.972, y = 200.026, z = -4301.144 }, rot = { x = 0.000, y = 96.369, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 34004, gadget_id = 70950085, pos = { x = -4166.042, y = 201.294, z = -4300.961 }, rot = { x = 0.000, y = 6.475, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 34005, gadget_id = 70211101, pos = { x = -4143.352, y = 200.296, z = -4313.447 }, rot = { x = 2.455, y = 300.957, z = 359.386 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 34007, gadget_id = 70950084, pos = { x = -4154.469, y = 200.729, z = -4318.376 }, rot = { x = 0.000, y = 326.931, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 34008, gadget_id = 70950085, pos = { x = -4154.469, y = 200.729, z = -4318.376 }, rot = { x = 0.000, y = 225.788, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1034006, name = "VARIABLE_CHANGE_34006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_34006", action = "" }
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
		gadgets = { 34001, 34002, 34003, 34004, 34007, 34008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 34005 },
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
function condition_EVENT_VARIABLE_CHANGE_34006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/MagneticGear"