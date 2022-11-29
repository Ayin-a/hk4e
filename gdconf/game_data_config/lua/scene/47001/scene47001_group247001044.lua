-- 基础信息
local base_info = {
	group_id = 247001044
}

-- DEFS_MISCS
local GroupId = 247001044
local ChestConfigID = 44013
local RegionID = 44015
local ChestConfigIDList = {44013}

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
	{ config_id = 44001, gadget_id = 70310133, pos = { x = 73.728, y = -0.591, z = 482.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 44002, gadget_id = 70310132, pos = { x = 75.047, y = -0.608, z = 480.737 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 44003, gadget_id = 70310133, pos = { x = 73.817, y = -0.591, z = 479.423 }, rot = { x = 0.000, y = 178.101, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 44004, gadget_id = 70310132, pos = { x = 72.454, y = -0.608, z = 480.709 }, rot = { x = 0.000, y = 268.101, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 44005, gadget_id = 70310133, pos = { x = 79.634, y = -0.591, z = 482.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 44006, gadget_id = 70310132, pos = { x = 80.953, y = -0.608, z = 480.737 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 44007, gadget_id = 70310133, pos = { x = 79.723, y = -0.591, z = 479.423 }, rot = { x = 0.000, y = 178.101, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 44008, gadget_id = 70310132, pos = { x = 78.360, y = -0.608, z = 480.709 }, rot = { x = 0.000, y = 268.101, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 44009, gadget_id = 70310133, pos = { x = 85.272, y = -0.591, z = 482.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 44010, gadget_id = 70310132, pos = { x = 86.591, y = -0.608, z = 480.737 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 44011, gadget_id = 70310133, pos = { x = 85.361, y = -0.591, z = 479.423 }, rot = { x = 0.000, y = 178.101, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 44012, gadget_id = 70310132, pos = { x = 83.998, y = -0.608, z = 480.709 }, rot = { x = 0.000, y = 268.101, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 44013, gadget_id = 70211111, pos = { x = 73.849, y = -0.602, z = 480.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600009, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 44016, gadget_id = 70310125, pos = { x = 79.977, y = 0.114, z = 500.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 44017, gadget_id = 70310125, pos = { x = 79.977, y = 0.113, z = 460.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 44018, gadget_id = 70310125, pos = { x = 59.937, y = 0.114, z = 479.997 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 44019, gadget_id = 70310100, pos = { x = 85.314, y = -0.607, z = 480.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 44020, gadget_id = 70310125, pos = { x = 99.752, y = 0.113, z = 480.026 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 44024, gadget_id = 70310099, pos = { x = 79.612, y = -0.622, z = 480.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 44015, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 40.000 }, pos = { x = 80.000, y = 0.000, z = 480.000 } }
}

-- 触发器
triggers = {
	{ config_id = 1044015, name = "ENTER_REGION_44015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 44001, 44002, 44003, 44004, 44005, 44006, 44007, 44008, 44009, 44010, 44011, 44012, 44013, 44016, 44017, 44018, 44019, 44020, 44024 },
		regions = { 44015 },
		triggers = { "ENTER_REGION_44015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
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

require "V2_2/RogueDungeon_ChestRoom"