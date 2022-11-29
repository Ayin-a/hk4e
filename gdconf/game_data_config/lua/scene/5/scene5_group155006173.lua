-- 基础信息
local base_info = {
	group_id = 155006173
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
	{ config_id = 173001, gadget_id = 70217012, pos = { x = 230.872, y = 200.128, z = -470.508 }, rot = { x = 356.715, y = 359.677, z = 11.239 }, level = 26, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 173002, gadget_id = 70217012, pos = { x = 125.189, y = 207.394, z = -412.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 173003, gadget_id = 70217012, pos = { x = 170.373, y = 208.230, z = -357.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 173005, gadget_id = 70217012, pos = { x = 118.103, y = 191.452, z = -380.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 173006, gadget_id = 70217012, pos = { x = 189.044, y = 251.501, z = -376.836 }, rot = { x = 346.086, y = 295.092, z = 349.099 }, level = 26, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
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
		{ config_id = 173004, gadget_id = 70217012, pos = { x = 119.486, y = 197.582, z = -299.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
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
		gadgets = { 173001, 173002, 173003, 173005, 173006 },
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