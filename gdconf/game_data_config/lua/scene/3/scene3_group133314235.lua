-- 基础信息
local base_info = {
	group_id = 133314235
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 235003
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
	[235001] = { config_id = 235001, gadget_id = 70330229, pos = { x = -212.661, y = -38.843, z = 4738.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 32 },
	[235002] = { config_id = 235002, gadget_id = 70330251, pos = { x = -242.600, y = -21.664, z = 4694.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 32 },
	[235003] = { config_id = 235003, gadget_id = 70220103, pos = { x = -242.600, y = -21.664, z = 4694.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 32 },
	[235004] = { config_id = 235004, gadget_id = 70220103, pos = { x = -221.500, y = -0.509, z = 4672.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 32 },
	[235006] = { config_id = 235006, gadget_id = 70220103, pos = { x = -254.000, y = 2.661, z = 4653.000 }, rot = { x = 0.000, y = 47.395, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[235007] = { config_id = 235007, gadget_id = 70220103, pos = { x = -282.185, y = 2.666, z = 4643.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[235008] = { config_id = 235008, gadget_id = 70220103, pos = { x = -234.475, y = 9.971, z = 4633.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[235009] = { config_id = 235009, gadget_id = 70220103, pos = { x = -214.544, y = 26.947, z = 4694.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1235005, name = "GADGET_STATE_CHANGE_235005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_235005", action = "action_EVENT_GADGET_STATE_CHANGE_235005" }
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
		gadgets = { 235001, 235002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_235005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 235003, 235004, 235006, 235007, 235008, 235009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_235005(context, evt)
	if 235001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_235005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314235, 2)
	
	return 0
end

require "V3_0/HookLook"