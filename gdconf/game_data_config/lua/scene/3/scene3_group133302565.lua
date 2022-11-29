-- 基础信息
local base_info = {
	group_id = 133302565
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 565003
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
	[565001] = { config_id = 565001, gadget_id = 70330229, pos = { x = -741.238, y = 143.198, z = 2549.787 }, rot = { x = 14.275, y = 2.148, z = 17.032 }, level = 27, persistent = true, mark_flag = 3, area_id = 24 },
	[565002] = { config_id = 565002, gadget_id = 70330251, pos = { x = -744.605, y = 152.283, z = 2540.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 24 },
	[565003] = { config_id = 565003, gadget_id = 70220103, pos = { x = -744.605, y = 152.283, z = 2540.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[565004] = { config_id = 565004, gadget_id = 70220103, pos = { x = -764.948, y = 159.178, z = 2492.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[565006] = { config_id = 565006, gadget_id = 70220103, pos = { x = -784.043, y = 163.717, z = 2469.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[565007] = { config_id = 565007, gadget_id = 70220103, pos = { x = -753.843, y = 156.934, z = 2516.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[565008] = { config_id = 565008, gadget_id = 70220103, pos = { x = -791.714, y = 167.489, z = 2443.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1565005, name = "GADGET_STATE_CHANGE_565005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_565005", action = "action_EVENT_GADGET_STATE_CHANGE_565005" }
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
		gadgets = { 565001, 565002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_565005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 565003, 565004, 565006, 565007, 565008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_565005(context, evt)
	if 565001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_565005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302565, 2)
	
	return 0
end

require "V3_0/HookLook"