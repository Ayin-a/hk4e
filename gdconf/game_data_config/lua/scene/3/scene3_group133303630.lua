-- 基础信息
local base_info = {
	group_id = 133303630
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 630002
}

-- DEFS_MISCS
local RequireSuite = {1}

local HookLookPlay = {
    HookPoint = defs.gadget_LookHookCid,
    Duration = 3,
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
		{ config_id = 630001, gadget_id = 70330229, pos = { x = -1719.631, y = 226.173, z = 3396.206 }, rot = { x = 0.000, y = 24.535, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
		{ config_id = 630002, gadget_id = 70330251, pos = { x = -1689.031, y = 239.127, z = 3408.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 }
	},
	triggers = {
		{ config_id = 1630005, name = "GADGET_STATE_CHANGE_630005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_630005", action = "action_EVENT_GADGET_STATE_CHANGE_630005" }
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
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V3_0/HookLook"