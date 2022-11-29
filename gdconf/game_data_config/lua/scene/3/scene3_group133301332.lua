-- 基础信息
local base_info = {
	group_id = 133301332
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 332003
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
	[332001] = { config_id = 332001, gadget_id = 70330229, pos = { x = -469.579, y = 164.851, z = 3220.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, mark_flag = 3, area_id = 22 },
	[332002] = { config_id = 332002, gadget_id = 70330251, pos = { x = -469.689, y = 175.071, z = 3231.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, mark_flag = 3, area_id = 22 },
	[332003] = { config_id = 332003, gadget_id = 70220103, pos = { x = -469.689, y = 175.071, z = 3231.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[332004] = { config_id = 332004, gadget_id = 70220103, pos = { x = -469.982, y = 186.342, z = 3241.238 }, rot = { x = 18.306, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[332006] = { config_id = 332006, gadget_id = 70330251, pos = { x = -469.982, y = 186.342, z = 3241.238 }, rot = { x = 18.306, y = 0.000, z = 0.000 }, level = 33, mark_flag = 3, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1332005, name = "GADGET_STATE_CHANGE_332005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_332005", action = "action_EVENT_GADGET_STATE_CHANGE_332005" }
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
		gadgets = { 332001, 332002, 332006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_332005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 332003, 332004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_332005(context, evt)
	if 332001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_332005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301332, 2)
	
	return 0
end

require "V3_0/HookLook"