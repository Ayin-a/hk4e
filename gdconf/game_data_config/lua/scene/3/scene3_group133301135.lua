-- 基础信息
local base_info = {
	group_id = 133301135
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 135001, monster_id = 28060201, pos = { x = -691.693, y = 249.178, z = 3667.759 }, rot = { x = 0.000, y = 232.204, z = 0.000 }, level = 33, drop_tag = "走兽", disableWander = true, pose_id = 3, area_id = 22, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 135002, monster_id = 28060201, pos = { x = -694.206, y = 249.135, z = 3668.452 }, rot = { x = 0.000, y = 190.668, z = 0.000 }, level = 33, drop_tag = "走兽", disableWander = true, pose_id = 2, area_id = 22, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 135003, monster_id = 28060201, pos = { x = -689.503, y = 234.461, z = 3682.513 }, rot = { x = 0.000, y = 12.723, z = 0.000 }, level = 33, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 22, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
	monsters = {
		{ config_id = 135004, monster_id = 28050106, pos = { x = -687.419, y = 235.981, z = 3670.815 }, rot = { x = 0.000, y = 285.813, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 22 },
		{ config_id = 135005, monster_id = 28050106, pos = { x = -687.306, y = 236.328, z = 3680.097 }, rot = { x = 0.000, y = 285.813, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 22 },
		{ config_id = 135006, monster_id = 28050106, pos = { x = -687.601, y = 236.990, z = 3675.839 }, rot = { x = 0.000, y = 285.813, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 22 },
		{ config_id = 135007, monster_id = 28050106, pos = { x = -683.445, y = 232.218, z = 3684.122 }, rot = { x = 0.000, y = 285.813, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 22 }
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
		monsters = { 135001, 135002, 135003 },
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