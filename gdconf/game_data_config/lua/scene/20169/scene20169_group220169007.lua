-- 基础信息
local base_info = {
	group_id = 220169007
}

-- DEFS_MISCS
local EnterConfigID = 7009

local thunderFloorTimer = {7}

local floorList = {7001,7002,7003,7004,7005,7006,7007,7008}

local randomNumMin = 8

local randomNumMax = 8

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
	{ config_id = 7001, gadget_id = 70360285, pos = { x = 25.370, y = 65.152, z = -73.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7002, gadget_id = 70360285, pos = { x = 25.370, y = 65.152, z = -68.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7003, gadget_id = 70360285, pos = { x = 22.708, y = 65.152, z = -68.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7004, gadget_id = 70360285, pos = { x = 22.708, y = 65.152, z = -73.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7005, gadget_id = 70360285, pos = { x = 20.056, y = 65.152, z = -68.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7006, gadget_id = 70360285, pos = { x = 20.056, y = 65.152, z = -73.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7007, gadget_id = 70360285, pos = { x = 17.407, y = 65.152, z = -73.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7008, gadget_id = 70360285, pos = { x = 17.407, y = 65.152, z = -68.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 7009, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 20.000 }, pos = { x = 21.180, y = 68.436, z = -68.145 } }
}

-- 触发器
triggers = {
	{ config_id = 1007009, name = "ENTER_REGION_7009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 7001, 7002, 7003, 7004, 7005, 7006, 7007, 7008 },
		regions = { 7009 },
		triggers = { "ENTER_REGION_7009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_0/ThunderFloor"