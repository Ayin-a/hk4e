-- 基础信息
local base_info = {
	group_id = 133315119
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 119003
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
	[119001] = { config_id = 119001, gadget_id = 70330229, pos = { x = 312.256, y = 242.008, z = 2345.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[119002] = { config_id = 119002, gadget_id = 70330251, pos = { x = 335.799, y = 247.049, z = 2319.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	[119003] = { config_id = 119003, gadget_id = 70220103, pos = { x = 335.799, y = 247.049, z = 2319.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[119004] = { config_id = 119004, gadget_id = 70220103, pos = { x = 346.754, y = 254.249, z = 2314.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[119006] = { config_id = 119006, gadget_id = 70330197, pos = { x = 335.874, y = 230.548, z = 2318.992 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1119005, name = "GADGET_STATE_CHANGE_119005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_119005", action = "action_EVENT_GADGET_STATE_CHANGE_119005" }
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
		gadgets = { 119001, 119002, 119006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_119005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 119003, 119004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_119005(context, evt)
	if 119001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_119005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315119, 2)
	
	return 0
end

require "V3_0/HookLook"