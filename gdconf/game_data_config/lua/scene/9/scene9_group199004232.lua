-- 基础信息
local base_info = {
	group_id = 199004232
}

-- DEFS_MISCS
--仅测试用
local defs = {
	--填leveltagID，每次交互会顺次循环切换
    tag_list = {1,2},
    
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
	{ config_id = 232002, gadget_id = 71700413, pos = { x = -224.870, y = 121.794, z = -509.960 }, rot = { x = 0.000, y = 45.643, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 232003, gadget_id = 71700414, pos = { x = -224.870, y = 121.794, z = -509.960 }, rot = { x = 0.000, y = 45.643, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 232004, gadget_id = 71700415, pos = { x = -224.870, y = 121.794, z = -509.960 }, rot = { x = 0.000, y = 45.643, z = 0.000 }, level = 20, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "temp", value = 0, no_refresh = true },
	{ config_id = 2, name = "refresh", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1232014, name = "GADGET_CREATE_232014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_232014", action = "" },
		{ config_id = 1232015, name = "GADGET_CREATE_232015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_232015", action = "action_EVENT_GADGET_CREATE_232015" }
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
		gadgets = { 232002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 232003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 232004 },
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