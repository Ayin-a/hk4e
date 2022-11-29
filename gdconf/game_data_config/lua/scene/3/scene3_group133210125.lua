-- 基础信息
local base_info = {
	group_id = 133210125
}

-- Trigger变量
local defs = {
	group_ID = 133210125,
	gadget_fundation01 = 125001,
	gadget_hand01 = 125003,
	gadget_fundation02 = 125002,
	gadget_hand02 = 125004,
	gadget_fundation03 = 125007,
	gadget_hand03 = 125008,
	gadget_fundation04 = 125009,
	gadget_hand04 = 125010,
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
	{ config_id = 125001, gadget_id = 70950084, pos = { x = -3590.867, y = 168.497, z = -822.712 }, rot = { x = 0.000, y = 183.250, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 125002, gadget_id = 70950084, pos = { x = -3591.403, y = 164.742, z = -860.339 }, rot = { x = 0.000, y = 316.857, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 125003, gadget_id = 70950085, pos = { x = -3590.867, y = 168.497, z = -822.712 }, rot = { x = 0.000, y = 103.073, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 125004, gadget_id = 70950085, pos = { x = -3591.403, y = 164.742, z = -860.339 }, rot = { x = 0.000, y = 79.293, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 125005, gadget_id = 70211111, pos = { x = -3596.756, y = 167.702, z = -827.716 }, rot = { x = 351.887, y = 108.794, z = 354.120 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 125007, gadget_id = 70950084, pos = { x = -3606.607, y = 161.395, z = -864.300 }, rot = { x = 0.000, y = 45.977, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 125008, gadget_id = 70950085, pos = { x = -3606.607, y = 161.395, z = -864.300 }, rot = { x = 0.000, y = 318.567, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 125009, gadget_id = 70950084, pos = { x = -3598.776, y = 159.678, z = -848.759 }, rot = { x = 0.000, y = 154.258, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 125010, gadget_id = 70950085, pos = { x = -3598.776, y = 159.678, z = -848.759 }, rot = { x = 0.000, y = 55.331, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1125006, name = "VARIABLE_CHANGE_125006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_125006", action = "" }
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
		gadgets = { 125001, 125002, 125003, 125004, 125007, 125008, 125009, 125010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 125005 },
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
function condition_EVENT_VARIABLE_CHANGE_125006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/MagneticGear"