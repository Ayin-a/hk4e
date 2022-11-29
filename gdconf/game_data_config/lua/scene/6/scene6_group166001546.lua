-- 基础信息
local base_info = {
	group_id = 166001546
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
	{ config_id = 546001, gadget_id = 70217014, pos = { x = 931.598, y = 903.049, z = 536.287 }, rot = { x = 357.447, y = 0.111, z = 355.007 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 546002, gadget_id = 70217014, pos = { x = 855.823, y = 982.308, z = 561.304 }, rot = { x = 13.676, y = 29.599, z = 358.164 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 546003, gadget_id = 70217014, pos = { x = 436.817, y = 410.935, z = 622.818 }, rot = { x = 13.676, y = 29.599, z = 358.164 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 546004, gadget_id = 70211131, pos = { x = 764.862, y = 609.058, z = 708.948 }, rot = { x = 6.565, y = 107.925, z = 356.533 }, level = 26, drop_tag = "解谜超级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 546005, gadget_id = 70217014, pos = { x = 768.729, y = 609.387, z = 695.769 }, rot = { x = 13.676, y = 29.599, z = 358.164 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 546006, gadget_id = 70217014, pos = { x = 733.130, y = 395.628, z = 658.658 }, rot = { x = 347.310, y = 97.869, z = 4.857 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
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
		gadgets = { 546001, 546002, 546003, 546004, 546005, 546006 },
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