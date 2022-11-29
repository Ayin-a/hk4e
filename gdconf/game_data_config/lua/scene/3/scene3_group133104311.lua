-- 基础信息
local base_info = {
	group_id = 133104311
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 311001, gadget_id = 70500000, pos = { x = 889.332, y = 211.361, z = 541.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 6 },
	{ config_id = 311002, gadget_id = 70500000, pos = { x = 770.445, y = 211.710, z = 513.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 6 },
	{ config_id = 311004, gadget_id = 70500000, pos = { x = 740.181, y = 228.409, z = 680.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 6 },
	{ config_id = 311005, gadget_id = 70500000, pos = { x = 831.707, y = 212.279, z = 655.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 6 },
	{ config_id = 311007, gadget_id = 70500000, pos = { x = 638.890, y = 225.925, z = 867.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 6 }
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
		gadgets = { 311001, 311002, 311004, 311005, 311007 },
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