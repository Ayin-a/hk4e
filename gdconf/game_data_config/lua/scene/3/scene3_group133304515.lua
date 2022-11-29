-- 基础信息
local base_info = {
	group_id = 133304515
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 515003
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
	[515001] = { config_id = 515001, gadget_id = 70330229, pos = { x = -1220.442, y = 185.008, z = 2268.024 }, rot = { x = 12.654, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 21 },
	[515002] = { config_id = 515002, gadget_id = 70330251, pos = { x = -1239.809, y = 189.588, z = 2261.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 21 },
	[515003] = { config_id = 515003, gadget_id = 70220103, pos = { x = -1239.809, y = 189.588, z = 2261.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[515004] = { config_id = 515004, gadget_id = 70220103, pos = { x = -1266.358, y = 189.588, z = 2253.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[515006] = { config_id = 515006, gadget_id = 70220103, pos = { x = -1296.219, y = 195.707, z = 2243.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[515007] = { config_id = 515007, gadget_id = 70220103, pos = { x = -1320.064, y = 203.663, z = 2219.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1515005, name = "GADGET_STATE_CHANGE_515005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_515005", action = "action_EVENT_GADGET_STATE_CHANGE_515005" }
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
		gadgets = { 515001, 515002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_515005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 515003, 515004, 515006, 515007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_515005(context, evt)
	if 515001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_515005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304515, 2)
	
	return 0
end

require "V3_0/HookLook"