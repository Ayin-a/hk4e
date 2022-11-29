-- 基础信息
local base_info = {
	group_id = 177008007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 24020201, pos = { x = -564.012, y = 217.100, z = 548.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, affix = { 5135, 1041 }, pose_id = 101, area_id = 210 },
	{ config_id = 7004, monster_id = 24020101, pos = { x = -571.819, y = 217.094, z = 548.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, affix = { 1041 }, pose_id = 101, area_id = 210 },
	{ config_id = 7005, monster_id = 24020301, pos = { x = -564.843, y = 216.866, z = 556.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, affix = { 1041 }, pose_id = 101, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7006, gadget_id = 70220014, pos = { x = -569.160, y = 216.962, z = 553.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 7007, gadget_id = 70220014, pos = { x = -568.012, y = 216.941, z = 553.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 7008, gadget_id = 70220014, pos = { x = -569.042, y = 216.840, z = 556.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
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
		{ config_id = 1007003, name = "ANY_MONSTER_DIE_7003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7003", action = "action_EVENT_ANY_MONSTER_DIE_7003" }
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
		monsters = { 7001, 7004, 7005 },
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