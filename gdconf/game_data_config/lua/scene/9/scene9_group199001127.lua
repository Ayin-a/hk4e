-- 基础信息
local base_info = {
	group_id = 199001127
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 127001, monster_id = 21010101, pos = { x = 703.580, y = 176.525, z = 316.077 }, rot = { x = 0.000, y = 85.134, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 402 },
	{ config_id = 127002, monster_id = 21010101, pos = { x = 774.070, y = 193.790, z = 313.666 }, rot = { x = 0.000, y = 357.453, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 402 },
	{ config_id = 127003, monster_id = 21010101, pos = { x = 761.343, y = 192.604, z = 280.047 }, rot = { x = 0.000, y = 191.227, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 402 },
	{ config_id = 127004, monster_id = 21010201, pos = { x = 772.062, y = 194.122, z = 314.173 }, rot = { x = 0.000, y = 48.601, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 402 },
	{ config_id = 127005, monster_id = 21010101, pos = { x = 757.820, y = 176.805, z = 308.004 }, rot = { x = 0.000, y = 333.902, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 402 },
	{ config_id = 127006, monster_id = 21010401, pos = { x = 773.493, y = 204.608, z = 309.414 }, rot = { x = 0.000, y = 6.419, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 127007, gadget_id = 70220066, pos = { x = 763.998, y = 192.641, z = 280.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 127008, gadget_id = 70220005, pos = { x = 771.994, y = 194.016, z = 315.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 }
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
		monsters = { 127001, 127002, 127003, 127004, 127005, 127006 },
		gadgets = { 127007, 127008 },
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