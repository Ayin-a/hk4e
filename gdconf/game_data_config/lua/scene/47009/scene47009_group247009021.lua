-- 基础信息
local base_info = {
	group_id = 247009021
}

-- DEFS_MISCS
local RegionID = 21004
local QuestID = 0
local GroupID = 247009021
local RoomDoorConfigID = 0
local DestinationConfigID = 0

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
	{ config_id = 21001, gadget_id = 70900201, pos = { x = 0.107, y = -2.512, z = 702.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 21002, gadget_id = 70310125, pos = { x = 0.000, y = 0.114, z = 20.094 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true }
}

-- 区域
regions = {
	{ config_id = 21004, shape = RegionShape.CUBIC, size = { x = 35.000, y = 20.000, z = 35.000 }, pos = { x = 0.000, y = 0.000, z = 0.000 } }
}

-- 触发器
triggers = {
	{ config_id = 1021004, name = "ENTER_REGION_21004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 21001, 21002 },
		regions = { 21004 },
		triggers = { "ENTER_REGION_21004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_2/RoqueDungeon_FirstRoom"