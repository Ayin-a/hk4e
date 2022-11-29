-- 基础信息
local base_info = {
	group_id = 133315108
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 108003
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
	[108001] = { config_id = 108001, gadget_id = 70330229, pos = { x = 189.816, y = 231.348, z = 2245.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 20 },
	[108002] = { config_id = 108002, gadget_id = 70330251, pos = { x = 227.239, y = 242.781, z = 2239.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 20 },
	[108003] = { config_id = 108003, gadget_id = 70220103, pos = { x = 227.239, y = 242.781, z = 2239.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 20 },
	[108004] = { config_id = 108004, gadget_id = 70220103, pos = { x = 267.401, y = 247.299, z = 2238.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 20 },
	[108006] = { config_id = 108006, gadget_id = 70220103, pos = { x = 305.226, y = 244.390, z = 2232.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1108005, name = "GADGET_STATE_CHANGE_108005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_108005", action = "action_EVENT_GADGET_STATE_CHANGE_108005" }
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
		gadgets = { 108001, 108002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_108005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 108003, 108004, 108006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_108005(context, evt)
	if 108001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_108005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315108, 2)
	
	return 0
end

require "V3_0/HookLook"