-- 基础信息
local base_info = {
	group_id = 133304520
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 520003
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
	[520001] = { config_id = 520001, gadget_id = 70330229, pos = { x = -1284.238, y = 330.991, z = 2033.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 21 },
	[520002] = { config_id = 520002, gadget_id = 70330251, pos = { x = -1294.678, y = 342.276, z = 2018.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 21 },
	[520003] = { config_id = 520003, gadget_id = 70220103, pos = { x = -1294.678, y = 342.276, z = 2018.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[520004] = { config_id = 520004, gadget_id = 70220103, pos = { x = -1307.441, y = 367.428, z = 1998.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[520006] = { config_id = 520006, gadget_id = 70220103, pos = { x = -1319.771, y = 388.843, z = 1979.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[520007] = { config_id = 520007, gadget_id = 70220103, pos = { x = -1333.575, y = 403.789, z = 1971.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[520008] = { config_id = 520008, gadget_id = 70220103, pos = { x = -1350.017, y = 429.654, z = 1962.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1520005, name = "GADGET_STATE_CHANGE_520005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_520005", action = "action_EVENT_GADGET_STATE_CHANGE_520005" }
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
		gadgets = { 520001, 520002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_520005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 520003, 520004, 520006, 520007, 520008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_520005(context, evt)
	if 520001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_520005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304520, 2)
	
	return 0
end

require "V3_0/HookLook"