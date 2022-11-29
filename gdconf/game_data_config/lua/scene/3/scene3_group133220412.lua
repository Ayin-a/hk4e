-- 基础信息
local base_info = {
	group_id = 133220412
}

-- Trigger变量
local defs = {
	FatherQuest = 72181,
	group_id = 133220412,
	temari_gadget_id = 412005,
	chest_1 = 412001,
	chest_2 = 412002,
	chest_3 = 412003,
	temari_1 = 412007,
	temari_2 = 412008,
	temari_3 = 412009,
	temari_online = 412006
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
	{ config_id = 412010, npc_id = 20377, pos = { x = -2412.055, y = 214.260, z = -4133.787 }, rot = { x = 0.000, y = 155.946, z = 0.000 }, area_id = 11 }
}

-- 装置
gadgets = {
	-- 单机挑战关卡3宝箱
	{ config_id = 412003, gadget_id = 70211121, pos = { x = -2412.127, y = 214.827, z = -4136.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	-- 奥博伦球机关操作台
	{ config_id = 412005, gadget_id = 70290113, pos = { x = -2410.852, y = 215.134, z = -4133.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, is_guest_can_operate = true, area_id = 11 },
	-- 真正用来藏的球
	{ config_id = 412006, gadget_id = 70290072, pos = { x = -2413.676, y = 214.407, z = -4134.749 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 11 },
	{ config_id = 412007, gadget_id = 70290072, pos = { x = -2415.759, y = 200.689, z = -4120.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 11 },
	{ config_id = 412008, gadget_id = 70290072, pos = { x = -2391.670, y = 227.426, z = -4183.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 11 },
	{ config_id = 412009, gadget_id = 70290072, pos = { x = -2478.252, y = 206.504, z = -4145.231 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "ChallengeState", value = 0, no_refresh = true },
	{ config_id = 2, name = "ChallengeLevel", value = 1, no_refresh = true },
	{ config_id = 3, name = "pos_x", value = 0, no_refresh = true },
	{ config_id = 4, name = "pos_y", value = 0, no_refresh = true },
	{ config_id = 5, name = "pos_z", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 412001, gadget_id = 70211101, pos = { x = -2415.269, y = 214.916, z = -4136.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
		{ config_id = 412002, gadget_id = 70211111, pos = { x = -2413.760, y = 214.865, z = -4136.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
		{ config_id = 412011, gadget_id = 70330093, pos = { x = -2391.333, y = 223.749, z = -4144.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 412012, gadget_id = 70330093, pos = { x = -2396.607, y = 219.709, z = -4142.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 412013, gadget_id = 70330093, pos = { x = -2396.607, y = 219.709, z = -4142.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 412014, gadget_id = 70330093, pos = { x = -2391.333, y = 223.749, z = -4144.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
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
	end_suite = 2,
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
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 412010 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 单机挑战关卡1,
		monsters = { },
		gadgets = { 412007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 单机挑战关卡2,
		monsters = { },
		gadgets = { 412008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 单机挑战关卡3,
		monsters = { },
		gadgets = { 412009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 联机挑战关卡,
		monsters = { },
		gadgets = { },
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

require "V2_0/TemariChallenge"