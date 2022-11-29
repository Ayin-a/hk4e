-- 基础信息
local base_info = {
	group_id = 133309058
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58002, monster_id = 21010101, pos = { x = -2552.876, y = -37.137, z = 5395.869 }, rot = { x = 0.000, y = 175.136, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9010, area_id = 27 },
	{ config_id = 58003, monster_id = 26090901, pos = { x = -2549.315, y = -39.709, z = 5391.377 }, rot = { x = 0.000, y = 330.864, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 104, area_id = 27 },
	{ config_id = 58005, monster_id = 26090901, pos = { x = -2556.427, y = -37.101, z = 5396.197 }, rot = { x = 0.000, y = 331.137, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 58001, gadget_id = 70300087, pos = { x = -2556.457, y = -37.120, z = 5396.284 }, rot = { x = 0.000, y = 35.497, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 58004, gadget_id = 70210101, pos = { x = -2576.151, y = -45.196, z = 5389.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", persistent = true, area_id = 27 },
	{ config_id = 58006, gadget_id = 70210101, pos = { x = -2555.493, y = -36.312, z = 5399.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", persistent = true, area_id = 27 },
	{ config_id = 58008, gadget_id = 70220048, pos = { x = -2549.203, y = -37.126, z = 5397.573 }, rot = { x = 0.000, y = 24.309, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 58009, gadget_id = 70210101, pos = { x = -2522.710, y = -23.262, z = 5359.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", persistent = true, area_id = 27 },
	{ config_id = 58010, gadget_id = 70330396, pos = { x = -2548.070, y = -37.119, z = 5395.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 27 },
	{ config_id = 58011, gadget_id = 70210101, pos = { x = -2524.834, y = -23.233, z = 5359.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", persistent = true, area_id = 27 }
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
		{ config_id = 1058007, name = "ANY_MONSTER_DIE_58007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58007", action = "" }
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
		monsters = { 58002, 58003, 58005 },
		gadgets = { 58001, 58004, 58006, 58008, 58009, 58010, 58011 },
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