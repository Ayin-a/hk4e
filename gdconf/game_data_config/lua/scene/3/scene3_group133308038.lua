-- 基础信息
local base_info = {
	group_id = 133308038
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 38002, monster_id = 28060401, pos = { x = -2178.781, y = 37.282, z = 4367.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 38005, monster_id = 28060401, pos = { x = -2197.818, y = 47.984, z = 4336.350 }, rot = { x = 0.000, y = 82.629, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 38006, monster_id = 28060401, pos = { x = -2142.954, y = 44.089, z = 4322.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 4, area_id = 26 },
	{ config_id = 38008, monster_id = 28060401, pos = { x = -2126.011, y = 37.322, z = 4271.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 38009, monster_id = 28060401, pos = { x = -2110.811, y = 35.330, z = 4283.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 26 }
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
		{ config_id = 38001, monster_id = 28060401, pos = { x = -2185.083, y = 38.798, z = 4366.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 26 },
		{ config_id = 38003, monster_id = 28060401, pos = { x = -2186.308, y = 40.786, z = 4373.281 }, rot = { x = 0.000, y = 160.708, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 3, area_id = 26 },
		{ config_id = 38004, monster_id = 28060401, pos = { x = -2189.714, y = 48.353, z = 4339.860 }, rot = { x = 0.000, y = 218.061, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 26 },
		{ config_id = 38007, monster_id = 28060401, pos = { x = -2146.223, y = 42.153, z = 4329.216 }, rot = { x = 0.000, y = 77.361, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 4, area_id = 26 },
		{ config_id = 38010, monster_id = 28060401, pos = { x = -2102.210, y = 35.803, z = 4298.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 26 }
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
		monsters = { 38002, 38005, 38006, 38008, 38009 },
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