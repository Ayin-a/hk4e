-- 基础信息
local base_info = {
	group_id = 133301413
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 413001, monster_id = 25210303, pos = { x = -696.348, y = 261.332, z = 3273.171 }, rot = { x = 0.000, y = 251.740, z = 0.000 }, level = 33, drop_tag = "镀金旅团", pose_id = 9005, area_id = 23 },
	{ config_id = 413004, monster_id = 25310101, pos = { x = -679.876, y = 261.784, z = 3268.762 }, rot = { x = 0.000, y = 121.703, z = 0.000 }, level = 33, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9003, area_id = 22 },
	{ config_id = 413005, monster_id = 25210202, pos = { x = -690.104, y = 261.717, z = 3266.909 }, rot = { x = 0.000, y = 232.304, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9003, area_id = 23 },
	{ config_id = 413018, monster_id = 25210302, pos = { x = -686.765, y = 261.323, z = 3256.342 }, rot = { x = 0.000, y = 162.803, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9007, area_id = 22 },
	{ config_id = 413022, monster_id = 25210401, pos = { x = -695.657, y = 260.543, z = 3260.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9503, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 413006, gadget_id = 70217020, pos = { x = -680.562, y = 257.917, z = 3266.538 }, rot = { x = 8.164, y = 128.307, z = 6.679 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 },
	{ config_id = 413009, gadget_id = 70217020, pos = { x = -667.068, y = 233.420, z = 3252.339 }, rot = { x = 1.990, y = 188.447, z = 5.830 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 },
	{ config_id = 413015, gadget_id = 70210101, pos = { x = -672.928, y = 233.634, z = 3237.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 413016, gadget_id = 70210101, pos = { x = -669.362, y = 234.726, z = 3243.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 22 },
	{ config_id = 413017, gadget_id = 70210101, pos = { x = -665.136, y = 242.705, z = 3250.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 413019, gadget_id = 70220015, pos = { x = -685.050, y = 261.487, z = 3253.621 }, rot = { x = 278.809, y = 304.327, z = 103.994 }, level = 33, area_id = 22 },
	{ config_id = 413020, gadget_id = 70220015, pos = { x = -685.119, y = 262.189, z = 3253.538 }, rot = { x = 278.809, y = 304.327, z = 103.994 }, level = 33, area_id = 22 },
	{ config_id = 413021, gadget_id = 70210101, pos = { x = -683.727, y = 261.967, z = 3255.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 413023, gadget_id = 70310006, pos = { x = -695.177, y = 260.760, z = 3262.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 23 }
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
		{ config_id = 413007, gadget_id = 70310001, pos = { x = -665.892, y = 241.106, z = 3247.811 }, rot = { x = 1.883, y = 0.012, z = 0.749 }, level = 33, area_id = 22 },
		{ config_id = 413008, gadget_id = 70310001, pos = { x = -673.050, y = 241.399, z = 3247.615 }, rot = { x = 6.057, y = 359.858, z = 357.312 }, level = 33, area_id = 22 }
	},
	triggers = {
		{ config_id = 1413003, name = "ANY_MONSTER_DIE_413003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_413003", action = "action_EVENT_ANY_MONSTER_DIE_413003" }
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
		monsters = { 413001, 413004, 413005, 413018, 413022 },
		gadgets = { 413006, 413009, 413015, 413016, 413017, 413019, 413020, 413021, 413023 },
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