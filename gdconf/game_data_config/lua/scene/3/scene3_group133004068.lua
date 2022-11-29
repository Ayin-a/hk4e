-- 基础信息
local base_info = {
	group_id = 133004068
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
	-- 道具141004
	{ config_id = 68001, gadget_id = 70217013, pos = { x = 2197.961, y = 213.613, z = -926.376 }, rot = { x = 359.841, y = -0.005, z = 0.094 }, level = 1, chest_drop_id = 21920003, drop_count = 1, isOneoff = true, persistent = true, area_id = 1 },
	-- 道具141011
	{ config_id = 68002, gadget_id = 70217013, pos = { x = 2202.906, y = 219.805, z = -890.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21920004, drop_count = 1, isOneoff = true, persistent = true, area_id = 1 },
	-- 道具141014
	{ config_id = 68003, gadget_id = 70217013, pos = { x = 2386.879, y = 262.068, z = -594.754 }, rot = { x = 0.000, y = 0.009, z = 0.000 }, level = 1, chest_drop_id = 21920005, drop_count = 1, isOneoff = true, persistent = true, area_id = 1 },
	-- 道具141015
	{ config_id = 68004, gadget_id = 70217013, pos = { x = 2252.248, y = 264.282, z = -773.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21920006, drop_count = 1, isOneoff = true, persistent = true, area_id = 1 },
	-- 道具141016
	{ config_id = 68005, gadget_id = 70217013, pos = { x = 2312.242, y = 216.063, z = -913.785 }, rot = { x = 0.000, y = 76.864, z = 0.000 }, level = 1, chest_drop_id = 21920007, drop_count = 1, isOneoff = true, persistent = true, area_id = 1 }
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
		gadgets = { 68001, 68002, 68003, 68004, 68005 },
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