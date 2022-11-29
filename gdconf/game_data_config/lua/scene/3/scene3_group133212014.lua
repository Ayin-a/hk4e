-- 基础信息
local base_info = {
	group_id = 133212014
}

-- Trigger变量
local defs = {
	group_ID = 133212014,
	gadget_fundation01 = 14001,
	gadget_hand01 = 14003,
	gadget_fundation02 = 14002,
	gadget_hand02 = 14004,
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
	{ config_id = 14001, gadget_id = 70950084, pos = { x = -4069.642, y = 236.945, z = -2396.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
	{ config_id = 14002, gadget_id = 70950084, pos = { x = -4076.594, y = 235.852, z = -2405.821 }, rot = { x = 0.000, y = 295.280, z = 0.000 }, level = 30, area_id = 13 },
	{ config_id = 14003, gadget_id = 70950085, pos = { x = -4069.651, y = 236.917, z = -2396.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
	{ config_id = 14004, gadget_id = 70950085, pos = { x = -4076.594, y = 235.763, z = -2405.821 }, rot = { x = 0.000, y = 25.280, z = 0.000 }, level = 30, area_id = 13 },
	{ config_id = 14005, gadget_id = 70211101, pos = { x = -4074.183, y = 236.792, z = -2399.017 }, rot = { x = 0.000, y = 255.913, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1014006, name = "VARIABLE_CHANGE_14006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_14006", action = "" }
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
		gadgets = { 14001, 14002, 14003, 14004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 14005 },
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
function condition_EVENT_VARIABLE_CHANGE_14006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/MagneticGear"