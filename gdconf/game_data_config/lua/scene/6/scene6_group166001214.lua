-- 基础信息
local base_info = {
	group_id = 166001214
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
	{ config_id = 214001, npc_id = 2214, pos = { x = 346.440, y = 475.954, z = 512.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 },
	{ config_id = 214002, npc_id = 2215, pos = { x = 346.499, y = 475.866, z = 512.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 },
	{ config_id = 214003, npc_id = 2216, pos = { x = 346.480, y = 475.962, z = 512.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 },
	{ config_id = 214004, npc_id = 2217, pos = { x = 346.367, y = 475.975, z = 512.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 },
	{ config_id = 214005, npc_id = 2218, pos = { x = 346.336, y = 476.051, z = 512.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 },
	{ config_id = 214006, npc_id = 2219, pos = { x = 346.444, y = 476.055, z = 512.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 },
	{ config_id = 214007, npc_id = 2220, pos = { x = 346.375, y = 476.052, z = 512.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 },
	{ config_id = 214008, npc_id = 2221, pos = { x = 346.484, y = 476.042, z = 512.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 },
	{ config_id = 214009, npc_id = 2222, pos = { x = 346.348, y = 475.974, z = 512.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 },
	{ config_id = 214010, npc_id = 2223, pos = { x = 346.431, y = 475.995, z = 512.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 },
	{ config_id = 214011, npc_id = 2224, pos = { x = 346.371, y = 476.023, z = 512.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 },
	{ config_id = 214012, npc_id = 2225, pos = { x = 346.422, y = 476.054, z = 512.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 }
}

-- 装置
gadgets = {
	{ config_id = 214013, gadget_id = 70360089, pos = { x = 346.384, y = 476.053, z = 512.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 214013 },
		regions = { },
		triggers = { },
		npcs = { 214001 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 214013 },
		regions = { },
		triggers = { },
		npcs = { 214002 },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 214013 },
		regions = { },
		triggers = { },
		npcs = { 214003 },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 214013 },
		regions = { },
		triggers = { },
		npcs = { 214004 },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 214013 },
		regions = { },
		triggers = { },
		npcs = { 214005 },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 214013 },
		regions = { },
		triggers = { },
		npcs = { 214006 },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 214013 },
		regions = { },
		triggers = { },
		npcs = { 214007 },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 214013 },
		regions = { },
		triggers = { },
		npcs = { 214008 },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 214013 },
		regions = { },
		triggers = { },
		npcs = { 214009 },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 214013 },
		regions = { },
		triggers = { },
		npcs = { 214010 },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 214013 },
		regions = { },
		triggers = { },
		npcs = { 214011 },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 214013 },
		regions = { },
		triggers = { },
		npcs = { 214012 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_6/BW_RandomLoadSuite"