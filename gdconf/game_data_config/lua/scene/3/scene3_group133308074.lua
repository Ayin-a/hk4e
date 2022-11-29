-- 基础信息
local base_info = {
	group_id = 133308074
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 驮兽不沿路径走路 暂时用丘丘人替代
	{ config_id = 74001, monster_id = 28060501, pos = { x = -2087.481, y = 121.745, z = 4933.186 }, rot = { x = 0.000, y = 105.543, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 4, area_id = 26, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 74002, monster_id = 28060501, pos = { x = -2091.754, y = 121.355, z = 4931.006 }, rot = { x = 0.000, y = 109.276, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 4, area_id = 26, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
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
		monsters = { 74001, 74002 },
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