-- 基础信息
local base_info = {
	group_id = 133213476
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
	{ config_id = 476001, gadget_id = 70211101, pos = { x = -3253.687, y = 224.068, z = -3473.813 }, rot = { x = 0.000, y = 103.396, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 476004, gadget_id = 70210101, pos = { x = -3277.330, y = 231.007, z = -3443.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 476005, gadget_id = 70210101, pos = { x = -3294.406, y = 233.059, z = -3426.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 476006, gadget_id = 70210101, pos = { x = -3284.842, y = 227.250, z = -3489.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 476007, gadget_id = 70210101, pos = { x = -3301.792, y = 232.903, z = -3445.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 476008, gadget_id = 70210101, pos = { x = -3234.078, y = 222.031, z = -3507.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石稻妻", isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 476009, gadget_id = 70210101, pos = { x = -3233.149, y = 222.399, z = -3503.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 476010, gadget_id = 70210101, pos = { x = -3271.558, y = 224.402, z = -3487.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true, area_id = 12 }
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
		gadgets = { 476001, 476004, 476005, 476006, 476007, 476008, 476009, 476010 },
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