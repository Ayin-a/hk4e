-- 基础信息
local base_info = {
	group_id = 133315249
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 249003
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
	[249001] = { config_id = 249001, gadget_id = 70330229, pos = { x = 390.402, y = 212.412, z = 2228.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[249002] = { config_id = 249002, gadget_id = 70330251, pos = { x = 406.321, y = 234.609, z = 2238.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	[249003] = { config_id = 249003, gadget_id = 70220103, pos = { x = 406.321, y = 234.898, z = 2238.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[249004] = { config_id = 249004, gadget_id = 70220103, pos = { x = 428.369, y = 225.265, z = 2260.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[249006] = { config_id = 249006, gadget_id = 70330197, pos = { x = 444.585, y = 220.423, z = 2264.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[249007] = { config_id = 249007, gadget_id = 70217020, pos = { x = 445.939, y = 231.770, z = 2242.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 },
	[249008] = { config_id = 249008, gadget_id = 70220103, pos = { x = 416.369, y = 249.837, z = 2240.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1249005, name = "GADGET_STATE_CHANGE_249005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_249005", action = "action_EVENT_GADGET_STATE_CHANGE_249005" }
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
		gadgets = { 249001, 249002, 249006, 249007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_249005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 249003, 249004, 249008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_249005(context, evt)
	if 249001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_249005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315249, 2)
	
	return 0
end

require "V3_0/HookLook"