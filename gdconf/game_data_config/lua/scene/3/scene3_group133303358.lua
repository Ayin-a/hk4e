-- 基础信息
local base_info = {
	group_id = 133303358
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 358001, monster_id = 25210101, pos = { x = -1265.806, y = 237.332, z = 3751.459 }, rot = { x = 0.000, y = 174.956, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9002, area_id = 23 },
	{ config_id = 358002, monster_id = 25210101, pos = { x = -1255.641, y = 248.997, z = 3730.929 }, rot = { x = 0.000, y = 116.976, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9505, area_id = 23 },
	{ config_id = 358003, monster_id = 25210301, pos = { x = -1240.332, y = 243.711, z = 3724.865 }, rot = { x = 0.000, y = 306.731, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9003, area_id = 23 },
	{ config_id = 358004, monster_id = 25210202, pos = { x = -1268.331, y = 249.069, z = 3734.298 }, rot = { x = 0.000, y = 139.609, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9003, area_id = 23 },
	{ config_id = 358005, monster_id = 25210202, pos = { x = -1259.692, y = 237.258, z = 3750.385 }, rot = { x = 0.000, y = 139.358, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9001, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 358007, gadget_id = 70310479, pos = { x = -1248.339, y = 243.398, z = 3728.746 }, rot = { x = 0.000, y = 7.147, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 358008, gadget_id = 70310479, pos = { x = -1251.024, y = 243.428, z = 3731.646 }, rot = { x = 0.000, y = 7.147, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 358009, gadget_id = 70310479, pos = { x = -1257.364, y = 237.074, z = 3760.577 }, rot = { x = 0.000, y = 5.006, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 358010, gadget_id = 70310479, pos = { x = -1259.552, y = 237.073, z = 3763.250 }, rot = { x = 0.000, y = 7.147, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 }
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
		{ config_id = 1358006, name = "GROUP_LOAD_358006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_358006", action = "action_EVENT_GROUP_LOAD_358006" }
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
		monsters = { 358001, 358002, 358003, 358004, 358005 },
		gadgets = { 358007, 358008, 358009, 358010 },
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