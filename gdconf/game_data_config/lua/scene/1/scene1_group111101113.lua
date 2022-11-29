-- 基础信息
local base_info = {
	group_id = 111101113
}

-- Trigger变量
local defs = {
	group_ID = 111101113,
	gadget_11 = 113001,
	gadget_12 = 113002,
	gadget_13 = 113003,
	gadget_14 = 113004,
	gadget_15 = 113005,
	gadget_21 = 113006,
	gadget_22 = 113007,
	gadget_23 = 113008,
	gadget_24 = 113009,
	gadget_25 = 113010,
	gadget_31 = 113011,
	gadget_32 = 113012,
	gadget_33 = 113013,
	gadget_34 = 113014,
	gadget_35 = 113015,
	gadget_41 = 113016,
	gadget_42 = 113017,
	gadget_43 = 113018,
	gadget_44 = 113019,
	gadget_45 = 113020,
	gadget_51 = 113021,
	gadget_52 = 113022,
	gadget_53 = 113023,
	gadget_54 = 113024,
	gadget_55 = 113025,
	trigger_boarder = 113028,
	gadget_starter = 113024,
	gadget_ender = 113005
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
	{ config_id = 113001, gadget_id = 70900304, pos = { x = 2519.521, y = 254.565, z = -1566.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action03 },
	{ config_id = 113002, gadget_id = 70900304, pos = { x = 2519.521, y = 254.565, z = -1568.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action03 },
	{ config_id = 113003, gadget_id = 70900304, pos = { x = 2519.521, y = 254.565, z = -1570.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113004, gadget_id = 70900304, pos = { x = 2519.521, y = 254.565, z = -1572.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113005, gadget_id = 70900304, pos = { x = 2519.521, y = 254.565, z = -1574.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearAction2 },
	{ config_id = 113006, gadget_id = 70900304, pos = { x = 2517.467, y = 254.566, z = -1566.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113007, gadget_id = 70900304, pos = { x = 2517.467, y = 254.566, z = -1568.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113008, gadget_id = 70900304, pos = { x = 2517.467, y = 254.566, z = -1570.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113009, gadget_id = 70900304, pos = { x = 2517.467, y = 254.566, z = -1572.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113010, gadget_id = 70900304, pos = { x = 2517.467, y = 254.566, z = -1574.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113011, gadget_id = 70900304, pos = { x = 2515.390, y = 254.566, z = -1566.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113012, gadget_id = 70900304, pos = { x = 2515.390, y = 254.566, z = -1568.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113013, gadget_id = 70900304, pos = { x = 2515.390, y = 254.566, z = -1570.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113014, gadget_id = 70900304, pos = { x = 2515.390, y = 254.566, z = -1572.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113015, gadget_id = 70900304, pos = { x = 2515.390, y = 254.566, z = -1574.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113016, gadget_id = 70900304, pos = { x = 2513.290, y = 254.551, z = -1566.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113017, gadget_id = 70900304, pos = { x = 2513.290, y = 254.551, z = -1568.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113018, gadget_id = 70900304, pos = { x = 2513.290, y = 254.551, z = -1570.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113019, gadget_id = 70900304, pos = { x = 2513.290, y = 254.551, z = -1572.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113020, gadget_id = 70900304, pos = { x = 2513.290, y = 254.551, z = -1574.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113021, gadget_id = 70900304, pos = { x = 2511.228, y = 254.550, z = -1566.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113022, gadget_id = 70900304, pos = { x = 2511.228, y = 254.550, z = -1568.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113023, gadget_id = 70900304, pos = { x = 2511.228, y = 254.550, z = -1570.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action03 },
	{ config_id = 113024, gadget_id = 70900304, pos = { x = 2511.228, y = 254.550, z = -1572.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 113025, gadget_id = 70900304, pos = { x = 2511.228, y = 254.550, z = -1574.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113026, gadget_id = 70211111, pos = { x = 2514.969, y = 254.074, z = -1578.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "解谜中级蒙德", isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 113028, shape = RegionShape.CUBIC, size = { x = 10.600, y = 11.270, z = 10.600 }, pos = { x = 2515.408, y = 255.154, z = -1570.395 } }
}

-- 触发器
triggers = {
	{ config_id = 1113027, name = "VARIABLE_CHANGE_113027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_113027", action = "" }
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
		gadgets = { 113001, 113002, 113003, 113004, 113005, 113006, 113007, 113008, 113009, 113010, 113011, 113012, 113013, 113014, 113015, 113016, 113017, 113018, 113019, 113020, 113021, 113022, 113023, 113024, 113025 },
		regions = { 113028 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 113026 },
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
function condition_EVENT_VARIABLE_CHANGE_113027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/DrawOneLine"