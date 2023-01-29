-- 基础信息
local base_info = {
	group_id = 133314185
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 185001, monster_id = 28060301, pos = { x = -264.413, y = -15.772, z = 4752.766 }, rot = { x = 0.000, y = 144.773, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 185002, monster_id = 28020108, pos = { x = -169.162, y = -47.795, z = 4833.765 }, rot = { x = 0.000, y = 29.340, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, area_id = 32 },
	{ config_id = 185003, monster_id = 28060301, pos = { x = -279.426, y = -20.281, z = 4742.739 }, rot = { x = 0.000, y = 122.828, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 185004, monster_id = 28060301, pos = { x = -262.051, y = -20.281, z = 4767.413 }, rot = { x = 0.000, y = 132.825, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 185005, monster_id = 28010404, pos = { x = -160.944, y = -45.494, z = 4787.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "采集动物", pose_id = 1, area_id = 32 },
	{ config_id = 185006, monster_id = 28060301, pos = { x = -269.420, y = -21.195, z = 4749.234 }, rot = { x = 0.000, y = 108.596, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 185007, monster_id = 28020108, pos = { x = -167.223, y = -47.485, z = 4835.497 }, rot = { x = 0.000, y = 260.193, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, area_id = 32 }
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
		monsters = { 185001, 185002, 185003, 185004, 185005, 185006, 185007 },
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