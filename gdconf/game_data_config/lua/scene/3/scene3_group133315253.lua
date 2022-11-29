-- 基础信息
local base_info = {
	group_id = 133315253
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 253003
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
	[253001] = { config_id = 253001, gadget_id = 70330229, pos = { x = 106.875, y = 291.037, z = 2219.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[253002] = { config_id = 253002, gadget_id = 70330251, pos = { x = 128.958, y = 298.098, z = 2213.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	[253003] = { config_id = 253003, gadget_id = 70220103, pos = { x = 128.958, y = 298.098, z = 2213.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[253004] = { config_id = 253004, gadget_id = 70220103, pos = { x = 167.390, y = 307.066, z = 2204.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[253006] = { config_id = 253006, gadget_id = 70220103, pos = { x = 148.305, y = 304.056, z = 2210.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1253005, name = "GADGET_STATE_CHANGE_253005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_253005", action = "action_EVENT_GADGET_STATE_CHANGE_253005" }
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
		gadgets = { 253001, 253002, 253006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_253005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 253003, 253004 },
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

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_253005(context, evt)
	if 253001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_253005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315253, 2)
	
	return 0
end

require "V3_0/HookLook"