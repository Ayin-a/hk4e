-- 基础信息
local base_info = {
	group_id = 111101139
}

-- Trigger变量
local defs = {
	group_ID = 111101139,
	gadget_fundation01 = 139001,
	gadget_hand01 = 139003,
	gadget_fundation02 = 139002,
	gadget_hand02 = 139004,
	gadget_fundation03 = 139007,
	gadget_hand03 = 139008,
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
	{ config_id = 139001, gadget_id = 70950084, pos = { x = 2585.690, y = 212.336, z = -1355.377 }, rot = { x = 0.000, y = 290.000, z = 0.000 }, level = 1 },
	{ config_id = 139002, gadget_id = 70950084, pos = { x = 2580.047, y = 212.185, z = -1358.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 139003, gadget_id = 70950085, pos = { x = 2585.690, y = 213.037, z = -1355.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 139004, gadget_id = 70950085, pos = { x = 2580.047, y = 212.912, z = -1358.972 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 139005, gadget_id = 70211111, pos = { x = 2583.389, y = 211.840, z = -1360.424 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true },
	{ config_id = 139007, gadget_id = 70950084, pos = { x = 2583.671, y = 212.024, z = -1358.192 }, rot = { x = 0.000, y = 328.360, z = 0.000 }, level = 1 },
	{ config_id = 139008, gadget_id = 70950085, pos = { x = 2583.671, y = 212.752, z = -1358.192 }, rot = { x = 0.000, y = 58.360, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1139006, name = "VARIABLE_CHANGE_139006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_139006", action = "" }
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
		gadgets = { 139001, 139002, 139003, 139004, 139007, 139008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 139005 },
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
function condition_EVENT_VARIABLE_CHANGE_139006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/MagneticGear"