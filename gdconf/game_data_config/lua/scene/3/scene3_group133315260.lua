-- 基础信息
local base_info = {
	group_id = 133315260
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 260003
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
	[260001] = { config_id = 260001, gadget_id = 70330229, pos = { x = 365.501, y = 294.119, z = 2159.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, mark_flag = 3, area_id = 20 },
	[260002] = { config_id = 260002, gadget_id = 70330251, pos = { x = 373.082, y = 301.133, z = 2174.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	[260003] = { config_id = 260003, gadget_id = 70220103, pos = { x = 390.131, y = 300.409, z = 2145.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[260004] = { config_id = 260004, gadget_id = 70220103, pos = { x = 407.325, y = 305.916, z = 2122.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[260006] = { config_id = 260006, gadget_id = 70220103, pos = { x = 422.325, y = 314.421, z = 2096.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[260007] = { config_id = 260007, gadget_id = 70330197, pos = { x = 422.652, y = 310.622, z = 2096.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	[260008] = { config_id = 260008, gadget_id = 70330197, pos = { x = 402.631, y = 324.615, z = 2072.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1260005, name = "GADGET_STATE_CHANGE_260005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_260005", action = "action_EVENT_GADGET_STATE_CHANGE_260005" }
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
		gadgets = { 260001, 260002, 260007, 260008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_260005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 260003, 260004, 260006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_260005(context, evt)
	if 260001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_260005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315260, 2)
	
	return 0
end

require "V3_0/HookLook"