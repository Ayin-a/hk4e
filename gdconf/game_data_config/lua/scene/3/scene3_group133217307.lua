-- 基础信息
local base_info = {
	group_id = 133217307
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 307001, monster_id = 28020506, pos = { x = -4494.312, y = 221.520, z = -3898.910 }, rot = { x = 0.000, y = 161.263, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 12, area_id = 14 },
	{ config_id = 307002, monster_id = 28020503, pos = { x = -4480.880, y = 220.621, z = -3894.656 }, rot = { x = 0.000, y = 246.463, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 12, area_id = 14 },
	{ config_id = 307003, monster_id = 28020502, pos = { x = -4485.966, y = 219.170, z = -3877.557 }, rot = { x = 0.000, y = 208.536, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 12, area_id = 14 },
	{ config_id = 307004, monster_id = 28020505, pos = { x = -4541.612, y = 207.200, z = -3811.480 }, rot = { x = 0.000, y = 179.403, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 13, area_id = 14 },
	{ config_id = 307005, monster_id = 28020505, pos = { x = -4544.426, y = 207.460, z = -3815.723 }, rot = { x = 0.000, y = 87.401, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 13, area_id = 14 },
	{ config_id = 307006, monster_id = 28020504, pos = { x = -4631.536, y = 200.749, z = -3740.350 }, rot = { x = 0.000, y = 194.731, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 12, area_id = 14 },
	{ config_id = 307007, monster_id = 28020504, pos = { x = -4671.598, y = 204.922, z = -3729.957 }, rot = { x = 0.000, y = 112.488, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 12, area_id = 14 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 307001, 307002, 307003, 307004, 307005, 307006, 307007 },
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