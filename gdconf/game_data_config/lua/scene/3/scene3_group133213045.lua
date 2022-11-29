-- 基础信息
local base_info = {
	group_id = 133213045
}

-- Trigger变量
local defs = {
	group_ID = 133213045,
	gadget_fundation01 = 45001,
	gadget_hand01 = 45003,
	gadget_fundation02 = 0,
	gadget_hand02 = 0,
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
	{ config_id = 45001, gadget_id = 70950084, pos = { x = -3168.676, y = 202.378, z = -3222.032 }, rot = { x = 0.000, y = 23.626, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 45003, gadget_id = 70950085, pos = { x = -3168.676, y = 202.378, z = -3222.032 }, rot = { x = 0.000, y = 170.412, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 45005, gadget_id = 70211101, pos = { x = -3170.774, y = 201.713, z = -3218.306 }, rot = { x = 5.287, y = 0.494, z = 8.017 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1045006, name = "VARIABLE_CHANGE_45006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_45006", action = "" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 45002, gadget_id = 70950084, pos = { x = -3187.902, y = 200.016, z = -3215.908 }, rot = { x = 0.000, y = 0.035, z = 0.000 }, level = 30, area_id = 12 },
		{ config_id = 45004, gadget_id = 70950085, pos = { x = -3187.902, y = 200.016, z = -3215.908 }, rot = { x = 0.000, y = 268.252, z = 0.000 }, level = 30, area_id = 12 },
		{ config_id = 45007, gadget_id = 70220045, pos = { x = -3187.460, y = 200.000, z = -3205.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
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
		gadgets = { 45001, 45003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 45005 },
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
function condition_EVENT_VARIABLE_CHANGE_45006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/MagneticGear"