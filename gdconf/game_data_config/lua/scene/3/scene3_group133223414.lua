-- 基础信息
local base_info = {
	group_id = 133223414
}

-- DEFS_MISCS
defs = {
	group_id = 133223414,	--当前Group的ID
	isRandom = false,--定义这个组是否会随机取
	child_group = {[133223220] = 1}, --groupid和需要切到的SuiteID，一一对应
	notifyQuest = false, --修改Group里一个变量
	hasChild = true, --表示是否有子Group，true表示有
	selfSuiteId = 2, --需要切的自己的suite
	hasMultiStatues = false, --是否有多个雷鸟雕像
	statuesMap = 
	{
		[1001] = 1, --雷鸟雕像和需要切出来的Suite的对应表
	},
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
	{ config_id = 414001, gadget_id = 70290160, pos = { x = -6008.989, y = 183.130, z = -2544.598 }, rot = { x = 0.000, y = 191.256, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "Seed", value = 0, no_refresh = true },
	{ config_id = 2, name = "Notified", value = 0, no_refresh = true }
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
		gadgets = { 414001 },
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

require "V2_2/TsurumiBirdFather"