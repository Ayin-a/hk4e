-- 基础信息
local base_info = {
	group_id = 155005166
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
	{ config_id = 166002, gadget_id = 70217012, pos = { x = 106.146, y = 257.085, z = 316.474 }, rot = { x = 0.000, y = 108.321, z = 0.000 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 166003, gadget_id = 70217012, pos = { x = 164.397, y = 268.734, z = 364.156 }, rot = { x = 0.000, y = 255.454, z = 0.000 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 166006, gadget_id = 70217012, pos = { x = 165.082, y = 268.472, z = 370.356 }, rot = { x = 0.000, y = 41.728, z = 0.000 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
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
		{ config_id = 166001, gadget_id = 70217012, pos = { x = 106.667, y = 257.083, z = 314.288 }, rot = { x = 0.000, y = 75.924, z = 0.000 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
		{ config_id = 166004, gadget_id = 70217012, pos = { x = 150.255, y = 269.850, z = 344.641 }, rot = { x = 13.257, y = 355.767, z = 343.645 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
		{ config_id = 166005, gadget_id = 70217012, pos = { x = 163.958, y = 268.327, z = 372.368 }, rot = { x = 0.000, y = 90.550, z = 0.000 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
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
		gadgets = { 166002, 166003, 166006 },
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