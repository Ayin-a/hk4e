-- 基础信息
local base_info = {
	group_id = 133308231
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 231001, monster_id = 25210302, pos = { x = -1662.199, y = 137.926, z = 4861.184 }, rot = { x = 0.000, y = 192.039, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9506, area_id = 26 },
	{ config_id = 231008, monster_id = 25010401, pos = { x = -1660.451, y = 137.764, z = 4858.471 }, rot = { x = 0.000, y = 281.513, z = 0.000 }, level = 32, drop_tag = "盗宝团", pose_id = 9002, area_id = 26 },
	{ config_id = 231011, monster_id = 28010404, pos = { x = -1662.574, y = 138.483, z = 4859.328 }, rot = { x = 0.000, y = 17.888, z = 0.000 }, level = 32, drop_tag = "采集动物", pose_id = 1, area_id = 26 },
	{ config_id = 231012, monster_id = 25210202, pos = { x = -1661.299, y = 137.927, z = 4862.135 }, rot = { x = 0.000, y = 179.871, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9004, area_id = 26 },
	{ config_id = 231013, monster_id = 25020201, pos = { x = -1664.280, y = 137.848, z = 4857.812 }, rot = { x = 0.000, y = 41.543, z = 0.000 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 231004, gadget_id = 70220051, pos = { x = -1662.875, y = 137.980, z = 4862.082 }, rot = { x = 357.248, y = 304.155, z = 0.472 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	{ config_id = 231005, gadget_id = 70330397, pos = { x = -1677.982, y = 138.792, z = 4843.986 }, rot = { x = 2.689, y = 9.058, z = 5.842 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 231006, gadget_id = 70220052, pos = { x = -1663.443, y = 137.968, z = 4861.113 }, rot = { x = 0.000, y = 278.332, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	{ config_id = 231007, gadget_id = 70330397, pos = { x = -1650.620, y = 135.913, z = 4848.093 }, rot = { x = 355.576, y = 347.928, z = 344.029 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 231009, gadget_id = 71700431, pos = { x = -1670.471, y = 138.021, z = 4849.559 }, rot = { x = 2.679, y = 359.916, z = 1.368 }, level = 32, area_id = 26 },
	{ config_id = 231010, gadget_id = 70330428, pos = { x = -1662.555, y = 137.841, z = 4859.312 }, rot = { x = 0.000, y = 280.798, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 231014, gadget_id = 70210101, pos = { x = -1671.034, y = 137.962, z = 4852.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 26 },
	{ config_id = 231015, gadget_id = 70210101, pos = { x = -1669.914, y = 138.662, z = 4849.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 },
	{ config_id = 231016, gadget_id = 70900386, pos = { x = -1669.775, y = 138.550, z = 4850.909 }, rot = { x = 355.820, y = 154.327, z = 16.011 }, level = 26, drop_tag = "书页章节1须弥", isOneoff = true, persistent = true, area_id = 26 }
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
	gadgets = {
		{ config_id = 231002, gadget_id = 70211002, pos = { x = -1667.194, y = 138.002, z = 4850.396 }, rot = { x = 3.289, y = 122.526, z = 3.153 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
	},
	triggers = {
		{ config_id = 1231003, name = "ANY_MONSTER_DIE_231003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_231003", action = "action_EVENT_ANY_MONSTER_DIE_231003" }
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
		monsters = { 231001, 231008, 231011, 231012, 231013 },
		gadgets = { 231004, 231005, 231006, 231007, 231009, 231010, 231014, 231015, 231016 },
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