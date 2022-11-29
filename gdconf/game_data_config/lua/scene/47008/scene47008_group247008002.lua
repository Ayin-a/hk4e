-- 基础信息
local base_info = {
	group_id = 247008002
}

-- DEFS_MISCS
local RegionID = 2004
local QuestID = 0
local GroupID = 247008002
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
	{ config_id = 2001, gadget_id = 70310125, pos = { x = 0.019, y = 0.206, z = -19.834 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2002, gadget_id = 70310125, pos = { x = -0.018, y = 0.126, z = 20.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2003, gadget_id = 70310125, pos = { x = -19.809, y = 0.206, z = -0.009 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2005, gadget_id = 70310125, pos = { x = 19.857, y = 0.173, z = 0.016 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 2004, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = 0.000, y = 0.000, z = 0.000 } }
}

-- 触发器
triggers = {
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
		gadgets = { 2001, 2002, 2003, 2005 },
		regions = { 2004 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_2/RoqueDungeon_FirstRoom"