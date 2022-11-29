-- 基础信息
local base_info = {
	group_id = 133303095
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 95003
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
	[95001] = { config_id = 95001, gadget_id = 70330229, pos = { x = -1459.374, y = 276.839, z = 3463.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[95002] = { config_id = 95002, gadget_id = 70330251, pos = { x = -1486.405, y = 283.589, z = 3473.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[95003] = { config_id = 95003, gadget_id = 70220103, pos = { x = -1486.405, y = 283.589, z = 3473.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[95004] = { config_id = 95004, gadget_id = 70220103, pos = { x = -1511.847, y = 286.234, z = 3487.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[95006] = { config_id = 95006, gadget_id = 70220103, pos = { x = -1533.538, y = 286.335, z = 3502.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[95007] = { config_id = 95007, gadget_id = 70220103, pos = { x = -1553.497, y = 285.793, z = 3514.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1095005, name = "GADGET_STATE_CHANGE_95005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95005", action = "action_EVENT_GADGET_STATE_CHANGE_95005" }
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
		gadgets = { 95001, 95002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_95005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 95003, 95004, 95006, 95007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_95005(context, evt)
	if 95001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303095, 2)
	
	return 0
end

require "V3_0/HookLook"