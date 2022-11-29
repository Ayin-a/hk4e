-- 基础信息
local base_info = {
	group_id = 133213267
}

-- Trigger变量
local defs = {
	group_ID = 133213267,
	gadget_fundation01 = 267001,
	gadget_hand01 = 267003,
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
	{ config_id = 267007, monster_id = 20010501, pos = { x = -3470.816, y = 201.488, z = -3434.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 12 },
	{ config_id = 267008, monster_id = 20010601, pos = { x = -3470.232, y = 201.597, z = -3439.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 267001, gadget_id = 70950084, pos = { x = -3475.134, y = 201.839, z = -3436.865 }, rot = { x = 0.000, y = 283.080, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 267003, gadget_id = 70950085, pos = { x = -3475.134, y = 201.839, z = -3436.865 }, rot = { x = 0.000, y = 353.080, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 267005, gadget_id = 70211101, pos = { x = -3478.978, y = 201.675, z = -3435.181 }, rot = { x = 356.059, y = 124.345, z = 4.108 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 267009, gadget_id = 70290100, pos = { x = -3482.400, y = 200.397, z = -3427.350 }, rot = { x = 357.901, y = 141.306, z = 355.956 }, level = 27, state = GadgetState.GearStart, area_id = 12 }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 267002, gadget_id = 70950084, pos = { x = -3485.785, y = 200.144, z = -3438.657 }, rot = { x = 356.829, y = 44.147, z = 359.415 }, level = 30, area_id = 12 },
		{ config_id = 267004, gadget_id = 70950085, pos = { x = -3485.785, y = 200.144, z = -3438.657 }, rot = { x = 359.945, y = 134.130, z = 2.119 }, level = 30, area_id = 12 }
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
		monsters = { 267007, 267008 },
		gadgets = { 267001, 267003, 267009 },
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