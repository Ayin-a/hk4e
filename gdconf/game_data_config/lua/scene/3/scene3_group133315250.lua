-- 基础信息
local base_info = {
	group_id = 133315250
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 250001, monster_id = 28030313, pos = { x = 333.882, y = 295.128, z = 2177.249 }, rot = { x = 0.000, y = 34.402, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 250002, monster_id = 28030313, pos = { x = 230.914, y = 261.890, z = 2228.713 }, rot = { x = 0.000, y = 304.931, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 250003, monster_id = 28030313, pos = { x = 339.149, y = 249.885, z = 2324.766 }, rot = { x = 0.000, y = 76.612, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 250004, monster_id = 28030313, pos = { x = 165.649, y = 333.365, z = 2188.091 }, rot = { x = 0.000, y = 90.695, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 250005, monster_id = 28030313, pos = { x = 486.226, y = 304.525, z = 2135.590 }, rot = { x = 0.000, y = 270.710, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 250010, monster_id = 28030313, pos = { x = 422.231, y = 254.046, z = 2195.239 }, rot = { x = 0.000, y = 34.632, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 250011, monster_id = 28030313, pos = { x = 427.423, y = 254.172, z = 2203.181 }, rot = { x = 0.000, y = 237.052, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 250012, monster_id = 28030313, pos = { x = 218.996, y = 310.023, z = 2191.003 }, rot = { x = 0.000, y = 99.939, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 250013, monster_id = 28030313, pos = { x = 92.228, y = 300.442, z = 2284.960 }, rot = { x = 0.000, y = 199.854, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 250014, monster_id = 28030313, pos = { x = 325.814, y = 289.385, z = 2362.032 }, rot = { x = 0.000, y = 105.591, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 250015, monster_id = 28030313, pos = { x = 444.618, y = 221.800, z = 2264.719 }, rot = { x = 0.000, y = 340.202, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 250008, gadget_id = 70217020, pos = { x = 281.504, y = 259.819, z = 2292.915 }, rot = { x = 0.000, y = 330.118, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 }
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
		monsters = { 250001, 250002, 250003, 250004, 250005, 250010, 250011, 250012, 250013, 250014, 250015 },
		gadgets = { 250008 },
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