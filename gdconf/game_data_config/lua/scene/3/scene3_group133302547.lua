-- 基础信息
local base_info = {
	group_id = 133302547
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
	{ config_id = 547001, gadget_id = 70210101, pos = { x = -578.647, y = 109.180, z = 2219.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 24 },
	{ config_id = 547003, gadget_id = 70217020, pos = { x = -580.039, y = 105.992, z = 2342.579 }, rot = { x = 0.000, y = 61.940, z = 6.963 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 547004, gadget_id = 70210101, pos = { x = -697.204, y = 105.017, z = 2297.341 }, rot = { x = 0.000, y = 0.079, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 24 },
	{ config_id = 547005, gadget_id = 70210101, pos = { x = -697.241, y = 104.316, z = 2296.728 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 24 },
	{ config_id = 547007, gadget_id = 70210101, pos = { x = -523.785, y = 103.097, z = 2312.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 24 }
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
	gadgets = {
		{ config_id = 547002, gadget_id = 70217020, pos = { x = -583.323, y = 108.575, z = 2220.103 }, rot = { x = 0.000, y = 35.115, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
		{ config_id = 547006, gadget_id = 70217020, pos = { x = -679.504, y = 107.050, z = 2255.877 }, rot = { x = 0.000, y = 209.707, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 }
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
		monsters = { },
		gadgets = { 547001, 547003, 547004, 547005, 547007 },
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