-- 基础信息
local base_info = {
	group_id = 133302449
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 449001, monster_id = 25210202, pos = { x = -36.457, y = 279.492, z = 2501.876 }, rot = { x = 0.000, y = 78.569, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, pose_id = 9512, area_id = 20 },
	{ config_id = 449004, monster_id = 25210402, pos = { x = -34.143, y = 279.253, z = 2502.027 }, rot = { x = 0.000, y = 271.029, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, pose_id = 9511, area_id = 20 },
	{ config_id = 449005, monster_id = 25310201, pos = { x = -35.430, y = 279.138, z = 2503.852 }, rot = { x = 0.000, y = 172.386, z = 0.000 }, level = 27, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9002, area_id = 20 },
	{ config_id = 449007, monster_id = 28030313, pos = { x = -37.584, y = 280.091, z = 2504.385 }, rot = { x = 0.000, y = 142.908, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 449011, monster_id = 28020201, pos = { x = -36.004, y = 279.119, z = 2499.908 }, rot = { x = 0.000, y = 9.244, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, area_id = 20 },
	{ config_id = 449012, monster_id = 28020201, pos = { x = -34.580, y = 279.119, z = 2500.729 }, rot = { x = 0.000, y = 304.832, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 449002, gadget_id = 70217020, pos = { x = -50.149, y = 272.619, z = 2508.240 }, rot = { x = 354.833, y = 359.283, z = 15.790 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 },
	{ config_id = 449003, gadget_id = 70220128, pos = { x = -35.397, y = 279.266, z = 2502.093 }, rot = { x = 1.817, y = 350.546, z = 351.445 }, level = 27, area_id = 20 },
	{ config_id = 449006, gadget_id = 71700432, pos = { x = -37.641, y = 279.418, z = 2504.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 449008, gadget_id = 70310479, pos = { x = -37.914, y = 278.995, z = 2499.995 }, rot = { x = 356.671, y = 310.465, z = 3.998 }, level = 27, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 20 },
	{ config_id = 449009, gadget_id = 70220064, pos = { x = -37.034, y = 279.403, z = 2504.772 }, rot = { x = 0.000, y = 309.955, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 449010, gadget_id = 70220063, pos = { x = -37.221, y = 280.294, z = 2503.764 }, rot = { x = 352.550, y = 129.955, z = 180.000 }, level = 27, area_id = 20 }
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
		monsters = { 449001, 449004, 449005, 449007, 449011, 449012 },
		gadgets = { 449002, 449003, 449006, 449008, 449009, 449010 },
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