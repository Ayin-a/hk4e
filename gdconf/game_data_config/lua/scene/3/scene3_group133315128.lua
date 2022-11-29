-- 基础信息
local base_info = {
	group_id = 133315128
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 128001, monster_id = 25210101, pos = { x = -225.185, y = 256.477, z = 2217.459 }, rot = { x = 0.000, y = 26.580, z = 0.000 }, level = 27, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9002, area_id = 24 },
	{ config_id = 128002, monster_id = 25210101, pos = { x = -247.031, y = 245.232, z = 2211.899 }, rot = { x = 0.000, y = 104.955, z = 0.000 }, level = 27, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9505, area_id = 24 },
	{ config_id = 128004, monster_id = 25210402, pos = { x = -224.624, y = 256.736, z = 2219.040 }, rot = { x = 0.000, y = 19.092, z = 0.000 }, level = 27, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9504, area_id = 24 },
	{ config_id = 128005, monster_id = 25210503, pos = { x = -224.635, y = 251.127, z = 2224.299 }, rot = { x = 0.000, y = 253.885, z = 0.000 }, level = 27, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9504, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 128006, gadget_id = 70310479, pos = { x = -258.267, y = 245.809, z = 2200.279 }, rot = { x = 0.000, y = 18.035, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 128007, gadget_id = 70310479, pos = { x = -261.738, y = 245.850, z = 2198.468 }, rot = { x = 6.169, y = 15.688, z = 355.707 }, level = 30, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 128008, gadget_id = 70310479, pos = { x = -229.320, y = 251.100, z = 2219.617 }, rot = { x = 0.000, y = 16.114, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 128009, gadget_id = 70310479, pos = { x = -233.183, y = 251.080, z = 2217.685 }, rot = { x = 0.000, y = 18.760, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 128011, gadget_id = 70220103, pos = { x = -240.424, y = 276.302, z = 2204.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 128012, gadget_id = 70220103, pos = { x = -250.010, y = 261.308, z = 2219.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1128010, name = "GROUP_LOAD_128010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_128010", action = "action_EVENT_GROUP_LOAD_128010" }
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
		monsters = { 128001, 128002, 128004, 128005 },
		gadgets = { 128006, 128007, 128008, 128009, 128011, 128012 },
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