-- 基础信息
local base_info = {
	group_id = 177008006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 22010404, pos = { x = -312.330, y = 256.296, z = 410.445 }, rot = { x = 0.000, y = 151.607, z = 0.000 }, level = 36, drop_tag = "深渊法师", disableWander = true, affix = { 1041 }, pose_id = 9013, area_id = 210 },
	{ config_id = 6004, monster_id = 21010701, pos = { x = -316.055, y = 258.164, z = 407.654 }, rot = { x = 0.000, y = 72.004, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, affix = { 1041 }, area_id = 210 },
	{ config_id = 6005, monster_id = 21010701, pos = { x = -307.104, y = 257.695, z = 408.636 }, rot = { x = 0.000, y = 271.675, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, affix = { 1041 }, area_id = 210 },
	{ config_id = 6006, monster_id = 21030103, pos = { x = -311.604, y = 258.599, z = 403.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, affix = { 1041 }, pose_id = 9012, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6007, gadget_id = 70300081, pos = { x = -311.656, y = 259.396, z = 400.676 }, rot = { x = 13.401, y = 81.764, z = 21.292 }, level = 36, area_id = 210 },
	{ config_id = 6008, gadget_id = 70300081, pos = { x = -311.877, y = 255.260, z = 412.739 }, rot = { x = 0.000, y = 280.743, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 6009, gadget_id = 70220014, pos = { x = -312.651, y = 255.813, z = 411.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 6010, gadget_id = 70220014, pos = { x = -310.983, y = 255.601, z = 411.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 6011, gadget_id = 70220014, pos = { x = -315.345, y = 260.227, z = 401.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
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
		{ config_id = 1006003, name = "ANY_MONSTER_DIE_6003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6003", action = "action_EVENT_ANY_MONSTER_DIE_6003" }
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
		monsters = { 6004, 6005, 6006 },
		gadgets = { 6007, 6008, 6009, 6010, 6011 },
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