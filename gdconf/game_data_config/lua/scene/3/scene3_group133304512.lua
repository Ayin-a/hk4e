-- 基础信息
local base_info = {
	group_id = 133304512
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 512003
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
	[512001] = { config_id = 512001, gadget_id = 70330229, pos = { x = -1462.836, y = 197.251, z = 2300.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 21 },
	[512002] = { config_id = 512002, gadget_id = 70330251, pos = { x = -1472.930, y = 208.905, z = 2294.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 21 },
	[512003] = { config_id = 512003, gadget_id = 70220103, pos = { x = -1472.930, y = 208.905, z = 2294.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[512004] = { config_id = 512004, gadget_id = 70220103, pos = { x = -1485.623, y = 228.188, z = 2286.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[512006] = { config_id = 512006, gadget_id = 70220103, pos = { x = -1496.235, y = 256.267, z = 2274.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1512005, name = "GADGET_STATE_CHANGE_512005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_512005", action = "action_EVENT_GADGET_STATE_CHANGE_512005" }
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
		gadgets = { 512001, 512002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_512005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 512003, 512004, 512006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_512005(context, evt)
	if 512001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_512005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304512, 2)
	
	return 0
end

require "V3_0/HookLook"