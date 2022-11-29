-- 基础信息
local base_info = {
	group_id = 111101142
}

-- Trigger变量
local defs = {
	group_ID = 111101142,
	gadget_11 = 142001,
	gadget_12 = 142002,
	gadget_13 = 142003,
	gadget_21 = 142006,
	gadget_22 = 142007,
	gadget_23 = 142008,
	gadget_31 = 142011,
	gadget_32 = 142012,
	gadget_33 = 142013,
	trigger_boarder = 142027,
	gadget_starter = 142001,
	gadget_ender = 142003
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
	{ config_id = 142001, gadget_id = 70900304, pos = { x = 2377.156, y = 226.706, z = -1178.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 142002, gadget_id = 70900304, pos = { x = 2377.156, y = 226.706, z = -1180.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 142003, gadget_id = 70900304, pos = { x = 2377.156, y = 226.706, z = -1182.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 142006, gadget_id = 70900304, pos = { x = 2375.164, y = 226.708, z = -1178.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 142007, gadget_id = 70900304, pos = { x = 2375.164, y = 226.708, z = -1180.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 142008, gadget_id = 70900304, pos = { x = 2375.164, y = 226.708, z = -1182.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 142011, gadget_id = 70900304, pos = { x = 2373.128, y = 226.707, z = -1178.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 142012, gadget_id = 70900304, pos = { x = 2373.128, y = 226.707, z = -1180.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 142013, gadget_id = 70900304, pos = { x = 2373.128, y = 226.707, z = -1182.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 142026, gadget_id = 70211111, pos = { x = 2372.873, y = 226.216, z = -1190.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 142027, shape = RegionShape.CUBIC, size = { x = 10.600, y = 11.270, z = 10.600 }, pos = { x = 2373.312, y = 227.295, z = -1182.048 } }
}

-- 触发器
triggers = {
	{ config_id = 1142028, name = "VARIABLE_CHANGE_142028", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_142028", action = "" }
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
	end_suite = 3,
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 142001, 142002, 142003, 142006, 142007, 142008, 142011, 142012, 142013 },
		regions = { 142027 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 142026 },
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
function condition_EVENT_VARIABLE_CHANGE_142028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "V2_0/DrawOneLine_TreasureMap"