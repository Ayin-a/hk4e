-- 基础信息
local base_info = {
	group_id = 133213174
}

-- Trigger变量
local defs = {
	group_ID = 133213174,
	gadget_fundation01 = 174001,
	gadget_hand01 = 174003,
	gadget_fundation02 = 174002,
	gadget_hand02 = 174004,
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
	{ config_id = 174001, gadget_id = 70950084, pos = { x = -3540.660, y = 214.320, z = -3194.174 }, rot = { x = 0.000, y = 289.940, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 174002, gadget_id = 70950084, pos = { x = -3551.308, y = 213.070, z = -3184.370 }, rot = { x = 0.000, y = 0.111, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 174003, gadget_id = 70950085, pos = { x = -3540.660, y = 214.320, z = -3194.174 }, rot = { x = 0.000, y = 20.756, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 174004, gadget_id = 70950085, pos = { x = -3551.308, y = 213.070, z = -3184.370 }, rot = { x = 0.000, y = 270.111, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 174005, gadget_id = 70211111, pos = { x = -3546.896, y = 214.260, z = -3189.644 }, rot = { x = 8.622, y = 0.111, z = 1.469 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1174006, name = "VARIABLE_CHANGE_174006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_174006", action = "" }
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
		gadgets = { 174001, 174002, 174003, 174004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 174005 },
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
function condition_EVENT_VARIABLE_CHANGE_174006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/MagneticGear"