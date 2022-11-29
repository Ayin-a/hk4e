-- 基础信息
local base_info = {
	group_id = 133220387
}

-- Trigger变量
local defs = {
	group_ID = 133220387,
	gadget_11 = 387001,
	gadget_12 = 387002,
	gadget_13 = 387003,
	gadget_21 = 387004,
	gadget_22 = 387005,
	gadget_23 = 387006,
	gadget_31 = 387007,
	gadget_32 = 387008,
	gadget_33 = 387009,
	trigger_boarder = 387011,
	gadget_starter = 387001,
	gadget_ender = 387003,
	dig_point = 387010,
	challenge = 2015
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
	{ config_id = 387001, gadget_id = 70900304, pos = { x = -2379.084, y = 246.684, z = -4290.520 }, rot = { x = 0.000, y = 344.112, z = 0.000 }, level = 2, area_id = 11 },
	{ config_id = 387002, gadget_id = 70900304, pos = { x = -2378.532, y = 246.684, z = -4292.480 }, rot = { x = 0.000, y = 344.112, z = 0.000 }, level = 2, area_id = 11 },
	{ config_id = 387003, gadget_id = 70900304, pos = { x = -2377.969, y = 246.684, z = -4294.442 }, rot = { x = 0.000, y = 344.112, z = 0.000 }, level = 2, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 387004, gadget_id = 70900304, pos = { x = -2381.055, y = 246.684, z = -4291.072 }, rot = { x = 0.000, y = 344.112, z = 0.000 }, level = 2, area_id = 11 },
	{ config_id = 387005, gadget_id = 70900304, pos = { x = -2380.487, y = 246.684, z = -4293.037 }, rot = { x = 0.000, y = 344.112, z = 0.000 }, level = 2, area_id = 11 },
	{ config_id = 387006, gadget_id = 70900304, pos = { x = -2379.938, y = 246.684, z = -4294.991 }, rot = { x = 0.000, y = 344.112, z = 0.000 }, level = 2, area_id = 11 },
	{ config_id = 387007, gadget_id = 70900304, pos = { x = -2383.028, y = 246.684, z = -4291.630 }, rot = { x = 0.000, y = 344.112, z = 0.000 }, level = 2, area_id = 11 },
	{ config_id = 387008, gadget_id = 70900304, pos = { x = -2382.466, y = 246.684, z = -4293.602 }, rot = { x = 0.000, y = 344.112, z = 0.000 }, level = 2, area_id = 11 },
	{ config_id = 387009, gadget_id = 70900304, pos = { x = -2381.909, y = 246.684, z = -4295.569 }, rot = { x = 0.000, y = 344.112, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 387010, gadget_id = 70220069, pos = { x = -2375.546, y = 246.268, z = -4293.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 387011, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2380.487, y = 246.603, z = -4293.037 }, area_id = 11 }
}

-- 触发器
triggers = {
	-- 【后果自负】检测玩法成功的Trigger。如果你希望在玩法成功后再做某些事，将这个Trigger挪到suite2里，并在action里写上你想做的事。
	{ config_id = 1387012, name = "VARIABLE_CHANGE_387012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_387012", action = "" }
}

-- 变量
variables = {
}

-- 怪物随机池
monster_pools = {
	{ pool_id = 1008, rand_weight = 100 },
	{ pool_id = 1009, rand_weight = 100 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 387001, 387002, 387003, 387004, 387005, 387006, 387007, 387008, 387009 },
		regions = { 387011 },
		triggers = { "VARIABLE_CHANGE_387012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_387012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "V2_0/DrawOneLine_TreasureMap"
require "V2_0/TreasureMapEventV2"