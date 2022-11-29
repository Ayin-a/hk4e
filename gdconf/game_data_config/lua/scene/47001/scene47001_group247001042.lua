-- 基础信息
local base_info = {
	group_id = 247001042
}

-- DEFS_MISCS
local GroupId = 247001042
local ChestConfigID = 42001
local RegionID = 42023
local ChestConfigIDList = {42001}

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
	{ config_id = 42001, gadget_id = 70211111, pos = { x = -92.859, y = 5.726, z = 248.602 }, rot = { x = 0.000, y = 2.879, z = 0.000 }, level = 1, chest_drop_id = 21600009, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 42002, gadget_id = 70310133, pos = { x = -70.557, y = 0.086, z = 231.978 }, rot = { x = 0.000, y = 340.564, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42003, gadget_id = 70310132, pos = { x = -68.474, y = 0.050, z = 232.719 }, rot = { x = 0.000, y = 340.564, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42006, gadget_id = 70310133, pos = { x = -72.897, y = 0.050, z = 228.328 }, rot = { x = 0.000, y = 289.825, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42007, gadget_id = 70310132, pos = { x = -72.153, y = 0.054, z = 230.410 }, rot = { x = 0.000, y = 289.825, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42009, gadget_id = 70310129, pos = { x = -69.082, y = 0.059, z = 229.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42011, gadget_id = 70310130, pos = { x = -68.757, y = 0.050, z = 231.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42012, gadget_id = 70310130, pos = { x = -67.944, y = 0.058, z = 229.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42013, gadget_id = 70310131, pos = { x = -69.149, y = 0.050, z = 230.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42016, gadget_id = 70310133, pos = { x = -90.585, y = 0.117, z = 227.597 }, rot = { x = 0.000, y = 58.292, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42017, gadget_id = 70310132, pos = { x = -89.418, y = 0.050, z = 225.719 }, rot = { x = 0.000, y = 58.292, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42018, gadget_id = 70310133, pos = { x = -94.177, y = 0.048, z = 230.068 }, rot = { x = 0.000, y = 24.835, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42019, gadget_id = 70310132, pos = { x = -92.169, y = 0.050, z = 229.144 }, rot = { x = 0.000, y = 24.835, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42025, gadget_id = 70310099, pos = { x = -80.731, y = 0.050, z = 240.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42027, gadget_id = 70310129, pos = { x = -80.933, y = 0.050, z = 241.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42028, gadget_id = 70310129, pos = { x = -79.373, y = 0.038, z = 240.737 }, rot = { x = 0.000, y = 0.000, z = 22.986 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42031, gadget_id = 70310125, pos = { x = -79.978, y = 0.206, z = 260.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 42032, gadget_id = 70310125, pos = { x = -100.128, y = 0.169, z = 239.982 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 42033, gadget_id = 70310125, pos = { x = -60.158, y = 0.206, z = 239.982 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 42037, gadget_id = 70310130, pos = { x = -80.051, y = 0.050, z = 238.620 }, rot = { x = 45.439, y = 19.352, z = 0.001 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42038, gadget_id = 70310130, pos = { x = -80.535, y = 0.050, z = 242.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42040, gadget_id = 70310130, pos = { x = -79.468, y = 0.050, z = 239.608 }, rot = { x = 0.000, y = 0.000, z = 17.504 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42041, gadget_id = 70310133, pos = { x = -86.154, y = 0.018, z = 253.521 }, rot = { x = 0.000, y = 106.985, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42042, gadget_id = 70310132, pos = { x = -86.795, y = 0.022, z = 251.405 }, rot = { x = 0.000, y = 106.985, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42043, gadget_id = 70310133, pos = { x = -88.130, y = 0.018, z = 249.628 }, rot = { x = 0.000, y = 135.631, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42044, gadget_id = 70310132, pos = { x = -89.707, y = 0.022, z = 248.078 }, rot = { x = 0.000, y = 135.631, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42045, gadget_id = 70310131, pos = { x = -92.918, y = 5.981, z = 247.740 }, rot = { x = 333.741, y = 5.351, z = 78.047 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42048, gadget_id = 70310130, pos = { x = -92.683, y = 5.718, z = 247.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42049, gadget_id = 70310130, pos = { x = -93.651, y = 5.718, z = 248.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42050, gadget_id = 70310130, pos = { x = -91.939, y = 5.718, z = 249.651 }, rot = { x = 0.000, y = 0.000, z = 17.504 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42051, gadget_id = 70310131, pos = { x = -92.107, y = 5.718, z = 248.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42053, gadget_id = 70310129, pos = { x = -91.580, y = 5.706, z = 248.914 }, rot = { x = 0.000, y = 0.000, z = 22.986 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 42054, gadget_id = 70310125, pos = { x = -79.978, y = 0.114, z = 220.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 42023, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 40.000 }, pos = { x = -80.000, y = 0.000, z = 240.000 } }
}

-- 触发器
triggers = {
	{ config_id = 1042023, name = "ENTER_REGION_42023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 变量
variables = {
	{ config_id = 1, name = "challenge", value = 0, no_refresh = false }
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
		gadgets = { 42001, 42002, 42003, 42006, 42007, 42009, 42011, 42012, 42013, 42016, 42017, 42018, 42019, 42025, 42027, 42028, 42031, 42032, 42033, 42037, 42038, 42040, 42041, 42042, 42043, 42044, 42045, 42048, 42049, 42050, 42051, 42053, 42054 },
		regions = { 42023 },
		triggers = { "ENTER_REGION_42023" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_2/RogueDungeon_ChestRoom"