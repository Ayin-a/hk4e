-- 基础信息
local base_info = {
	group_id = 133303467
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 467003
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
	[467001] = { config_id = 467001, gadget_id = 70330229, pos = { x = -1577.927, y = 128.789, z = 3360.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[467002] = { config_id = 467002, gadget_id = 70330251, pos = { x = -1576.982, y = 145.350, z = 3345.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[467003] = { config_id = 467003, gadget_id = 70220103, pos = { x = -1576.982, y = 145.350, z = 3345.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[467004] = { config_id = 467004, gadget_id = 70220103, pos = { x = -1572.058, y = 163.991, z = 3326.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1467005, name = "GADGET_STATE_CHANGE_467005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_467005", action = "action_EVENT_GADGET_STATE_CHANGE_467005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 467006, gadget_id = 70220103, pos = { x = -1572.058, y = 163.991, z = 3326.641 }, rot = { x = 312.058, y = 343.991, z = 266.641 }, level = 30, persistent = true, area_id = 23 }
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
		gadgets = { 467001, 467002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_467005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 467003, 467004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_467005(context, evt)
	if 467001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_467005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303467, 2)
	
	return 0
end

require "V3_0/HookLook"