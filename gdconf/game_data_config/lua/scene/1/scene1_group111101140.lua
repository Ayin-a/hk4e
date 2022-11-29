-- 基础信息
local base_info = {
	group_id = 111101140
}

-- Trigger变量
local defs = {
	group_ID = 111101140,
	gadget_11 = 140001,
	gadget_12 = 140002,
	gadget_13 = 140003,
	gadget_14 = 140004,
	gadget_15 = 140005,
	gadget_21 = 140006,
	gadget_22 = 140007,
	gadget_23 = 140008,
	gadget_24 = 140009,
	gadget_25 = 140010,
	gadget_31 = 140011,
	gadget_32 = 140012,
	gadget_33 = 140013,
	gadget_34 = 140014,
	gadget_35 = 140015,
	gadget_41 = 140016,
	gadget_42 = 140017,
	gadget_43 = 140018,
	gadget_44 = 140019,
	gadget_45 = 140020,
	gadget_51 = 140021,
	gadget_52 = 140022,
	gadget_53 = 140023,
	gadget_54 = 140024,
	gadget_55 = 140025,
	trigger_boarder = 140027,
	gadget_starter = 140024,
	gadget_ender = 0
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
	{ config_id = 140001, gadget_id = 70900304, pos = { x = 2603.624, y = 214.414, z = -1354.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action03 },
	{ config_id = 140002, gadget_id = 70900304, pos = { x = 2603.624, y = 214.414, z = -1356.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action03 },
	{ config_id = 140003, gadget_id = 70900304, pos = { x = 2603.624, y = 214.414, z = -1358.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140004, gadget_id = 70900304, pos = { x = 2603.624, y = 214.414, z = -1360.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140005, gadget_id = 70900304, pos = { x = 2603.624, y = 214.414, z = -1362.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140006, gadget_id = 70900304, pos = { x = 2601.570, y = 214.416, z = -1354.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140007, gadget_id = 70900304, pos = { x = 2601.570, y = 214.416, z = -1356.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140008, gadget_id = 70900304, pos = { x = 2601.570, y = 214.416, z = -1358.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140009, gadget_id = 70900304, pos = { x = 2601.570, y = 214.416, z = -1360.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140010, gadget_id = 70900304, pos = { x = 2601.570, y = 214.416, z = -1362.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140011, gadget_id = 70900304, pos = { x = 2599.493, y = 214.415, z = -1354.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140012, gadget_id = 70900304, pos = { x = 2599.493, y = 214.415, z = -1356.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140013, gadget_id = 70900304, pos = { x = 2599.493, y = 214.415, z = -1358.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140014, gadget_id = 70900304, pos = { x = 2599.493, y = 214.415, z = -1360.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140015, gadget_id = 70900304, pos = { x = 2599.493, y = 214.415, z = -1362.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140016, gadget_id = 70900304, pos = { x = 2597.393, y = 214.401, z = -1354.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140017, gadget_id = 70900304, pos = { x = 2597.393, y = 214.401, z = -1356.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140018, gadget_id = 70900304, pos = { x = 2597.393, y = 214.401, z = -1358.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140019, gadget_id = 70900304, pos = { x = 2597.393, y = 214.401, z = -1360.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140020, gadget_id = 70900304, pos = { x = 2597.393, y = 214.401, z = -1362.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140021, gadget_id = 70900304, pos = { x = 2595.331, y = 214.399, z = -1354.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140022, gadget_id = 70900304, pos = { x = 2595.331, y = 214.399, z = -1356.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140023, gadget_id = 70900304, pos = { x = 2595.331, y = 214.399, z = -1358.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action03 },
	{ config_id = 140024, gadget_id = 70900304, pos = { x = 2595.331, y = 214.399, z = -1360.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 140025, gadget_id = 70900304, pos = { x = 2595.331, y = 214.399, z = -1362.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140026, gadget_id = 70211111, pos = { x = 2599.072, y = 213.924, z = -1366.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 140027, shape = RegionShape.CUBIC, size = { x = 10.600, y = 11.270, z = 10.600 }, pos = { x = 2599.511, y = 215.003, z = -1358.338 } }
}

-- 触发器
triggers = {
	{ config_id = 1140028, name = "VARIABLE_CHANGE_140028", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_140028", action = "" }
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
		gadgets = { 140001, 140002, 140003, 140004, 140005, 140006, 140007, 140008, 140009, 140010, 140011, 140012, 140013, 140014, 140015, 140016, 140017, 140018, 140019, 140020, 140021, 140022, 140023, 140024, 140025 },
		regions = { 140027 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 140026 },
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
function condition_EVENT_VARIABLE_CHANGE_140028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/DrawOneLine"