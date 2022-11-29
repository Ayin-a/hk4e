-- 基础信息
local base_info = {
	group_id = 133303447
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 447003
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
	[447001] = { config_id = 447001, gadget_id = 70330229, pos = { x = -1867.409, y = 11.442, z = 3334.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	[447002] = { config_id = 447002, gadget_id = 70330251, pos = { x = -1874.928, y = 12.972, z = 3322.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	[447003] = { config_id = 447003, gadget_id = 70220103, pos = { x = -1874.928, y = 12.972, z = 3322.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[447004] = { config_id = 447004, gadget_id = 70220103, pos = { x = -1879.965, y = 13.566, z = 3298.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[447006] = { config_id = 447006, gadget_id = 70220103, pos = { x = -1890.063, y = 11.709, z = 3280.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[447007] = { config_id = 447007, gadget_id = 70220103, pos = { x = -1879.150, y = 11.695, z = 3249.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[447009] = { config_id = 447009, gadget_id = 70220103, pos = { x = -1887.511, y = 12.677, z = 3259.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1447005, name = "GADGET_STATE_CHANGE_447005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_447005", action = "action_EVENT_GADGET_STATE_CHANGE_447005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 447008, gadget_id = 70220103, pos = { x = -1852.652, y = 4.240, z = 3235.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
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
		gadgets = { 447001, 447002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_447005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 447003, 447004, 447006, 447007, 447009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_447005(context, evt)
	if 447001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_447005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303447, 2)
	
	return 0
end

require "V3_0/HookLook"