-- 基础信息
local base_info = {
	group_id = 133212197
}

-- Trigger变量
local defs = {
	group_ID = 133212197,
	gadget_11 = 197001,
	gadget_12 = 197002,
	gadget_13 = 197003,
	gadget_21 = 197004,
	gadget_22 = 197005,
	gadget_23 = 197006,
	gadget_31 = 197007,
	gadget_32 = 197008,
	gadget_33 = 197009,
	trigger_boarder = 197011,
	gadget_starter = 197001,
	gadget_ender = 197003,
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
	{ config_id = 197001, gadget_id = 70900304, pos = { x = -3729.768, y = 204.372, z = -1672.836 }, rot = { x = 0.000, y = 334.635, z = 0.000 }, level = 2, area_id = 13 },
	{ config_id = 197002, gadget_id = 70900304, pos = { x = -3728.893, y = 204.372, z = -1674.683 }, rot = { x = 0.000, y = 334.635, z = 0.000 }, level = 2, area_id = 13 },
	{ config_id = 197003, gadget_id = 70900304, pos = { x = -3728.017, y = 204.372, z = -1676.529 }, rot = { x = 0.000, y = 334.635, z = 0.000 }, level = 2, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 197004, gadget_id = 70900304, pos = { x = -3731.590, y = 204.372, z = -1673.700 }, rot = { x = 0.000, y = 334.635, z = 0.000 }, level = 2, area_id = 13 },
	{ config_id = 197005, gadget_id = 70900304, pos = { x = -3730.713, y = 204.372, z = -1675.547 }, rot = { x = 0.000, y = 334.635, z = 0.000 }, level = 2, area_id = 13 },
	{ config_id = 197006, gadget_id = 70900304, pos = { x = -3729.839, y = 204.372, z = -1677.393 }, rot = { x = 0.000, y = 334.635, z = 0.000 }, level = 2, area_id = 13 },
	{ config_id = 197007, gadget_id = 70900304, pos = { x = -3733.435, y = 204.372, z = -1674.575 }, rot = { x = 0.000, y = 334.635, z = 0.000 }, level = 2, area_id = 13 },
	{ config_id = 197008, gadget_id = 70900304, pos = { x = -3732.560, y = 204.372, z = -1676.421 }, rot = { x = 0.000, y = 334.635, z = 0.000 }, level = 2, area_id = 13 },
	{ config_id = 197009, gadget_id = 70900304, pos = { x = -3731.685, y = 204.372, z = -1678.269 }, rot = { x = 0.000, y = 334.635, z = 0.000 }, level = 2, area_id = 13 },
	{ config_id = 197010, gadget_id = 70220069, pos = { x = -3725.775, y = 203.975, z = -1679.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 197011, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3731.148, y = 204.286, z = -1677.060 }, area_id = 13 }
}

-- 触发器
triggers = {
	-- 【后果自负】检测玩法成功的Trigger。如果你希望在玩法成功后再做某些事，将这个Trigger挪到suite2里，并在action里写上你想做的事。
	{ config_id = 1197012, name = "VARIABLE_CHANGE_197012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_197012", action = "" }
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
		gadgets = { 197001, 197002, 197003, 197004, 197005, 197006, 197007, 197008, 197009 },
		regions = { 197011 },
		triggers = { "VARIABLE_CHANGE_197012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_197012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "V2_0/DrawOneLine_TreasureMap"
require "V2_0/TreasureMapEventV2"