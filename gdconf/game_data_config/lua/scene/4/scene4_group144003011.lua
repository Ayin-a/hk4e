-- 基础信息
local base_info = {
	group_id = 144003011
}

-- DEFS_MISCS
local defs = {
        group_id = 144003011,
        tide_sum = 3,
        tide_max = 3,
        tide_min = 3
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11001, monster_id = 21020501, pos = { x = -398.135, y = 121.151, z = -653.309 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 401, area_id = 100 },
	{ config_id = 11002, monster_id = 21030401, pos = { x = -403.443, y = 120.772, z = -654.166 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 9012, area_id = 100 },
	{ config_id = 11003, monster_id = 21030301, pos = { x = -403.481, y = 120.790, z = -651.137 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 9012, area_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 11004, gadget_id = 70300090, pos = { x = -410.345, y = 120.191, z = -646.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 11008, gadget_id = 70220065, pos = { x = -410.441, y = 120.192, z = -655.026 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 11009, gadget_id = 70220067, pos = { x = -408.632, y = 120.422, z = -655.897 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 11011, gadget_id = 70300086, pos = { x = -399.464, y = 120.939, z = -656.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 11012, gadget_id = 70300086, pos = { x = -399.264, y = 121.107, z = -649.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 11013, gadget_id = 70300122, pos = { x = -408.560, y = 120.370, z = -650.697 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 11014, gadget_id = 70300122, pos = { x = -407.850, y = 120.560, z = -652.953 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	-- 测试发奖
	{ config_id = 11027, gadget_id = 70220035, pos = { x = -399.184, y = 121.066, z = -650.769 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 11028, gadget_id = 70300081, pos = { x = -396.795, y = 120.973, z = -653.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 11064, gadget_id = 70310009, pos = { x = -400.690, y = 120.760, z = -658.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 100 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 11010, pos = { x = -397.973, y = 121.124, z = -652.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 100 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 11005, gadget_id = 70220025, pos = { x = -398.777, y = 121.018, z = -654.203 }, rot = { x = 85.000, y = 359.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
		{ config_id = 11006, gadget_id = 70220025, pos = { x = -398.777, y = 121.060, z = -652.573 }, rot = { x = 85.000, y = 359.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
		{ config_id = 11007, gadget_id = 70220025, pos = { x = -397.995, y = 121.091, z = -653.343 }, rot = { x = 85.000, y = 359.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 }
	},
	triggers = {
		{ config_id = 1011065, name = "GROUP_LOAD_11065", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_11065" },
		{ config_id = 1011066, name = "GADGET_CREATE_11066", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_11066", action = "action_EVENT_GADGET_CREATE_11066" },
		{ config_id = 1011067, name = "MONSTER_TIDE_DIE_11067", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3011", condition = "condition_EVENT_MONSTER_TIDE_DIE_11067", action = "action_EVENT_MONSTER_TIDE_DIE_11067" },
		{ config_id = 1011068, name = "GADGET_CREATE_11068", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_11068" }
	}
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
		gadgets = { 11004, 11008, 11009, 11011, 11012, 11013, 11014, 11027, 11028, 11064 },
		regions = { },
		triggers = { },
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
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 11001, 11002, 11003 },
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

require "V1_6/KeleeBombBattle"