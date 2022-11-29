-- 基础信息
local base_info = {
	group_id = 133301536
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 536003
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
	[536001] = { config_id = 536001, gadget_id = 70330229, pos = { x = -686.124, y = 215.585, z = 3615.964 }, rot = { x = 0.000, y = 330.119, z = 0.000 }, level = 33, persistent = true, mark_flag = 3, area_id = 22 },
	[536002] = { config_id = 536002, gadget_id = 70330251, pos = { x = -693.577, y = 225.924, z = 3643.631 }, rot = { x = 0.000, y = 330.119, z = 0.000 }, level = 33, mark_flag = 3, area_id = 22 },
	[536003] = { config_id = 536003, gadget_id = 70220103, pos = { x = -693.577, y = 225.924, z = 3643.631 }, rot = { x = 0.000, y = 330.119, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[536004] = { config_id = 536004, gadget_id = 70220103, pos = { x = -686.205, y = 234.056, z = 3653.394 }, rot = { x = 0.000, y = 330.119, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[536006] = { config_id = 536006, gadget_id = 70310198, pos = { x = -674.655, y = 212.828, z = 3617.446 }, rot = { x = 342.363, y = 246.766, z = 9.229 }, level = 33, area_id = 22 },
	[536007] = { config_id = 536007, gadget_id = 70330251, pos = { x = -686.205, y = 234.056, z = 3653.394 }, rot = { x = 0.000, y = 330.119, z = 0.000 }, level = 33, mark_flag = 3, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1536005, name = "GADGET_STATE_CHANGE_536005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_536005", action = "action_EVENT_GADGET_STATE_CHANGE_536005" }
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
		gadgets = { 536001, 536002, 536006, 536007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_536005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 536003, 536004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_536005(context, evt)
	if 536001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_536005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301536, 2)
	
	return 0
end

require "V3_0/HookLook"