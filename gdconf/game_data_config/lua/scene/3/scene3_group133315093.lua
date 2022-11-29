-- 基础信息
local base_info = {
	group_id = 133315093
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 93001, monster_id = 26090101, pos = { x = 85.414, y = 97.630, z = 2898.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 20 },
	{ config_id = 93005, monster_id = 26090101, pos = { x = 87.850, y = 97.630, z = 2900.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 20 },
	{ config_id = 93006, monster_id = 26090101, pos = { x = 90.550, y = 97.630, z = 2901.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 20 },
	{ config_id = 93007, monster_id = 26090101, pos = { x = 90.296, y = 98.183, z = 2895.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 93002, gadget_id = 70217020, pos = { x = 90.309, y = 97.114, z = 2895.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, explore = { name = "chest", exp = 4 }, area_id = 20 },
	{ config_id = 93003, gadget_id = 70330197, pos = { x = 81.992, y = 98.526, z = 2899.923 }, rot = { x = 4.581, y = 126.027, z = 0.000 }, level = 27, area_id = 20 }
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
		monsters = { 93001, 93005, 93006, 93007 },
		gadgets = { 93002, 93003 },
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