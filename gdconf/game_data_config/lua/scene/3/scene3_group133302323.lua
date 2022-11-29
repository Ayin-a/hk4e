-- 基础信息
local base_info = {
	group_id = 133302323
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
	{ config_id = 323001, gadget_id = 70210101, pos = { x = -839.746, y = 202.582, z = 2684.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 24 },
	{ config_id = 323002, gadget_id = 70210101, pos = { x = -802.625, y = 211.402, z = 2679.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 24 },
	{ config_id = 323003, gadget_id = 70210101, pos = { x = -859.959, y = 209.631, z = 2594.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 24 },
	{ config_id = 323004, gadget_id = 70210101, pos = { x = -860.849, y = 210.009, z = 2596.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 24 },
	{ config_id = 323005, gadget_id = 70210101, pos = { x = -860.658, y = 213.194, z = 2596.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 24 },
	{ config_id = 323006, gadget_id = 70210101, pos = { x = -699.624, y = 206.603, z = 2778.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 24 },
	{ config_id = 323007, gadget_id = 70210101, pos = { x = -901.813, y = 202.010, z = 2746.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 24 },
	{ config_id = 323008, gadget_id = 70210101, pos = { x = -662.564, y = 200.600, z = 2788.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 24 },
	{ config_id = 323009, gadget_id = 70210101, pos = { x = -787.583, y = 208.962, z = 2707.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 24 },
	{ config_id = 323010, gadget_id = 70210101, pos = { x = -738.117, y = 203.721, z = 2763.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 24 },
	{ config_id = 323011, gadget_id = 70210101, pos = { x = -974.406, y = 222.104, z = 2875.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 24 },
	{ config_id = 323012, gadget_id = 70210101, pos = { x = -964.212, y = 219.584, z = 2877.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 24 },
	{ config_id = 323013, gadget_id = 70210101, pos = { x = -916.709, y = 239.957, z = 2912.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 24 },
	{ config_id = 323014, gadget_id = 70210101, pos = { x = -650.394, y = 201.341, z = 2835.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 24 }
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
		gadgets = { 323001, 323002, 323003, 323004, 323005, 323006, 323007, 323008, 323009, 323010, 323011, 323012, 323013, 323014 },
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