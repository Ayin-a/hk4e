-- 基础信息
local base_info = {
	group_id = 133220032
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 32002, monster_id = 21010101, pos = { x = -2695.680, y = 209.337, z = -4140.848 }, rot = { x = 0.000, y = 49.815, z = 0.000 }, level = 27, drop_tag = "丘丘人", isOneoff = true, pose_id = 9016, area_id = 11 },
	{ config_id = 32003, monster_id = 21010101, pos = { x = -2691.641, y = 209.527, z = -4140.620 }, rot = { x = 0.000, y = 278.034, z = 0.000 }, level = 27, drop_tag = "丘丘人", isOneoff = true, pose_id = 9016, area_id = 11 },
	{ config_id = 32004, monster_id = 21010301, pos = { x = -2695.125, y = 209.587, z = -4137.454 }, rot = { x = 0.000, y = 173.700, z = 0.000 }, level = 27, drop_tag = "丘丘人", isOneoff = true, pose_id = 9013, area_id = 11 }
}

-- NPC
npcs = {
	{ config_id = 32001, npc_id = 20230, pos = { x = -2693.659, y = 210.292, z = -4139.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 11 }
}

-- 装置
gadgets = {
	{ config_id = 32005, gadget_id = 70360089, pos = { x = -2693.679, y = 210.285, z = -4139.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
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
	end_suite = 3,
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
		monsters = { 32002, 32003, 32004 },
		gadgets = { 32005 },
		regions = { },
		triggers = { },
		npcs = { 32001 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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