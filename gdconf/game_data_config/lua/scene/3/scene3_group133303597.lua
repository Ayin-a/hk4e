-- 基础信息
local base_info = {
	group_id = 133303597
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 597003
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
	[597001] = { config_id = 597001, gadget_id = 70330229, pos = { x = -1429.898, y = 345.168, z = 3652.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[597002] = { config_id = 597002, gadget_id = 70330251, pos = { x = -1443.222, y = 343.629, z = 3656.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[597003] = { config_id = 597003, gadget_id = 70220103, pos = { x = -1443.222, y = 343.629, z = 3656.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[597004] = { config_id = 597004, gadget_id = 70220103, pos = { x = -1459.016, y = 333.800, z = 3665.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[597006] = { config_id = 597006, gadget_id = 70220103, pos = { x = -1483.987, y = 317.250, z = 3681.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[597007] = { config_id = 597007, gadget_id = 70220103, pos = { x = -1509.726, y = 297.586, z = 3696.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[597008] = { config_id = 597008, gadget_id = 70220103, pos = { x = -1533.424, y = 281.220, z = 3711.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1597005, name = "GADGET_STATE_CHANGE_597005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_597005", action = "action_EVENT_GADGET_STATE_CHANGE_597005" }
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
		gadgets = { 597001, 597002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_597005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 597003, 597004, 597006, 597007, 597008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_597005(context, evt)
	if 597001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_597005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303597, 2)
	
	return 0
end

require "V3_0/HookLook"