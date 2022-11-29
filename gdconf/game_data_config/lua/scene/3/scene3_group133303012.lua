-- 基础信息
local base_info = {
	group_id = 133303012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12002, monster_id = 26090201, pos = { x = -1738.077, y = 90.470, z = 3251.615 }, rot = { x = 0.000, y = 308.410, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 12003, monster_id = 26090201, pos = { x = -1739.168, y = 78.692, z = 3250.624 }, rot = { x = 0.000, y = 335.510, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 12007, monster_id = 26090101, pos = { x = -1751.674, y = 3.100, z = 3273.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 105, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 12001, gadget_id = 70217020, pos = { x = -1720.345, y = 121.059, z = 3234.753 }, rot = { x = 0.461, y = 250.317, z = 11.879 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 },
	{ config_id = 12004, gadget_id = 70217020, pos = { x = -1744.089, y = 5.654, z = 3240.959 }, rot = { x = 0.000, y = 46.175, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 },
	{ config_id = 12005, gadget_id = 70220109, pos = { x = -1733.449, y = 26.723, z = 3253.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 12006, gadget_id = 70217020, pos = { x = -1734.522, y = 26.555, z = 3251.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 }
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
		monsters = { 12002, 12003, 12007 },
		gadgets = { 12001, 12004, 12005, 12006 },
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