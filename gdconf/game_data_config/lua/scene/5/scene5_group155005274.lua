-- 基础信息
local base_info = {
	group_id = 155005274
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
	-- 阿多尼斯废弃密室的宝箱
	{ config_id = 274001, gadget_id = 70211121, pos = { x = 381.749, y = 122.323, z = 858.158 }, rot = { x = 4.143, y = 357.416, z = 2.575 }, level = 16, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 274003, gadget_id = 70217012, pos = { x = 309.778, y = 121.223, z = 888.846 }, rot = { x = 0.000, y = 51.230, z = 0.000 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 274004, gadget_id = 70217012, pos = { x = 349.085, y = 120.358, z = 871.594 }, rot = { x = 356.789, y = 51.093, z = 0.714 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
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
		{ config_id = 274002, gadget_id = 70217012, pos = { x = 303.991, y = 121.258, z = 890.271 }, rot = { x = 0.000, y = 342.528, z = 0.000 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
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
		gadgets = { 274001, 274003, 274004 },
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