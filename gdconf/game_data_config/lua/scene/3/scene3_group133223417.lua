-- 基础信息
local base_info = {
	group_id = 133223417
}

-- DEFS_MISCS
defs = {
        group_id = 133223417,        --当前Group的ID
        isRandom = false,--定义这个组是否会随机取
        child_group = {[0] = 0}, --groupid和需要切到的SuiteID，一一对应
        notifyQuest = false, --修改Group里一个变量
        hasChild = false, --表示是否切当前Group的suite，true表示切自己的
        selfSuiteId = 2, --需要切的自己的suite
        hasMultiStatues = false, --是否有多个雷鸟雕像
        statuesMap = 
        {
                [10001] = 2, --雷鸟雕像和需要切出来的Suite的对应表
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
	{ config_id = 417001, gadget_id = 70290160, pos = { x = -5892.213, y = 165.642, z = -2678.961 }, rot = { x = 1.408, y = 35.523, z = 1.005 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 417002, gadget_id = 70330137, pos = { x = -5890.723, y = 166.086, z = -2675.556 }, rot = { x = 10.608, y = 2.056, z = 11.032 }, level = 33, interact_id = 35, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "Notified", value = 0, no_refresh = true },
	{ config_id = 2, name = "Seed", value = 0, no_refresh = true }
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
		gadgets = { 417001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 417002 },
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