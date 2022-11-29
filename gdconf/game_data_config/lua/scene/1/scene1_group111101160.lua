-- 基础信息
local base_info = {
	group_id = 111101160
}

-- Trigger变量
local defs = {
	group_ID = 111101160,
	gadget_11 = 160001,
	gadget_12 = 160002,
	gadget_13 = 160003,
	gadget_14 = 160004,
	gadget_15 = 160005,
	gadget_21 = 160006,
	gadget_22 = 160007,
	gadget_23 = 160008,
	gadget_24 = 160009,
	gadget_25 = 160010,
	gadget_31 = 160011,
	gadget_32 = 160012,
	gadget_33 = 160013,
	gadget_34 = 160014,
	gadget_35 = 160015,
	gadget_41 = 160016,
	gadget_42 = 160017,
	gadget_43 = 160018,
	gadget_44 = 160019,
	gadget_45 = 160020,
	gadget_51 = 160021,
	gadget_52 = 160022,
	gadget_53 = 160023,
	gadget_54 = 160024,
	gadget_55 = 160025,
	trigger_boarder = 160027,
	gadget_starter = 160024,
	gadget_ender = 160009
}

-- DEFS_MISCS
local matrix = 
{
{defs.gadget_11,defs.gadget_12,defs.gadget_13,defs.gadget_14,defs.gadget_15},

{defs.gadget_21,defs.gadget_22,defs.gadget_23,defs.gadget_24,defs.gadget_25},

{defs.gadget_31,defs.gadget_32,defs.gadget_33,defs.gadget_34,defs.gadget_35},

{defs.gadget_41,defs.gadget_42,defs.gadget_43,defs.gadget_44,defs.gadget_45},

{defs.gadget_51,defs.gadget_52,defs.gadget_53,defs.gadget_54,defs.gadget_55}
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
	{ config_id = 160001, gadget_id = 70360186, pos = { x = 2931.254, y = 270.260, z = -1308.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action03 },
	{ config_id = 160002, gadget_id = 70360186, pos = { x = 2931.254, y = 270.260, z = -1310.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action03 },
	{ config_id = 160003, gadget_id = 70360186, pos = { x = 2931.254, y = 270.260, z = -1312.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160004, gadget_id = 70360186, pos = { x = 2931.254, y = 270.260, z = -1314.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160005, gadget_id = 70360186, pos = { x = 2931.254, y = 270.260, z = -1316.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160006, gadget_id = 70360186, pos = { x = 2929.200, y = 270.262, z = -1308.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160007, gadget_id = 70360186, pos = { x = 2929.200, y = 270.262, z = -1310.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160008, gadget_id = 70360186, pos = { x = 2929.200, y = 270.262, z = -1312.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160009, gadget_id = 70360186, pos = { x = 2929.200, y = 270.262, z = -1314.434 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160010, gadget_id = 70360186, pos = { x = 2929.200, y = 270.262, z = -1316.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160011, gadget_id = 70360186, pos = { x = 2927.123, y = 270.262, z = -1308.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160012, gadget_id = 70360186, pos = { x = 2927.123, y = 270.262, z = -1310.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160013, gadget_id = 70360186, pos = { x = 2927.123, y = 270.262, z = -1312.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160014, gadget_id = 70360186, pos = { x = 2927.123, y = 270.262, z = -1314.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160015, gadget_id = 70360186, pos = { x = 2927.123, y = 270.262, z = -1316.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160016, gadget_id = 70360186, pos = { x = 2925.023, y = 270.247, z = -1308.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160017, gadget_id = 70360186, pos = { x = 2925.023, y = 270.247, z = -1310.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160018, gadget_id = 70360186, pos = { x = 2925.023, y = 270.247, z = -1312.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160019, gadget_id = 70360186, pos = { x = 2925.023, y = 270.247, z = -1314.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160020, gadget_id = 70360186, pos = { x = 2925.023, y = 270.247, z = -1316.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160021, gadget_id = 70360186, pos = { x = 2922.961, y = 270.246, z = -1308.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160022, gadget_id = 70360186, pos = { x = 2922.961, y = 270.246, z = -1310.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160023, gadget_id = 70360186, pos = { x = 2922.961, y = 270.246, z = -1312.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action03 },
	{ config_id = 160024, gadget_id = 70360186, pos = { x = 2922.961, y = 270.246, z = -1314.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 160025, gadget_id = 70360186, pos = { x = 2922.961, y = 270.246, z = -1316.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 160026, gadget_id = 70211111, pos = { x = 2927.178, y = 269.591, z = -1305.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级蒙德", isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 160027, shape = RegionShape.SPHERE, radius = 7.07, pos = { x = 2927.141, y = 271.011, z = -1312.325 } }
}

-- 触发器
triggers = {
	{ config_id = 1160028, name = "VARIABLE_CHANGE_160028", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_160028", action = "" }
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
		gadgets = { 160001, 160002, 160003, 160004, 160005, 160006, 160007, 160008, 160009, 160010, 160011, 160012, 160013, 160014, 160015, 160016, 160017, 160018, 160019, 160020, 160021, 160022, 160023, 160024, 160025 },
		regions = { 160027 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 160026 },
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
function condition_EVENT_VARIABLE_CHANGE_160028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/DrawOneLinePlus"